Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390AD18D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752321594; cv=none; b=HeZQHkm3ndFcmcBOR7+TLp1MgykrsB/J0kXMOcN9NVJYxIyrxkWBvncudKncl2FnnK9bIFq6Gne8FdoQbGGLp2SuO1DRsppRLPaxtdrGmqbfNTIE7csoTGt6nv8XgvPbS28ClV/A0u6HEnjaDe+UKdtlQ2cPRiGbryHlG9AeX90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752321594; c=relaxed/simple;
	bh=1cgmbLsSgTxfoWiTIAEUau1IBySYKR6idy7MBmPTOWA=;
	h=To:Subject:From:Message-Id:Date; b=npktzguMSlQzbXDmHfc/F8fTSGUBYu9lyppnJDHP1aJkiT0BrTOs+8GmDkjMg6SNtCFhuFGXLNxh44CjeF4O+i7cLFYiMeHpQPVpb4yXsU+doIGE655uciOGpK2fcOWzO2B+yuHs/pv8Sq0NpHWQPWAZxNnZwl7cMHDeqTWDfNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnK4vCr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnK4vCr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDEBC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752321593;
	bh=1cgmbLsSgTxfoWiTIAEUau1IBySYKR6idy7MBmPTOWA=;
	h=To:Subject:From:Date:From;
	b=AnK4vCr2q65zPjMyTkFmz3p1FuH+HfBu4dF0YxKtudh7F/g/YGsSW5ZlV23VvBsma
	 mOAsWIrnBebwfp5+gNPyrv/Ubn/XVhsYbKiAmtaHC/Dpo/+IByPEoOOarSeLWuDzQG
	 cLZ2tCioVJmt6WqQiZvq6nwhgbT3Obi41REbhjWrppQUOG6WM74l7eEplc+gOX9PgO
	 3vVEPh4bvZ0UZ1vnW3vXMV0CB513cDh0ec5Wq4DcwSqr946N8BaNEWkEKLKUI3/zA8
	 SBmanbNYQt4h55S7xh/zTuCiGfQbb6V9StIgXNkSBmCioD2kcVH3blXzhpKO4GeDtf
	 RpL3f9hl8HfsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E2C83F20
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232159357.22445.137756974522347842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64bbe6b1ce835694e48eff070b35380d2a8c8d9b9ba461510bee9b64037ffdd
Date: Sat, 12 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752321593
