Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F48157A5A
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778469634; cv=none; b=Lly2QE69PFaJnv3MVHeM8pmEp3FFx9YSYEoN6qQg6wmksd0GMDJgJjpBelC1zBo/+zqCFxxmsgWY0Ea5aCtCPdatWpAlgZJwdO7DnOhohpdSHtzFK0rRDxROUd5iT2kOIRrOtCZlLI0CFz2IPYxouQWpp+rD1aO74gAGtt0N5pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778469634; c=relaxed/simple;
	bh=eOyVtiwV2/CxS3d10OdPvC/yvu9AFrh0sra8112sDlE=;
	h=To:Subject:From:Message-Id:Date; b=q+ZvSw0GWZ9+YAVD6tmrn+B/4/wz68pShqAJa0HSvYyuFpLzp5TKY5k2z1fpgxkNXwCcbwFGGlnP3Tiwcc7wztjk37ZNwzYNtC/MAicgh2zYS6OufrAG69pSfLRyxsLPKR57g2PHEQ897mny8Yke+fpyGWIoOoPx3R55iuf3Mwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bi4ai4Gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bi4ai4Gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9386C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778469633;
	bh=eOyVtiwV2/CxS3d10OdPvC/yvu9AFrh0sra8112sDlE=;
	h=To:Subject:From:Date:From;
	b=bi4ai4Gz2uVPM4auwZwO4vWVRWVgpBAT+I8aR1Zjp7Ufrvr1s1PuKXQT8u0y4biG8
	 eWYo2k7GKzKwUyBYcke+CI58lKoi7DQqECu/8CedVE1gVn8CmcOJgwITp5vgkVH8Ny
	 RAsIZLnH32M6SFDqZpuujgNNRJ/ZxBPyTRjECDtWx48tuEj0QST7l8VzSJvnwexMh9
	 sqlzoX5TBWF+jys89VRCRgtipbuxrjalTm/KUguu8FzBuxt76NLewnt/uCMW1uBgp6
	 D98BcFYmUbm0wuFcjc9re6or1N978VucdlTbQ+7Ol/6mAzKMoU5wQtxHhTR1qkCNC7
	 RVJoJdy93SQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1909CD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846963370.11195.13666148540984573942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed636784ff83f1528a1c190bdc8ee86fa78939d0f7e864df727f526403d674c6
Date: Mon, 11 May 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778469633
