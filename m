Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6653F8EB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780073554; cv=none; b=azo7laUnwfGi28hjZA2ARdArgsx8XWQVIEpmC0c8Mwt3zKUO9tNhGI60vZ2oYkoCzdpwU0iApm/zkMF9uv6vV+BCHq7qjIn9ugoGJCdFcdeKZhgaLcGlR99Ybakn/1VQkBGgjWNCocbTFZaliD1IPC3I7bIwisnVX+2+eOD/qYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780073554; c=relaxed/simple;
	bh=qQWoJYuHK59m940MwYQhsmKAZhLKIl4aSByfhtqL8ho=;
	h=To:Subject:From:Message-Id:Date; b=YEFmwWVCUZWkFYG+KUBD4rWCkccfaoVuv0072xVjNG9PsJ0e7FTn8sKTrmy/JqVYHCu+V3xH5vA7o56twWvJslEg+jxZE4OwLl3tfvqo6WdJeNskvJgCh2ayHFiYNX2FAQ5n2YqyvJiN3u/nH5U5v0UEZi0IvRwniT3887diOZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyx2qgwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyx2qgwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA191C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780073553;
	bh=qQWoJYuHK59m940MwYQhsmKAZhLKIl4aSByfhtqL8ho=;
	h=To:Subject:From:Date:From;
	b=qyx2qgwxY2l3iA3FAA4Fha9yatEAIlqo2zNyvnXKMOxAfOhvtKWeSJVin5Jr70KUA
	 hgEUqFaEVlK4QC0dzzxfbBc/Q4Cy8WiymWqv7jFz0BIB5kHv4EJ03Y3arBS8f1W00p
	 6HfJTyWqqmGaIZGcdgh80c4Dv6XGlHPc/gGTNlZKTFImtI6mxRYeh710LVqEiUURYI
	 wy+nocAxqRyZt+FzYcLhnzQyXdT0vpW5Uj9XE1UfGCZJu6CwkqaWeAcncwFqFKH4nn
	 W7vZBbJCipTQBnNQVYIvOak/EFiXoz9+WSLNvOtkljUElsAC/xY4SylCBG+VNlnWzQ
	 oe5wNep2Lia1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE936CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007355376.26368.1047973433704127378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0f9df3cfb3f90356ec5a1f0917d9b5743cabb070fa06dc573a15b3889fdf76
Date: Fri, 29 May 2026 16:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780073553
