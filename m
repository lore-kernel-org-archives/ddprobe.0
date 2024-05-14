Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD75180A9C
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 19:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715716343; cv=none; b=iUVHtbaQTV05RFjzxMetw3VH/R4zXPleraifuPVkxKiEA0pBu+2R5Ennagb/jjg76udySSXO/EwSBlM4N6nRSpm1zpLABVCaOn0Ux54TrPTQjTcrOIj75ok58fRRugT7BkfLqlH8c+F6xUSyByBkHS47/2Q5w1R1CGrChUsF/34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715716343; c=relaxed/simple;
	bh=r3ylWn16TpzIrTI7qn91IUnntJbkDURYza0qxFGlcoY=;
	h=To:Subject:From:Message-Id:Date; b=f/bsnWskik3G2dbutFDWoz5icJ2vZj3LYKS0uPnT5RtbHWKS1X+KDPk9AJsAVkW1/WLsHzi9NNBHbECt1nHrU51WB+t2Wxq4eu+Y6SR2IPDA8ck/NByiXU+HEHNpubX4AjLrsrmeFbkBgIBB0xIAO6/nVvTySfs89J+4nsHchQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/ZeyR5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/ZeyR5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0138C32786
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715716342;
	bh=r3ylWn16TpzIrTI7qn91IUnntJbkDURYza0qxFGlcoY=;
	h=To:Subject:From:Date:From;
	b=n/ZeyR5TgJ0DYi75mGQKTgHWxmXw70Jy/Zpu7WUT/QiqohTloLJHJLLZDclzrpbMT
	 a3wQvU6Sg1gQFN1qTmhl2G+lVzfBSjwLqFXoNtDZDGsveJikh0x53UMwVI0w0v3PNS
	 NXdU2JWhpAuMibwOPsO7bICFj97A5a14/5FgM8LflkGtWwhhlx7IEvUYdif5hss4Ww
	 jmLebv7oMMkT4wyd7XHYeoPePLiA36P+NI57BYHwqM1SaZ+TeY1O6Jiwu/bOAoABK1
	 i4XflObRKFXt9huuWWF/zpVNgNbMet7+rwilptcv7OLl9pCnXwMUKOtX3ChQmOxNKn
	 CnELYkLJW6Gog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8CFC25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171571634276.11412.1747688031011206234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a131815229817e0a5237267f69349f6e2b798fdbaba325f00d37d0aadda316
Date: Tue, 14 May 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715716342
