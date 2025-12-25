Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4A51CD15
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766625234; cv=none; b=mSBdgWf+vMMUeVAd9pRyoEd3m8UmQF7hp4uDiPKWLF3r9oqrTq44cXcvLmH3Otpk7DzfzzRtBzqfg75nmZ0t9wkWCo2aLDfkJIA9B3Bl8GfkxKa0YEEonz+EFRp8DBCvAl+BooxCqzmuxpm9XM5PO2n7knLF/N4TOYtpbpuactM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766625234; c=relaxed/simple;
	bh=v+LSF5VbutDJhk3tkM6zLNRac3kNIDgDsVR71o5JsuI=;
	h=To:Subject:From:Message-Id:Date; b=C2JgTQyDOl+50g3Q2Xh0MMvbrU+XBI6bX8+6XJP5zlDLm3TW0yMOZ9d41niB/H5PvsJrppUajDnwTZ7xU6LYfd1wYys5PUdQvxJ+PBw42m2sfeF0q54+3I6Mcogz4wpv5i4E9HId+/r9XRVUJ8b4QVDCGRmgAah47oMj3Yv/vpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLYewraC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLYewraC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FFCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766625233;
	bh=v+LSF5VbutDJhk3tkM6zLNRac3kNIDgDsVR71o5JsuI=;
	h=To:Subject:From:Date:From;
	b=lLYewraCXic54f1fNcfBpHUhMXDSHbgPSHIovRUMyAJqMnpCioLz391s/udLkG7vw
	 m9U3BEcVkzWXJ4FBiS7NGf4HOM1VEG6OnRcMBe2ozRlW5u4fnEZQTzOK5A9pFlEpvR
	 58DViA0Os0HClQYeUAiO7o0yUaa6OzZUZPk72ctJoCMb1u+MEtwQs/41xFuKuwF24B
	 XJ0Na6dBLTxd+66N6Keg82gPiVTqzrBtwo+o2WLprdftuT3s4x7DmBlFVfdDTAbrBc
	 oG0leBY55lN7ayab0lpnxotngvmvPKoK39TLOoohMQzGSICKkP6AxoEeZluXfjE6Tn
	 9m7fNflQWx5qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94635E784AD
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662523357.31861.16363746687962122532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22282e20ab7fef3a10a3b867ee6fa89abf748a164945ac5ac5fa7a9ba8286b9
Date: Thu, 25 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766625233
