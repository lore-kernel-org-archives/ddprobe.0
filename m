Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448462F8E9E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784572714; cv=none; b=TqUm79Mz+Apcy/HobYC36l/uT398cFVJQmCb15Da6wJCsboX4Om/JB2s8mr6hIWczeTBvKdzCExaMrmW47u01m8maGX9S7hCjqe9LAdh5IBOwesKlhSyMgyOv2RMz9WK7/VcCz8PKjRR7XKzu7KQu/Q4u9rYBqQ/GtfCSFR/iHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784572714; c=relaxed/simple;
	bh=jcJsRZ8nz8LqRWhQqIsHaJNbvi3iAKquIM0p8blu56M=;
	h=To:Subject:From:Message-Id:Date; b=AQ+0pMdN1t8yoBJcQxHps3MddgEzKzYyV6FH2aX9CJQi6+UpUGJQzO+oqishNYwlG1+9JBjeRbqztYoz2DRqG8edjTTNbG/8aLRp9OLnhiYxMl5GcVKwiEuCybVc881QTuL2wSLuWMidAPg7NJENhPXvBvzcpAFoKUS6wFcbiDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxjsO8w8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxjsO8w8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31E3C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784572713;
	bh=jcJsRZ8nz8LqRWhQqIsHaJNbvi3iAKquIM0p8blu56M=;
	h=To:Subject:From:Date:From;
	b=AxjsO8w8NNa0zU01DFGLgjnLMd09OqvfUPLk6DJrEty6CraB7Z/Olw0EhRBtpU2//
	 oM5rGPBP61409VoiX1Ka5Rw/jZHmhMETzIQlUdz40LZCY/8bzTAJQab7crQmX70gPm
	 L/hvsOwZSa0A0FTUZKAnip/F+/QIh7f1gnL8WkBe8mfrTzWsjXLiGttAft5qp1jFTj
	 pr1frSD0KvgVLy0V2XRyp77IDYdKC8lteg65fjBsRtRI3sqHylzyZK/0yUpwaoD1l8
	 duNf0eo14hwUOWi0kRIDYmWz1Gnnr1mEjasGfMdsfQ4yqjcU4L81m48VPAmypOsWV7
	 5l3y0XLxRFD8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0399C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457271371.24650.7815331003504048871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddfb00944ca6b1be331459cef21ad93e24fd95174e140e2f67c9f93434636f56
Date: Mon, 20 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784572713
