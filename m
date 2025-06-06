Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A828204F93
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749251394; cv=none; b=oNrFL0O4rVWz4v1FMl5OQGroTsQzzRr7JaN4FkvCwoyPCKxBTOXuxiTWJfZozn0oWE/kh9xBZOGGFp7MQHfkQUpUzNn2ZXkwQTIcayAoBkO8190sIVuQHnZjT7OQl7AShYCCAEgblgSa/uS2R8+wya6msKpo1YQGA0p7wRzdkyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749251394; c=relaxed/simple;
	bh=0ToZuJQQqJcKqrHmNhRM2nCCHGAT3om1VegTUVAol0o=;
	h=To:Subject:From:Message-Id:Date; b=hSV3oEywyJijVLu9xNZtdGuoNPzy1R408TQeFeGow0iB31X95oj+0wQC35lhn1khUH8PTBH0K9zGNLNto8pYcbGEf4FnHofuTa2G/rw45Lx2IpfSW3XJj/G21RY/hMgJmkmhuJTsU1EFInkhfJw85Znq7oxLOXqVfuZDWKEFF+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrZ8nR+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrZ8nR+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A880DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749251393;
	bh=0ToZuJQQqJcKqrHmNhRM2nCCHGAT3om1VegTUVAol0o=;
	h=To:Subject:From:Date:From;
	b=GrZ8nR+rMyJ2OPKpGzhKM59Rxx7J02z59sGHkBxkD3fky+7GbrG/13eQo650yPcmn
	 5tuVqXvZHiwt65DAmQWum7cOAEvj9w2t/81a/cj/Hm3lwb/K1lKLmJGshP6wFBA5YX
	 GCUvfTyAUrcjtLLI08oT7ow0s5NvyvZCgQZGZ/0VL4UslpyJd6ef/zT1vHfEOrJKY9
	 m2Y9bUmDq8pjDHD3gpoQ5GuMRgZBoWDo0U/qQmM5xX7BDYRlBNQzJtHbX2ldHiMCRD
	 /8m6cJxOdDtm1Zw2CtOPMjDIxS5HyTgKGoDc37cFXs3H2pK1KLXebTfUkAPPLHCvLw
	 R5KBiZtDaykjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D25C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925139357.29411.10624326939831727024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df74923c5c19ff26a9e27e31400be56e0e34f83cb1150a328b5b1f8bc0b6a5d2
Date: Fri, 06 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749251393
