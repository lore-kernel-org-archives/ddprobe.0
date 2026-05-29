Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4963546F6
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780098214; cv=none; b=oXSAW4THuMtvUl49fHL/ukyxWdAVYk7Bwn2PD2XNxxX9fMpEg0OcNK4RVT5iTcsSqPZF0nzADvNdf7IlyC3amZyE+7hA+cI6IqwKR3NBayikPCGiyAelBh2HOgPMixzyRVvJ9Q5DF8DBn75RB4/zchPWOOee0ZHx7OfzMdSaEqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780098214; c=relaxed/simple;
	bh=Az/aj0ZyrCOR/V3RM762NUGtLpPj5x43PCHJShSaGXc=;
	h=To:Subject:From:Message-Id:Date; b=hyhV44Lv6C+YkVVme0/5k9Z5XH8rpJiU1fV43h+HFHlLkI1ge+quOtbCA5Adfaf6LJ596UA3UW21KJKwhpmtAmkWF9AGxVWf4gPM90dgUQJV6Fane8fn8wvqrbK7/eCCRR8dJIXPFTdpBncxIJq7VISgSdphlY+Yaf9OSqYcmFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAKmcxeg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAKmcxeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4A8C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780098213;
	bh=Az/aj0ZyrCOR/V3RM762NUGtLpPj5x43PCHJShSaGXc=;
	h=To:Subject:From:Date:From;
	b=tAKmcxegIFFmoVhbUYg3yT0NDSqt0M0PvlnxyF5VlUqcnVBAIU8GATrBRhX0jcVCG
	 RUx6rjaX7niyBZ03eTB3/sAkygj9HXRcx7CvoLB8WcTrf+0AIhsW3esZMI7fR93fca
	 ycoxEKPPanQjcl2FiNO/KW6yMxKTMNF8VFTnU4571fXOyI1yCo1kmJjDlETgRiXW0a
	 jmS5b1mJy/+XC18ixG0/m9wwbNYmcdQCoS2Q+SrqDFi3QxwqdD29UCCs6YlwPy5wEq
	 /oAUIP+yKcMRboTHbTQYo2pyCg/wMOOpX3mwN6tw5Et9DUVa+zxjvI3oi+ht5Ojy48
	 mddUpLFsw//nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE95ACD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009821368.17894.5920853890242624820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c6ce9f317b3e3ca266582dbf6214bec019d99232ea2078dec473623426ff3b
Date: Fri, 29 May 2026 23:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780098213
