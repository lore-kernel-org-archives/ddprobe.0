Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661E423BD17
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790854834; cv=none; b=nRnlc97eYr/rSH505+Su3fPlXtaFMYy8ilGPRIZDxq8DY311OutraQvNsvOjPrntz8znJGcC2XP53/PnIStVLyehlk1U5dH2L3dVfYktLQeGx4KunZiJr2eWezaJCe+6Ls5OcOfJMINmaHgNmDKu433W7tIpJJlacu9b2PfFM6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790854834; c=relaxed/simple;
	bh=KLp0c8LUI/u/8ny/OEuocM2tW3R6M0ATDBA12TMucg0=;
	h=To:Subject:From:Message-Id:Date; b=pvE+sOG0aFPY7DdzQ+0zceCnnbC7n0womLO3WSCuLafMiF1Rjv8l14aLjAah4s8P+pkocGLIwJwDN+URwad5Dxx8clweUC+nsPkF8ADNQEo1Akfl0H1GP3Le54fIOEJmQSMdWIb76gvu/Jyej6RH+NC0C5ZefotaHGn5uE2QWUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMfVpXyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMfVpXyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2186C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790854833;
	bh=KLp0c8LUI/u/8ny/OEuocM2tW3R6M0ATDBA12TMucg0=;
	h=To:Subject:From:Date:From;
	b=QMfVpXytB5ulqPjjCYSY9q7rN/NL7hv2DKFUNPOesYHNlKY8t/H5iwWdGMYk0U4Nn
	 jGL7RzET66BfzjEokQDirO0OV9j0nO68YqIBGBySJNHuWFDj5tgEyQXuIFnWzespGk
	 RrgSH3JgVpuc0j0bv0adybujjS3he+VIUmTriKR2l8+CV/liZ+jdritCEKOorV7rOo
	 a36YRyAydIjZSKEVwrq0G5qVGOhRxL6SCWnH6JKfF6JSYkJmS2aycliQgy6WjDRkRM
	 40SWY/VcBWwVGTl/t1HoZgUSLJBuUfrrU5JjPfo5ZazWJ03xEeM+5YT+I8cCSt6Enu
	 mpH83ud92nXdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDD6CA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085483370.28686.6350007956469812086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6d6ff62cab29cd7f22e0a5e89c40a8ef8eb648531da4663e70c6de3c5d612b
Date: Thu, 01 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790854833
