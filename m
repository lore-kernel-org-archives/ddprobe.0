Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4034F367F25
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783240114; cv=none; b=QxAkZe0HNo7C2j40HiXz21n96lwCgX6w5BqTcCxC8bfT1c/Xh1gEqHg8sW7KWQwp9tz6D7qW6Cw/kUTG2oC5c66kleNGIyaWHunjmzIF5DGVBBPEOzj+9qP8+/9E6vufvcTENbK8p0BSQiJZ+U74YaFmCKFThgG/jWakPmnXVpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783240114; c=relaxed/simple;
	bh=zt2N0TS+bxFOS5cez7AS61c6zRHOFoKIEXozlidN3sc=;
	h=To:Subject:From:Message-Id:Date; b=eveiyooZdiWlG7jr4ZraYzsLD6SZDwBlgH63e6PnBps2NNIxo1XqbhIVZu2q0nm1K2nZ9xxe1hDhPcpNlOtg7UWSJvD1i8L9WSxFWzj/QGnDi2dtV7PXOoc6cM96BbI/1edtajEVOF7UFwaxiWMykf7oPFLUJrYbiAUR/nQ9AL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSvjAfvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSvjAfvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C02C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783240113;
	bh=zt2N0TS+bxFOS5cez7AS61c6zRHOFoKIEXozlidN3sc=;
	h=To:Subject:From:Date:From;
	b=DSvjAfvFnme00XyA0N+cbPtKYU/a8JvQ1NKtJaDLi9RmAPpBi6B5EZfQEBXDiRoj9
	 HZyCYl5Y/+aYXa/jaxp+wKR+BHCUWZ1E2hf2r0t3lA7uNboKvDh2uZzykr2PvqZz1Z
	 kX/wZDRUKI3LdxjKxsQ7Yl7yngdcGVOks5bLrRufhfgE4puyhHraZ5sL3e2Hh/6CRg
	 A5B9PdHIRqz4RhzGqxR6u3HoRGANjeVkUk6GvFvxCsWCaKoN+lzhuj+huravCtSo2w
	 eVEAwabqjq6lJz3ZpNgHrarQ7ygWjb4T2SFXZ8ectbIPUnJt5e5C5xzqri65+zQbvg
	 k3HGY5YdjILUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9767C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324011368.28071.17635983293003321311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 857a28f01527bd8f0e81671a08c9e1aaf7a39f17d002239728e58c71b3f57acc
Date: Sun, 05 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783240113
