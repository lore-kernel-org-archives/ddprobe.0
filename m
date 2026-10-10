Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E473B6C1D
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791621634; cv=none; b=EgGvnBvnO03ANIz2SyOn0CFH8mQvwoACcYUbRvFpQcfo6OLwZhUlw6EFZMy1/mkZH3IsGLj7HIr701o8x7A1Zo6QPHpMfcD/j13MVEL+lo0KQF9e6pHVhlxMiCJx0u9vZfcryWe8CvJQ9SvFLKiGeGwNB6ADbPW2Bkovk9XUHLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791621634; c=relaxed/simple;
	bh=MrCVQWu5imo4Peg+3nBM0Z9s0OOx9Ngisb2fOjHyvyA=;
	h=To:Subject:From:Message-Id:Date; b=ogH22MyJM+TEhL1w3HiYUlLph4Lzzd4Glvtm4dsU4gvpTymsYYyb1DF9/NOyPx0Ap3Qle112WWglbuvoCAHdkKJ3Yte1irUAnNWdNUY3gggHXNnBXo7Dq29yBB6ZNXP4uin2CKHdB5Op10UOGuPx5hHFPfgidG7z2aE/0nsisVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDJL3coC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDJL3coC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1237C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791621633;
	bh=MrCVQWu5imo4Peg+3nBM0Z9s0OOx9Ngisb2fOjHyvyA=;
	h=To:Subject:From:Date:From;
	b=pDJL3coCqGTlFlCBpEiClocwqE7ORBIg7zsnug1cPIbDaD6R1uJYr+Ka2O0Rqrmrd
	 7ImNR7yOa5cBtu+uK72I1jtHNEUjvo2aYvxsbkWW4pUaWtB8/iUivMiUbfHnMHMbqR
	 5OV+sGKVEuCupw0GwnQ29hz+42aus3g7hBPdu3hP5IFxPItUuHH8s/QpEDaZ2sod1o
	 yZ8xChHZuOLBI/cKTxxoXg69mcFaenOndSk7bEWuA31Dy2ykEI2cnMKzCap3dKhoIz
	 xQs/D3RJ4EYKDsW6EV9kIHrRnhqP9FY/mFZbIO/Uqo3SbxyD2iQwc1xARBCpy6eTW/
	 UcBL3pesJMQLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A960DCA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162163368.7054.16033821899937778543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66a2e1ef26497b82ce48d5ed165da80f0ccaef470d11211d971df37cda9e6e4
Date: Sat, 10 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791621633
