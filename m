Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B74733D0
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716667463; cv=none; b=MHPiyagWMkNgXq8pbPEqNgZ81leZf8r7GMD6Ocp4g8g0E94clk3cyNDAkN2SWo91w6UtwyfLouOg58o+ZsmFkbGG0E5k/4Ywzhx+/05XiolIYVBfcJw9G8FRDfkcHdklEpNq0QS0I33injUamjgU9xvwCZCGgfeZtDu8ghyxdFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716667463; c=relaxed/simple;
	bh=4TW+Qon50Cvt0YA0LdDsAHp+z2DwShrCK34QZJ0rIew=;
	h=To:Subject:From:Message-Id:Date; b=eQtdE46nSizQ/s1TYNsxvt9mn+iHM771KsdgAt3A1enX1HUvnTeNCB11wb19naX91JM/6FWYwYFzbwWZ68kDRvK41vWpOuXjtARHNP7AhAHnIpHTaFg+qEIF1IBGHWeZB4p11h1rNxuSPaXXGrSzuwsjPr6S6CB5/SmS2qBpK9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwciEMra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwciEMra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD80AC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716667462;
	bh=4TW+Qon50Cvt0YA0LdDsAHp+z2DwShrCK34QZJ0rIew=;
	h=To:Subject:From:Date:From;
	b=HwciEMraKNJuPNd0AXR4I5N5wcn4KOsTqTGRmbYpmDjkqzp9KK994NuSLxbuENBck
	 4PeZlL/dTed99FQLx7LaiFprra0w3fF6y9FHtPIvMAyZO9V62ugoHUZeZVh6LEnapX
	 XutZiVJ2Xtn2Dao9h5lQy9d7u8A8Z9b8uWaqOZ3Chiw6gBtTuA1vqZvwfYocWeH6n3
	 Sf9MiEEh4/czzAWifUfJ/OCC+L3dIeO63HjXfx6kwUVgChtxo9yL0aNPmqvEtCoLRG
	 5WdBwcnDxogiBaBNs+qYmXnHoTEr8lNnArtRLeORwOqGUnJ4suH9j60meCUNXtqphd
	 FbfeMDjAirOGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BB0C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666746281.9362.17926709302769820936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d06486e160f7c422b6bc0d34c46b702a130aadcf0a60daf9349cd1a67aa437c
Date: Sat, 25 May 2024 20:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716667462
