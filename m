Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6551DC05F
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744123793; cv=none; b=dLm6aGDODiI260/IwSW//ntQTm21l1kijEzCIaD5B159dN4VWqillKpqETQOouGjJ36pfzR4eAbBrS2g82K8VVx6qzuNls8rm+LypxJaNlNiI7Mp5YNnZ8/uDWpJwDehpy6mMNES+v2v5esBDJ8b4HmbE7PTz/vEozm/FrYpn94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744123793; c=relaxed/simple;
	bh=9qb1XZ2dGfhyEILyNA/bdqkotT8UdBqv2B33Lz1EDfY=;
	h=To:Subject:From:Message-Id:Date; b=NVZbrGQyLsSZi5d7ALLwFQ8vcVaICYR3DweoEbbHeucnh56FOX5vg8Urqy1L6GtF9rQRm4ildds2W/ZopBUssN3vgBCYmKnkHtlFQtD1zdLUrwCLZcc5TV5x8XrP/EDiDFklGjW3Xd1V/srZXUuzl6+LzBVuY5s3VCxOvJL7pEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIzK2aXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIzK2aXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3137C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744123793;
	bh=9qb1XZ2dGfhyEILyNA/bdqkotT8UdBqv2B33Lz1EDfY=;
	h=To:Subject:From:Date:From;
	b=TIzK2aXpni8w1gMAw9yufDeknyJMbBxputO0IsZ0Zha9kpBlNmvgtqbm2pqi8m0/T
	 S3n4WaSAfSnLrSEMIAyaif5Lf3uYNDtBhyW+4u/NRVBI1ej3xoY93Yv0xTRAFwRqjm
	 8r1cOs7IuOmuu3l9naa14ZnWXgSShYwCb6pM7DH6Gy47Sbvyr/mJrLiJGJXSzD8xMO
	 15I4+XFisjEhx6EE4x59tpPweLyd02ZHrCPNob1HtOsMWfBYTBxfUZqL92/VWk00eu
	 Oyhqw75khg+ZnXzGNgNz8uRSJa3bP9mXs6hEshG2N/L1jL/7l+9+YxbqlvrD2XYEbL
	 Ox9o+/N5BrjPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9399BC369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412379358.29484.3870721042603104796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277408f313d4d1dc505366d6a08c7257012db19152092a083d5b353a399b2e4b
Date: Tue, 08 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744123793
