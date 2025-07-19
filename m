Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E15A2AF14
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752947394; cv=none; b=X3/WeI5I8+XoapodabTrCnT2kdbeRTtCoVIsWhkgZyK0z8x3+fzj5yv6rKnT9q2+qJPjjwhESNdFK8IbdIKDHE5ARUnk1NIF6pB536Nqy1aBh3lqJTK4jJXvLPa79ojbZ1DxS4wR6dwDQpS2x++E0cZro4qEMWZ+s3H+pLHwP0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752947394; c=relaxed/simple;
	bh=OLHzYo6G+vjNsmGuu8MBiDohWrvD0QTjfDP8IlLxgvI=;
	h=To:Subject:From:Message-Id:Date; b=KtkjuETuR27TtXv3mmkIOBvEG7JgmV3b1t3XPnBVMQ/shShuGNFgQluoo+qYAZH0P84oAHo9RvEFuXz2IMLi+J1AniqsoQJh/1TS74Y/jY6gyWw6gwih2NVIMpwcnCZhglMf8wV9qb8K/SMXdt1PLrtFv1odciJKf3i0i4cebIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcD5n4tX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcD5n4tX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FEEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752947393;
	bh=OLHzYo6G+vjNsmGuu8MBiDohWrvD0QTjfDP8IlLxgvI=;
	h=To:Subject:From:Date:From;
	b=KcD5n4tXOicWFYq8BPMBp1K8BgWKGh4k7TXRup6EqLZdDRHdMf8Y16IfGAH6iaRdl
	 x+MDOIcTurACCoAPK+wSwjB1QDW0ogcqNbrKWr0sTY5vkK9VOFP4yOM9fQEUDFr2zz
	 lDW4fH0fQhNZM43HmI6ai5wTFcW9wyqhElYa6dnCPXxcBcfJVFhEDbbahy9Z2Mqa70
	 6x6gVILqlYKMHIlQg5oIofxsvu/X1AO4b0p50s946kQUmVuJcLs5BhR/YhF3s5TYm5
	 f3r5cp6mZ27x7mpbEBWi6BXpC2ioC5Hi+BdCn4OrV39uyYhMLqY77pUwhPbPHY9+f/
	 hu/jULpruaMAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DBC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294739358.19269.11591652975952195366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd83f26d41f4142b8cac9f19aadd70485a1684394916e8516ed80d2e46d8f95
Date: Sat, 19 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752947393
