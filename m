Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1867A11701
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707896297; cv=none; b=p+doME+pudfiZpwb0iN1M3ElxUb7EX+fY1aFkNhvi1ciDd6v0QR2MvIYzo2W4qsav1p5sjv+wPp96J3QAFFvtGhS4Nko4kg0NhjxURQZwqB/F8KKTJBmbNy125k+tkEp5Gaa3U/GBgp0cjE4/MbFCjM2KkOaQSPabiSjoUg4qjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707896297; c=relaxed/simple;
	bh=LEfYAurK4CFe4SbSlvP3t+YCbfMs666zccrGT7WR3Z8=;
	h=To:Subject:From:Message-Id:Date; b=bqPH/FZVyqkDiJRObYBlaOpam77jyaZU0+inDOdpym6VesMMfptkXZZ8plxg9ZC29FLEcBDbLjJECqoZgpccJue5ysg/pC5SWRXMxjTHazUtPznvaugbyHsGH8MK49qXuy9MCDZB6J4+kUTTrn35281y0derMl6qx74T6wBgobU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLGQ/PvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLGQ/PvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D79AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707896296;
	bh=LEfYAurK4CFe4SbSlvP3t+YCbfMs666zccrGT7WR3Z8=;
	h=To:Subject:From:Date:From;
	b=RLGQ/PvQ6ixszsqAKeuhTN9gOPbsdC562F3HZqRW8Ae0CcsFjHbXvCrZDuv7JC6en
	 qqGaKQPAk72tK91MwVLn2WUVr9EKmv4XyANRAjyLRtqaS0+b5dRCw9c45hQOenn4QS
	 y62Ao4Y91IsbE0n13Hdt05yMHhpJNDHdPiUolLMHNVGzRyAhvIeQMHiz090ba4E4pm
	 TilAwAzOq4GqVorEMokReoKPBjrBge+eXBpWzrQx4S5ObGMTu3BalPorJpoLx/dQwP
	 K4q9Zgq5m+KawZudD5OiRMNDuiGcJeoUdF35OVYNHN9pF8swjC01/22niegb8V/3R3
	 zliqFAz0ww6tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6143AC4829A
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170789629639.19974.12828410582559332316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fbcc6d56097baa0fea85864e6c0663a7d92f7e72a472471b77a4ea4d30a3b4c
Date: Wed, 14 Feb 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707896296
