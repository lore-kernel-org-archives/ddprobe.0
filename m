Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3149ADDB7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707272297; cv=none; b=L6AoDmOpajaaKLBj7GrkkrITSsqe8Uhphi6Uch2LjMyvn8R3BSfg39n+PcyuzSJoFskXdVLd2VOlgSrEWaTusflyllyhT/sakOtq+hVn4EuVOm++CjD/IPASV7rbdvvNWTZUlOV9WNVcApctvHtbLKr7YZwjjnqvfAHcb4goZms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707272297; c=relaxed/simple;
	bh=Idx+JnEDGenyeZJWKxhzxbX7P5DxvUmEE8tksQU66fc=;
	h=To:Subject:From:Message-Id:Date; b=SI7JV8s5iwrx4tAlbEUtiMYpjmrq7zfOdVpFhXJj7CuM4WgjACFTW08uIprbrYJGmni5IwEo9Of96h1/PGg3RqqMDLt8D5IgqK7rkm4WAOwB6pp828njdRt8lW5pLX1zV8yZabNKZSCsvRcgZogHKEMn/Xf9Wnv+zYUEiXRwaIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0BLG83K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0BLG83K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86C6BC433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707272296;
	bh=Idx+JnEDGenyeZJWKxhzxbX7P5DxvUmEE8tksQU66fc=;
	h=To:Subject:From:Date:From;
	b=C0BLG83KfnhwNDjZMNGXizikspmRzf1mpbSRZBslKXYzoel0G46vAGRLYy0jPC+Wc
	 1Xbz9p4reeqSgLZZqhDxqLUbP/+d1k4wYelcXxI0Pa6Y04gSMgRc2CiUPX8fzxHOr6
	 53as9RBNJwi2VQ6AV03QhctnwPPhuiEzHtGK5YUshrpANAk1m3V+myn8d6eD+O+7AD
	 C9Bur5qrcUEjI6jDf7mdihdlta1yUmZkM14lGEee/MJpO0HDNbSPKuU3o6aVaMJgdl
	 rxGAVkWt+3qy3S8xJWqIPqMl3fTA5mNE3Jv4Z9/NGn5wYa6ca3oj9akA1WxU3kRYyt
	 EsZtspBCemQOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66421C48297
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170727229639.28782.7453768809702636526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9874c9bfe7b0da4d1640fc4810a188113da8f11c6c8ad762ba077faa2141e9e0
Date: Wed, 07 Feb 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707272296
