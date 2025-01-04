Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4621E26296
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735963554; cv=none; b=VEiheGnA2JnD83O4+joPPPppbESPj6r8PYyBQ4iQywzBHn+z2aSsZ1Pl3EgdrKeQviWKqP1r5aqueZjBmlzihOqkpQFusLvjVC+8ykyr5Vksw1Oto/JjlJiMxauP3/yDu2UpuqlzfQL+p0VG9oa0FSnRUPOmoVthRsjo4qE9G84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735963554; c=relaxed/simple;
	bh=gFpEp6KVVS9gOnnyLLPFCEGhrH01UzBcQqoIEwXl/+Y=;
	h=To:Subject:From:Message-Id:Date; b=WlRkpYkKZItV/gsC0ntRRM7Jaj1bzedkGXJzdRBPEeaLAYY/CtceYnEtPVfXwBAt5vDSKmzMCME+/1fN9E5y6+ZUFBrMi1EdO/MSQ4kFQjGs1F4f1VjISaVOxLdfZqOcNL6QfFBX+o5912gtjoOKP6/jCuUitNQV76EqwxJm2KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Io74Sq0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Io74Sq0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13C3C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735963553;
	bh=gFpEp6KVVS9gOnnyLLPFCEGhrH01UzBcQqoIEwXl/+Y=;
	h=To:Subject:From:Date:From;
	b=Io74Sq0FoJD4djrycdsJxXurUQYj3RZRhTe7XPg/h1PuyL9+1KvKxS6axfZ3R4beV
	 LFQBQ6mBRoBxXmD2wqQ0cR2u/4cRk+y5ENx98oTh08Y5NXpuffsFVVPuGUlHIgRgji
	 NEdtGgOysd6NqZWbhQrDUg80lDjOVVIL5R6D9Ds2qwYHXyzwzTAjvE5gFURQ7+98j0
	 6X0kfeOXhprVt2KSgXg6GS0BTL8e6r1edVM3Ok20xqpXwsBdnE8gHwJ7icOQ2121si
	 8TvBj7qJrbYlKpyGNpijP4ogIknhLd2ilNWiq71Lubz7Row8UVTNqOciWW7gD5TmJV
	 comsNSlltYD2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9968DE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596355360.8506.3911740384768164395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93615e0b8c5de79023a604750e14bec5e638b29346bf3968232532722123544
Date: Sat, 04 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735963553
