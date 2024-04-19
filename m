Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A6482D99
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713527423; cv=none; b=e9DJS6HiXDmZU7igvSnRRQJex74RLRdvh0ODi4EWK1tt34cx2mll7y9Mm+/EysyRu/1n/OHkKTggUziECnXyhGpSa7xmCEhcOA8xxfvP/a+/iCe9udBcbU3vylzw+gb5GakZVJop3f3txI0Fst/V0n3u8IIolLvG13Avs7pL0ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713527423; c=relaxed/simple;
	bh=qQR1j8d0lN2qZxcGipN4rEDiYCzyBQChEmhFX0xyfEs=;
	h=To:Subject:From:Message-Id:Date; b=pCceTBLQ+eqGQ0ScHlx35qyWYmmzptDFccNVWfxtyJ1ClOXBQzkvRveNsB/06qSdtslLMz+ielnFdbn8ewLxGBd0KV4iC95RDVLETS3pNQ5dEANZoXPdvzJHma4cskIf4BeW1b5ovnfvlnATUUmPe6gDAkGWNKPIu9+JPKtGyYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNjeJp+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNjeJp+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46ABC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713527422;
	bh=qQR1j8d0lN2qZxcGipN4rEDiYCzyBQChEmhFX0xyfEs=;
	h=To:Subject:From:Date:From;
	b=uNjeJp+mU3OLtHTUq6mjVlJNVe4NL3HOGa7FQkxl5RUHw6Kist4/tCr/Ao4t8dLUd
	 MEtIOq+gXRLpDMGkfpMPQ9/rjUS1P5plB6Dl7i0r9mmUx5fz6SIRkb1GrIU0vWF3pE
	 8iUzdfMp9AUoD1f/fcsmpAU8JTh1hvOShvrojxoo+D+Ojh8+qbEl/7x+JfLXeRa60O
	 TxN4A0grkcLPwHOxEriwHAAfHill6nUAP68GMbZAe1EyuLxau9NEpXvMgo/a712bhR
	 tnOV0giKeur184SBIIs/4XGhQoicV8Ge5uuLUT2kptK2IvcY99rxePfwok6cGbR8bF
	 mfecGEVU4b0cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED2DC04FF6
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352742277.25967.8503446007802357395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac532600bea55cdd15aeb0e2bf6985dcf6bc5f97536e63a3db36cf8affbf9b5d
Date: Fri, 19 Apr 2024 11:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713527422
