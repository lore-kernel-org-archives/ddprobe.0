Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B4118E20
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753597794; cv=none; b=gHh8hYSDb4P7u9hQc3Te7WQlOJT2BzKC8Tms5WUnSeZeK4j5m++UU4dxiOVXPJNo4uq4e7gUWhffm32AL4orCwcQh+v34ODOn1eEcURpO2IRBoQxc+o3xdEN9UuWJaej4bBNcqJAirJPUb9gdCMj/JQ2fDDALJY7UAtdORs3K1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753597794; c=relaxed/simple;
	bh=5t1Rp4DozHJQMmiWmH6vLNjSP2CJY4XFpvt37i2R9z0=;
	h=To:Subject:From:Message-Id:Date; b=l0JACs1uLvKXHHJdPpoJaTowJ4jQuZHVIb9dSiDtey/NYPhnMKpCETIuBWy8iLT0t4lTXGJgvSfgqOWtjJ5l313yH8IlUCwKZ618EvKpPFDnSYPSOlcwQ6ER25pPXIPWyd37mhlFmXEGs2TiqZEDyJEu1GFzyYD+e9ptjFq9FlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKkzz1Ha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKkzz1Ha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13FCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753597793;
	bh=5t1Rp4DozHJQMmiWmH6vLNjSP2CJY4XFpvt37i2R9z0=;
	h=To:Subject:From:Date:From;
	b=XKkzz1HaYD2YBtdWDoOrn27RFFf5CysC+XR4P0doVfKkR2nE/gCFNAnU6uVzqWl7x
	 m1V7XwSB3dptYYhwO6Y3ky1f+FMoRM5yXPvwbe4GO66G83tp3SRm/KailTH8XDAPzp
	 EeHqbr+8qlVjeZwafg8jVzOtIpBmsayrYCUi8riALbpNT60+PgzMj1tq7gUqJPhOzz
	 /PnnGmCEz4o9pJp7BogupuYMVZWSSxUoSiJM2ZImE31XpUl0SaKt/Jj0WwOEzx7OIb
	 G3nPy+UhOojglVYEbUKVpl/BgePMDeXa1Xyfrtlys7tKCmWR6MOuHLQk4OJvba2rST
	 x0SLPmbRzvb9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F614C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359779357.31155.13741283282039966994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af303d3fefb4def32942101785b30150c8109ce03f5b7842e8cf38d4cb1f5bf3
Date: Sun, 27 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753597793
