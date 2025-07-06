Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F8D1F4717
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751800794; cv=none; b=JKf1VksZsyAqBCR/TYWX5BxB/+5alLyQ7cntM1p2gIY1RrP0clavMNbJle/ppRYDhyinRxKhOMPBrKSmM9UldEa0BMTbcSceqLdua3ePEhJQSiyYtypCcr6tSGRmiEqlcNGBPqFurtBzbVsJww2X9bV0D3MWdWEgT5srHDXA9WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751800794; c=relaxed/simple;
	bh=RnUoR6QbSIosSQjlDPUNY5VjX6f66VF3NMMsHJapHS8=;
	h=To:Subject:From:Message-Id:Date; b=rMepesjToiF/VYp+jRgvTGucKMAYJvkzPu9EaCTYffZSBXfeMr69Zfm7HcxDUclmF+epel5eNogp6iA2Y8zPnKDbrMfkA0L2LucY7xUvmpORMDEuvrnvCYv0l2Sr4hds2i1gE/89pz7ZoKuvx5H7MVVawlhv4dYdHXyorT05l4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhFdHQk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhFdHQk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A374EC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751800793;
	bh=RnUoR6QbSIosSQjlDPUNY5VjX6f66VF3NMMsHJapHS8=;
	h=To:Subject:From:Date:From;
	b=IhFdHQk2ZW2m/71x7WUoJMZAlGuJ01M8K1xYhBuJp55esciWcgXJ+v0BlTYHI+JUv
	 SL19DLeWj0r+QtJYeHVVY4ulDLlUZ18Y2dhkQw1Lyumym4ANl/4tGFBd52bGPIiovR
	 Urm+hK9jgW3KD3/Q3HtxPnwU8kS6Nr9SUqsbE8p7wVuv1mKnvdqsn0hM4k/Rw+/8ai
	 aSyp3M7rMBFHqt5I4KdEaCZKflPonaM+x3tV50lxPcqlKI6e3AfiP/Usyq1nMntmaP
	 dDZvGlYRPy3f7XZ5pppoohcmnzHfR6YNOWTLiFZHBi4bAh7EYA18tbSzPdPx1IGxHi
	 crQqOtLmA4UqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9123CC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180079357.4857.2322734182118397044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd231a1c9ba91e0004df3761c9a911f48ad5022f8b6fd93ebcf55ccef3ad218
Date: Sun, 06 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751800793
