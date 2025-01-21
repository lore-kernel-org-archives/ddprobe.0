Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5D41AF0A6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737492954; cv=none; b=KsESEs9hl/oKgPk4329F1jAeg+14vhuiHdvlrHQAs5ddkfzqJlkOshkMSwzQJfoP180Jaj3k2kHEx+lrQwBPnD41YkXs/YiPaX6kzxoJZPrbK5SDZtZSdQ8she2GDV5rWPUWU/hDtM66xnDuyO30jBb3Ej0GogAB44JlpAXH2+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737492954; c=relaxed/simple;
	bh=tsuvHd7MlZ619AnyeAvTmqn5Kvc7AssqrQsPUBuMUuo=;
	h=To:Subject:From:Message-Id:Date; b=kvUnmUtjMRfB69AtOpqM8okXxKfPHoMeDhxVzllPkcl+eefYS2KJ6pwIHdS0xFGO6wt9udQxqVwlnyTNS0PIvMlvxvjgEuvSAsBF276flsNvbQruDpgDADM89iCxbzSmljiPpNG5mITNCxHmc6WQcO4v/S/AeHbP2Cvekgr5YzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVzULODZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVzULODZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF85C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737492953;
	bh=tsuvHd7MlZ619AnyeAvTmqn5Kvc7AssqrQsPUBuMUuo=;
	h=To:Subject:From:Date:From;
	b=XVzULODZ0x76kw3HGB2YlMjhSPeZ3/jLGPrFbCyUHLq4mgHEeZs9+Yr2ClKO2XwsA
	 NwfcYVS6P4qcGsS5uDsnOLegoMswahatbTp0iPEL7tGNJULrR7uW5ExtfrXE0Unf07
	 iLMLZAJpaDV9B4aJlMW7KrkAsMLmCqJrXbbYOanWB+DoLbyU4DCjrQv9pcbEZPJXTJ
	 v1XG7fWVIGbPOzkq7zVNfRN4nGTIRJoz0x2cmcflwoZQOD75eyIYow+IkW6Xr6d1s0
	 C12/zpS3RjIR6yFK7UAn6ETRk3gr38uf4CbbsFIIyp3H0w72IXL1Ip4DzVlOLPnxyg
	 EieClnCOpwbCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C73C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173749295358.22330.12061983868550680455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa4e2af3492ad380252838aacc10fe1ba07a9caaeafa105990a6dda976c1617
Date: Tue, 21 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737492953
