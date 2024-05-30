Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEB316B74E
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717111463; cv=none; b=VhbAHbHZTex6crMdyDmZL6N3bn+H/5iozhLvaPdLLIO7rYP4AWXNxRMLGCApwXejq7k7GoiBHObbrMfQ1l3xHMCHZZ4Cl7sRusDAcVDZqjm9tt1nRH1UYQx7IpmaR7Ol4AoGCBNyGRwa8SGDkE1BO8Q9XPjUOeVnW4+h6g3ZlOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717111463; c=relaxed/simple;
	bh=bHqDtuJkO9HMSAAlDFUqQvlpU8bJ9w+HrlgIz5q+wY4=;
	h=To:Subject:From:Message-Id:Date; b=AQVODYEN+EG386T/u5gztyeCpcMwq907yhkt/sIrnflZJMllSyL8rI2bgvvvjzcOkxsnD1IIIM7+Z3Omqs2xCrKTmOUdtHVeI8PrGZSF4pR/OmETlXybMRRPGHNLfoWDuEtxDxPpZwj7p0WA65ybeGPq7kZoq3HCkzfU3Zv5dJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bETtmiBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bETtmiBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45D0C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717111462;
	bh=bHqDtuJkO9HMSAAlDFUqQvlpU8bJ9w+HrlgIz5q+wY4=;
	h=To:Subject:From:Date:From;
	b=bETtmiBn9qgu833eRmJvAL+3oIS4zQG6lTbsr55TR63bF+cYyLPN3djcwVkXiZKa1
	 1eJaQifCKzJt40lecGprz/eWywmy6Gf8vUioWSE/U5JsyRhKuWTOu3QiMOaROkGxri
	 1imsGjnk2KTT+Fb2WJ4FBYbkZgUSPT32TgdEovegNIPqbE5zUYt4Lijz7ffAEwXxMO
	 mbwLrE40Bz5dkH2UX48CO/VK4Uv2CuoOt3rPTHLeqs31EXxOT7U3M6a7Cj8IkCFDjp
	 TIKPgOnyscHE9yEDkk8Yn+QXCL4mYA+ccO+gtgIUWwyutd8eSwL2BCftrdXP3r0WXv
	 r0uR1ISjdJwDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA53EC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711146282.434.9057827053185006497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3a3be6bb550befcf89dde2782e1d2a95627af9b6725bfee26c1f5dae1cd7a3
Date: Thu, 30 May 2024 23:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717111462
