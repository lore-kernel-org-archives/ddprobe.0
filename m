Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4103E226D05
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781945794; cv=none; b=OZ74yVSt9lXHKUL4+rlrqW69PAKuFIw8y3elRbSY3hnWsWdA9ty/dusu8tBQ7265fO+/iR39qPofoRM2/ROWkqywiBN5BtD9DUmEcgFtJfajlk4tF7W2FHW62O9nLh4gH5Na/LmmweJxAGngKRNs99XOerDtiYDj9COFQg3Q2e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781945794; c=relaxed/simple;
	bh=CjEbpaOfyVXWtNcZgCnoq6YMUuLlcefF9X0MX4uwUT8=;
	h=To:Subject:From:Message-Id:Date; b=ReW5h51wxVifBAtcQXvrXg3L1v/0XlANSOzxuAh10szHDPJC3uurwCmRVpIhtD3HIfeviDmQe1o3YmanCAkCJsHqfleY+XD0hOypGq06cQ3rs5NN/eQ1vjxhj4+gTyy656Jcxj7KfKqHRP/hz+cMvNXo507t2tXJ5J0OsD7rUq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WubPavfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WubPavfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCDBC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781945793;
	bh=CjEbpaOfyVXWtNcZgCnoq6YMUuLlcefF9X0MX4uwUT8=;
	h=To:Subject:From:Date:From;
	b=WubPavfDNd4oMZbFWsPZr19jR28FO2oRj2IuN1G4JcNKDrxa+cgWKr8pDpxbBzmO5
	 6sOMN7Z8s7a6cHKx3ZtCaQjUxDWTQGS7pV3kynEdzmDyoKduSby+kEk45gbUswPq1p
	 x31ApPw4kB3m/mgBLaGCLP2yjK+vmdIcsL9N6VCML35G8shXMWhEWQQ+z4dVrvpikb
	 COKDgkFE3YF2tTTO4KneeqICa0sBjHSeBadSN4y2VfgRGWjRkMep3a8yQHJABX1Yur
	 t0fgSBy+W3r+RYY7ylRbJQ1dsoD+nH9xmvv95ISBsGAKrtHvb5PGc1fbuI1mwMX8gd
	 f1IkwXT3JGK3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB6CCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194579369.21896.869983764504737520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed95e322f5931f355bfad89e29291e9e5442dadf010a6afa6390e4cde73fd65
Date: Sat, 20 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781945793
