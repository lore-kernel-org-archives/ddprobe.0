Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F85223645D
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776059254; cv=none; b=keRKBw9ttULWQL5cXHv3gL2TK2oZ/OiFGMdgiB92F0NTS9NjON4VkVbatvZ5zO7johLPa/RjyC88zkrUJ2IM7Zr8OnIlQzX19SHIPp4WdC2I78xb+PC52NnVLPoN0s46LxjVlbFqer8QcenGNZXpiWmG/JWTe127jihHECSKOd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776059254; c=relaxed/simple;
	bh=4mTPS3UQFoYeqcjbDbTV7Me0edwfKJP9Am5rC1r7izc=;
	h=To:Subject:From:Message-Id:Date; b=hTKAc5FlIrwLb2u59UNB+UsehYceMLedUc5G6ZZqbBKLll5VI4cvSZOa4e5WQzc4JUnt/VLs5ReZu5yJ9pT1YVn7W3vvtHGnQOjNuZHB6xf6SzpJHQO234uHWbv+nlE3BQFFfZZaTP2UyUq/gd5oGRCaFUgqZ41bJmC1lUYvg9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3HwlEh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3HwlEh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB680C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776059253;
	bh=4mTPS3UQFoYeqcjbDbTV7Me0edwfKJP9Am5rC1r7izc=;
	h=To:Subject:From:Date:From;
	b=O3HwlEh/AeTxcMUs37lS5A8qO/rcHoUvq2j1+BKGD2wyVtuGCJN13zFtSly76D8fQ
	 swmdYrk5MiD/b1VjtuYDtFx6dPVcbSiJpFDHmS3x2ypCGsRw7eL1CyGgIDyT6hTndo
	 2PuBZPEXUT9nRhCFNLsELsKFaaSgmssLkKO8D/y1lgezxvSxPU2VaLvnQ3Fy4kS1gI
	 za48SqXqb1uOC82ykbuBWCbpdWZdFzRceIlymIwIhSjIVv8QZ7SV4qsIii+md+bgFP
	 UlgZa/7mQ0xG48KLvNqyU4H6PQGQoleJffVLKDUW1+q1naI7dLv4qsqHpfbAOu+4pq
	 Lm2oisYsAd5RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9074E9381D
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605925368.28695.5012117823244096964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde8496dce2e22b3d6463216875216633bd51723c4a246817dc1157528e26768
Date: Mon, 13 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776059253
