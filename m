Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D093033FB
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780613674; cv=none; b=kAaqemS8La3wY+iic/56dMFHz19+jpew+E6WLI/4UK/LCZ+D/gL9gGTfQwey4A+MztmE2Wy4yG/u+WTU0VkQrHmpKibA+kNcpHB5xRgndGStgz4UuuPn+OA4vZIhRJpAHZSd6v4EcDPMAHBaz4VEn4xbc52n5eqZL4pBiha5y6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780613674; c=relaxed/simple;
	bh=UcIme8Tn3RmGJVydjCkwUTLXPXOYyXKsvvPFLxL4hyg=;
	h=To:Subject:From:Message-Id:Date; b=VWFGus+s0Elk56f6Q1vdvkaDZQuPKxX+1XK5ewELyYTYI+FBuAeO5G7d788PfUYwNuBNzaIK+2gOw0ie2Tq2YDIdnyrTWteHGy4IYLNKlpjYyhNyCs5jqpCTYJeoio6lytivncBzL75upaIbjNGfpK6GHoLS0V/OPBeCVQfTLrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lg9/i7TS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lg9/i7TS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5FAEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780613673;
	bh=UcIme8Tn3RmGJVydjCkwUTLXPXOYyXKsvvPFLxL4hyg=;
	h=To:Subject:From:Date:From;
	b=lg9/i7TScO8y2smbydXzaHWKYlXMewYUijLbvi7Mu5qSGoC2TiSrqWB2Y3daym8Lc
	 u+BxdyztJLbT0IpduRzEFAbKpeqGDPYSLGe/80OMe3C35HEo7y3anil1jdXMPqYnEc
	 ++5n9FXrc/d/iOIfI4rDwWD8926TTNr1lXIqYk76pFLivLbYAQyW1GK7egz4bZ2L+n
	 MHeAaNpo0xp3L5yKkcPl2jJCuL5Dq62NjUj5Cis6tZpV+ELxiLgfrstrRAafiuklNo
	 IJCICIK4+gzruv+XV2QhL3T9rJbL+mbOkVBgibjtow9oaLZ6uT72b0Cu39WGTTjvJC
	 XST1p6y1axR2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6FFCD6E77
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061367369.25913.319551618399674614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00b1816a83a2334208f41a0c969bf2e7e1b35454453c25184558213a2ce87a6
Date: Thu, 04 Jun 2026 22:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780613673
