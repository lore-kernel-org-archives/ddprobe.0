Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D3E13B298
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732364754; cv=none; b=ibrAjn/rl3Zl6RDeWCyPhRVK1DV00GaWBdtnyMJwdWy7Bpi3UdC7bCCFmEDceu7PScToVehXeQBehTP9M2lPMPuXMk5Xl7iOVU4+SRO87lsw1agHto7ZqMamLOtloOeUruNDUIhNjR52NwIStf7IizU0knZOhJ5EK3mccIZlon4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732364754; c=relaxed/simple;
	bh=o0HV/W+2zgDDrvCmGpM/N4Wa640YQArTCy5G1exnrWU=;
	h=To:Subject:From:Message-Id:Date; b=J1BaJziPhmPDajLAYiTORHdoIfpi1N0Z3xMhNSeXd4TWnaDojaHd6x+upAsR8Hq8AtgBsqI32u5nF/pd9zZ4T292iRLss3bCedrBJIa8OMHofHsw8qbxK7GBAG/IbFaRlWgtQJVg4FlXOE+Ab+fr10vV9pfKpZqlAvuQbEEDpBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeBi20Z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeBi20Z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21A7C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732364753;
	bh=o0HV/W+2zgDDrvCmGpM/N4Wa640YQArTCy5G1exnrWU=;
	h=To:Subject:From:Date:From;
	b=TeBi20Z1VcgT3hVfAX3tdg8gf/c9/nAyPPIOG0cFtGUDv8hhuHPB8RwMFCXRDj69V
	 ygmA97jVg9BY3jz7vQNAm1dy7cffsiZExHHC5QC3aZZsuyfAw+ieI/xgUxOBoOG2W+
	 eBqhi8AAM4PYbPKuSKGBvcoOq5FjnM4pPsgwQwe17d4/xcfskGedBufzT59UrLZwwi
	 mbyem+NkKyduM+0Qh+Yai2et8f0lSyuf+zcPZjdqwKT0IVGNJRFM3vO2DLStRx5c4Q
	 Fp8nEHEqW2FF/C//2iDxd3zSIpNcUnurkG8ribTrewnLE1aTSO1goo7qTtYAzlU8O3
	 CYW56MAmh5ijw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA52E6ADF8
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173236475362.6836.3107806241496426252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8241d1c137f9520e49074c3ac8b9c2806e0e402ac6476461ea5442946061ac0
Date: Sat, 23 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732364753
