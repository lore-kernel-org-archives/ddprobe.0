Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380961991CA
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751813994; cv=none; b=A/hVOawZNe1j6n6B/IUrv5r78q+5oijIx7tkdUC/hUwMCj1DghWFOxszI4ncer8YVkgEWLskYqqhZ4XdYa6O9+e4Y4CvTEawAVy9vTLEYd1JqLO+54LtO3wF5yaQ64Qs/GLgVuBJ3twvUn7D8KnZHtzb0rkMstKphlwA4JkyDY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751813994; c=relaxed/simple;
	bh=mg4jK01kkx0qBlWd7jOxg4NLhDyYz6V2TazupGLqOt0=;
	h=To:Subject:From:Message-Id:Date; b=lRNDJTvrd3bd0ti0Up9l8X0jyXVGk+YYBSVHrh4KsSq2yBNrS3lcCbEQQ8MWCUbkbjEi9RJys+0gbxn72w212nW2MAmZrcz20k8ecpRhsChre8SEY7r/cUSkQly3111NbuO7sOe36kfMDnAPN9/2NCTeFmhNGh3Oy4eYIMnK6to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlB+JSVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlB+JSVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6608C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751813993;
	bh=mg4jK01kkx0qBlWd7jOxg4NLhDyYz6V2TazupGLqOt0=;
	h=To:Subject:From:Date:From;
	b=GlB+JSVCfDbHnSePvyYFUpY/NLXoOO78S8iGFihjadCuBKZ9R50Q6XvnRsYW527cR
	 LAJVuO3p+ZxLdiSk1+ijZghG4j0DnKFWe5q58m22KS0KJ41AzlLX8JuUuAbu0WDT+k
	 c4n7BqeDLLmpSxrPjCBXGKqKlCKprDlFSkjdSGqRQmwS3ddPyIOQnYjM3EbJ3piRgd
	 8ca37D3DglQ0HHiPIqSDalKUkNahf2bXaB6gfYqQyTnsaBVZfyrdTWBIA3HypTsHv8
	 vCYtZ6eDe/hNhbDrwCVi8lgXbMFdVRSy84heJ+M2jQ7UUBswzPOaGaaMoN2bMXyuak
	 NeKgUm9YcUnmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939A2C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181399357.4709.5071581837182061833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24422efabea531df3cfe5dcfd10f3614b8cf927601741ea501f14b9d6ef573e
Date: Sun, 06 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751813993
