Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2661D1369B4
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749797394; cv=none; b=WXIhX6G7cvTpjoM/o1o6pG4sKLLKSO854wrqRU3qrDZN4RM7SFgib7EMzhqjrINluYa470imu4Wf9vPxvJgYpvxlZdUKMf0RgX7hUMTJRk39CSGmdLsJtm4OotZ1Dc7tHOor1k5TTm9vuWBTUChVfGt2y/0stCXmbw8IzdTcZqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749797394; c=relaxed/simple;
	bh=3AWLF8As4q+nkzpZ5Gl31/Ijkj1eT4VDdqpb7eqH21g=;
	h=To:Subject:From:Message-Id:Date; b=I5sITZhkE/w4RhV5yhv+1go9EtE4MhkVdoVUk3Nn5ERUqdsOlpXHS7v1zM6cJmrmbbo+gQtBG92Qo3TfZCbH+yoh/WWtl5fRqCR9Q7nkDYk7DphyhzqcRK1ogEKi+6szH4+Ez0qokgQqTau3zuXiQ1vPylOkzJDIRNI5NMeoATs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NU2popw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NU2popw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AE6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749797393;
	bh=3AWLF8As4q+nkzpZ5Gl31/Ijkj1eT4VDdqpb7eqH21g=;
	h=To:Subject:From:Date:From;
	b=NU2popw8Vn1tiLeAp93Ob8353tl3TCZc+EIHUb1iNFALj2o27dgNTVOYOUOy4CeDt
	 vMX6UVIgbbQECB3f6DqQ2ldsNnTgOjfW9DUUSMyTd8PQsKY7ow4BYmq7D0kovGy9KA
	 myP/6jdHCIY5TbTtAcpT/R5GWfzYFd9M4jOZ3dUoAwt5Zr/7A0RyEqQI8tSuME/8J8
	 RswlzTNjiEmif06fLUzMGnomXJEukE0i05VwMNEQMlpUapK1eLKqfTYWU8x7P3EtPG
	 LEikg87drMYdMd5bwsCBHfFeVx7C0KThKCKPmch8UzAKVqz3tvrK9vI+q6OMzP0Gzp
	 nktWJVGHWnQ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E75C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979739359.32346.15918083021492909206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46b2fd31e9f01c8e7438d2ec7f5e7d10dab28c49edf3134d874da718eed4caf
Date: Fri, 13 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749797393
