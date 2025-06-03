Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6201CD215
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748978994; cv=none; b=SmC9g2efc1G7YyOuMoFfjZrntEcs9vyBBRSLijGymk92NCqFUyi9Z/7vPNrxY17OwNBfJ0gbLTUa8f7H/YFhoTKazs9YBhHLr/eOJwrnTheMhrpbz6bojPOK5AUMjDvSEMq0JYPSeE/5f0lS0OVMA/ff4kqVhuoY/S2J8mKuEYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748978994; c=relaxed/simple;
	bh=GrrB/PkDA/A+ebKDN93cWAb+ONC4SFCnv++XNhxO638=;
	h=To:Subject:From:Message-Id:Date; b=XrO/gnJ6Wqt4uhJbRHslK7FBtNbXj8CAEwnZ4oV9jlmwALh2o2ah+uHjbPpr7bxyRRU/DgBRCPy370gt0WoMZJV0N8G9GwA9Bm/G5CKInf7qshcCYHh4rGfuUTlvo/RHCeJ9lsySBFUq5JpD+/JobQMvXTVR6zcCaaYyHhCDoWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ES+HKnP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ES+HKnP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBBFC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748978993;
	bh=GrrB/PkDA/A+ebKDN93cWAb+ONC4SFCnv++XNhxO638=;
	h=To:Subject:From:Date:From;
	b=ES+HKnP08GHBxL1jJBZNbi88kkhFr3zU9QYwrCVWQOm5tH0z22XDef+m34sdrG/LX
	 7DDgMcEdgGVH2w1SfCGcufbJUCrLLZGmghR9oUiSV8aF/stvTrY85BSdYrSp72FjgV
	 3UbhXMdRii3wHz5p7k1D4Z3U3EXQL9gFCUBhUfx6KMl/ACd3+DN9upeAkFmiuFgwcy
	 DI8ox2Nk0ctOc8UB/Vtb/EkSj08aA0U/jLh4IWAf+ma6DJ345gb7MAJ/wdbyjA2BMn
	 wiliGaMRpjp1LcNaNbI0U875AnpSijBNRuF5ajYBswkyu0hU3G4ARbCRoaPEBcczvg
	 1MQJ+/Rsu4/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F453C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897899357.8167.14785627783713512274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62fb121ee17f15db17ef7335220a5279f08b2ab6ef3fa6dff7d722542cbdd223
Date: Tue, 03 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748978993
