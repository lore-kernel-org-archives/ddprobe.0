Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AD61519B4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777841254; cv=none; b=hKP9cGjujCm0cS40kc4VAiednfDBbkgtovxHFCLcLWwMLxmuMAU1+pw4HaPRwba0fyrs2VcF35W5QOX/0HPWm+lnjoJ6ieROJayias5nzONTZ3rBaAC8A/H5FTfSsAKNG7hxXDW5ol/HWk0Jdd69nLDgV/n1gsenWHgrxU+rQ7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777841254; c=relaxed/simple;
	bh=VDa9Q1bBZYJX7pY37znuklD1qJAlsLFTi+7bGPxxPcw=;
	h=To:Subject:From:Message-Id:Date; b=O54oZF1LHOTXVpc3BLek9WgM7jiXSM8ItHUxa0m4mKSchQksu4d3piWDtD2gY1tD/Hra/oBjSiPIZxPjzCUUewTGR1/+QHCFGrbuEhQudGSIq3KG2nZgiMhgMmBbHNs3FfX3ZdJAmr3UjcsMJThF0AhZTy37Zf74l34wCeBPSkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWNSq4TO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWNSq4TO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA34DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777841253;
	bh=VDa9Q1bBZYJX7pY37znuklD1qJAlsLFTi+7bGPxxPcw=;
	h=To:Subject:From:Date:From;
	b=eWNSq4TOt+uuiSswrh5Tp7DPsow1uxeHL4sQVmnZUz0oDEhKwdp0xmi3NAJBToo7I
	 eSlEcnihp8c8BfxpPj1ShPd3b+XtLsCguFGah+6BE60FmWakKqFO8bkLCxxjT2Lhsn
	 wasHJ3A7X910EjwfdURpLa6uT8P09F7kVNHKzl32BR4RrFHfajq8Mr6HNPSmmb3ZPU
	 WKix1xBQ6BOPSnE1ThmBibNaTeRQN5D7RIkmRgrSeaSs+6UsdH/pCJeTu3bXvyKdRr
	 Vx2xeTHoDXipE6i6EBtr0YdLJx9al0pWdllsElACQSZ/2O2QYCtJ182HEXdTwE4e7t
	 nCFX8ROVEO94A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97EDCD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784125368.28124.14462262537348656540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971bf454a7813fe7dd2ed0bfceddc89c060cdf5906e9a2ecf2b9b1875c06585f
Date: Sun, 03 May 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777841253
