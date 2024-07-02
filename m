Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BE41CCCD7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719948323; cv=none; b=LaAWsSeeUzdtNfuigFmKt4Ku9aIUdCheNunBW0QkzKc33KD21QCAjHRYs6Z1w9M5BmttKagl/Dc4iqheq8+opEzgN/OTa8jy08Ir6aRxYS33KtZP+KruZSXGk9VXkJomUYkpKsVdCGjAovWciJvlm5S4E5NEkk57RIXEGQKRCgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719948323; c=relaxed/simple;
	bh=dK72qrgRS0x5nSvDyFMuht8aYse4pIW8RQm/emJ0DAM=;
	h=To:Subject:From:Message-Id:Date; b=ae2uk2dhIN4Gvq3MG0ixBKyTtM62j+HGXJ0DGJwrpFEtipj09EPKkcsfHNabY2F/PrpB7z0FOiGE7WgqMml4350mjJnL9Wi4xdFfakVMH7l4Z2GVOK+jM/DcZxuxrBWbewh+JQblt8baDvaI8M6genjYT9L6DUbMe93lG+Vtunw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sy6jzMXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sy6jzMXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B6FC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719948322;
	bh=dK72qrgRS0x5nSvDyFMuht8aYse4pIW8RQm/emJ0DAM=;
	h=To:Subject:From:Date:From;
	b=sy6jzMXBgrovsceKH54pLftd7mKCE9DOAmxLOlwnnN3h+QiS71TLGfiGblK6YxrI5
	 z4/AlndHYzKlQo/qq8wy+5zNHvkZeLKghcuy1trA8onHUt3N8ZgQVJyt68O0n8eK2Q
	 G4J/tlqfvfNECrh9nQ0FyIz2B+RKcgvnnB9KDrPB3COjWsMYoDXmeAMHVIueiz+z+e
	 OfFWqgQhD4FjRyT0Y5YyCBFmATWOh18cTxs3cBkfg0mllRbnMHhs1MZ5GMXfCNpulO
	 6vv76sd9y8oUlBFqV33QP5rABUSjeu/yUh+1GLomV7NRXxC3qjmIlVRYYlg4ljYEMt
	 tijAATb2cW1iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C070EC3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994832277.8498.15817298895653271637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25face9ab5b85f30fb2e301f08a3145c7960b06c6eb533c6dca8d38d33ddb9a3
Date: Tue, 02 Jul 2024 19:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719948322
