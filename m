Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600321990CE
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719239543; cv=none; b=fwOgMp8VT3UNIFiW69CIlZKMCOy1tbGTHFOd8Dfx4pCM8iJ0BeNcgC6MRjC/hj6OP8RT2Wdzd42yI9plhAMpdg6xsX7nCyzP6z2gFsteYux5MqBZdXfkC+AB/54Gg3I63hoOo2gX5SysSgfPMIZ2PNhBO3O11tDm1UlaBbcJjTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719239543; c=relaxed/simple;
	bh=VzFwRV2QarvPKyC9focQYDmUs2CJSz7jMKviedMBeUM=;
	h=To:Subject:From:Message-Id:Date; b=liuG/T289gIeysKbgaEzEkWWDBRmTyIJ9WyRmSFGS4pzjs3Kd5wkGVlnUwgo0BiYmkrW1Ug/zYTDhOhnHu4OxJopqdL3vIMV3Z/jZzOmuLY38m5GC8FodzLOMlE0BvLV5lcEkdUhIWrNsm41ffLD9HZR52QAxvHsCv2wx7RbdmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWMPdFLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWMPdFLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B69C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719239542;
	bh=VzFwRV2QarvPKyC9focQYDmUs2CJSz7jMKviedMBeUM=;
	h=To:Subject:From:Date:From;
	b=jWMPdFLOFNMjTPx+Er6z7dziJ67CB+SrALOk7ffS4ZtX9bNt0kfbFx6QpA2Hqg0h+
	 URePGqlc8OU+q2+n0kQSu1SnOskWzfM6k6+lfk532qwfHAZa1ndqesFI8eEMfnC0XH
	 cjGnJb3aOMCM3olUVVOiqS70rGdqG2vCyNtXE30uLQg9tcnL1+9j25rZ8vFkhuZLRr
	 ZbYZ0L/EJ9uYsJ4tz9VJbzEx40xzUCLLh6r6J8oB85waT3vvzQRBDhXnTE+UkieeHJ
	 VrBT+fgE2PByOqjtVJ/M0jSifiLK/3SNbOnlLQEHDVMADhDsg9sJ4YiSFQFUezSHfv
	 DnpIEJyw2NKog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDED1C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171923954282.28071.11550432163536480192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ff10543ef4b01d5e62d124b7caf383accef1e0c64fcf385dc70558a2889fc8
Date: Mon, 24 Jun 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719239542
