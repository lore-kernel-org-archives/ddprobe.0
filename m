Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3931EDA2B
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763101194; cv=none; b=FTrll5ibFFjA6HPexVIRv8LI4TcX4h8Mdsb7JSf7PiXTRntYMggVE6jEVQ987pkG4chIwSOHarO8Eq9oLk6LihboVC2nmtmEyNkV2tnm1p4zURcVyk8Jw1TZtJCuEs0VRn3K4jBIrWhqRVrxsePMTDGnBxPrm7Z+L4JPRyrzl3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763101194; c=relaxed/simple;
	bh=G7vfBLSOvrNzv6mjJvm5RoHis8rwVMfqhT3jKq4k5MY=;
	h=To:Subject:From:Message-Id:Date; b=amhpwiFoElawBF9SaIuZ3YggmYDqvSDuoRydzf9NSKdekoW1XshSBF5ZD15tv+lcE7MotlztJhKEAAm41avxES6karr2GtA0la/LMS+VuO8Eycu3/f+mjPWNZX2TyfTAo589DqJcpSlmqXoHIATPAA/BfbMSu+0wX62XuKbCkWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+1KQ7iH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+1KQ7iH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19ADC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763101193;
	bh=G7vfBLSOvrNzv6mjJvm5RoHis8rwVMfqhT3jKq4k5MY=;
	h=To:Subject:From:Date:From;
	b=M+1KQ7iHlgehsfICWeGqaDmqTBQgFaYUuBE2Uj+RwZkDqLTiwDMDf2GTTMiQ1MC/n
	 jPD0giX53VC7YD7zdnIjtr+XboXx7in8Mre0onRo6P0/+zgUHcAd91GUuJDAY3DqMJ
	 X+ER0Sm8P1DSm+0XZZK1InQv7UBfD0Zt5caP8hupA3+ErRcV3QcIlSCdi0fMmWpQnM
	 N0kfSfxUWqoehfSqXh6qF2+NUAog27Tj7oROGNLWACuEIIVTTAZ/puQiYFSEba2TrF
	 TnzfviLRk0ajJzk6UeuppRZdaFYeAfpciB7zJfR4UmrnWiDIUONlnfqnZOwCnseKAE
	 KSjpeE4RG4nbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD8CDE00E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310119358.19355.2380518097298953207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efab71b0088202fb37dfc999572fc0a49c0bce70ff5b4432fb1cc1df4b672825
Date: Fri, 14 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763101193
