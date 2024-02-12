Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0B838FB2
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707744497; cv=none; b=gAzap9Zsse7DcpTagM/ISHv8QDDRgIcK3qNK/jZIZ/hd6efHoaHk0Pts/75zhOZURhxmH2fAMvi3v1Ky5lPjAv25AvD7V3Mz+c7R1VUSvfDEptS02DcW35wGZL34OY7FcSwTTPHZ70hQzluyFL4dVS4RZkaBwATCP8WZ6HksC3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707744497; c=relaxed/simple;
	bh=oCQL3jidZ1O6vJ1SZSCOS30ZnEI9SBDRKxUhkx0rXqQ=;
	h=To:Subject:From:Message-Id:Date; b=pP1rUubtApXnV4T+MxaxF1CjUZqECmrjU5OZ95YF4he73n6abq3eYa08vrZq8Hk9CMqbZGW9wOJzIAUZrYy/O7Fc0VyZduaw9LI9n3DgAAkF/9d85Sk00smJ5wIfOOO/w/ux6kB4GyWYTx9hHm4/YI1mw19ULdnnCuIa5HTFB6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krIevN15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krIevN15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA1CC433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707744496;
	bh=oCQL3jidZ1O6vJ1SZSCOS30ZnEI9SBDRKxUhkx0rXqQ=;
	h=To:Subject:From:Date:From;
	b=krIevN15FtUFWtd2jMkCDkaYPPLwSkWJoNF2Ywpj1yo7s4U2Z50lqrLrCA9EUdgrM
	 a/w/9sQU8TEh3HmI2/tihqxDmLC+ylR3x77pmW6LmJjFbLa0mBoYpPaHBw2oNDmjgg
	 lleb8NGh3T2dAFPGpFyXqEKIHonR/GThXBwGT9crCpceRWlNPVOqMimMadTJJ/KSeR
	 WFjPZyXenr/8WO6pboSe5h3sf80VmXmrZ8PDIh/bcisp5jyAnCr3Am/7Lpw5gfws3u
	 sp+CVMFKOyR6bNWrazEXjqi7NWtG9dLhEa8UCUI/BdZJPBnKtGn+kcwEqfcSE4l8/F
	 +98iub3HDYRCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CEFC4829B
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170774449638.1955.6856438098643604479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841b59221a056d4d8afe4c881a8a1e29ee8e6e427975236c128a5d906fbdcf0c
Date: Mon, 12 Feb 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707744496
