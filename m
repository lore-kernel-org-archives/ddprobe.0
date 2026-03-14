Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0541F1DF970
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773476694; cv=none; b=by5Gmf27F7m7e2IV5tgv8HRK1Qs/JL42yue0Irabf5qZxaTleN88iQmIeZ1WewiRqbFxWebANrAYuYxNfkEJcBsYVRv3coNu/0z+PocQ3Dwtu5Yvu8gJJQaRdtIgCnsK/KMhl9PMXm5GctSJraILz4Br/JLqfY1aBFlxXFwh18Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773476694; c=relaxed/simple;
	bh=rvjetbp1VRP2P/iGzdQCoUlcA3qmQgHkxGaS62XJTco=;
	h=To:Subject:From:Message-Id:Date; b=Vy2W931Zn7gPW4ZamLMhMsT8Q/StNn8nsGxZX1zUqLqL1MHLADuPy3MGh/AkqNWgdH4I0Td+w89ZEUvG2lrXBfni+FaG+heCNPRkAgHVkKcrTbMNZyYcGPdNUbKqpqp3f48xwCGnwrWTKZU7b9JTKYROmx0qn4KQkDRSeLGOgqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk/7wgZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk/7wgZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5FEC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773476693;
	bh=rvjetbp1VRP2P/iGzdQCoUlcA3qmQgHkxGaS62XJTco=;
	h=To:Subject:From:Date:From;
	b=Lk/7wgZbF4wC+drzvd/aX8fiyTqhtliae1dY8gtXNUc6Tt02Gv3ISBtL1UUvY3Y+Z
	 4HvF6bozr/WBz7lPoBby4DXhYP4Kx27khIgDlPJsP8AGLMJbgtIcSnxg3SkNnfFQh7
	 8jGU5eCj5ajMGO0pL+1eNiLTzi7cXN43LqPuBhqB4ouel+2TecH4U+YdQG1jDvIdQ5
	 3Epr6ne0rKSlNS0sIwPHt5G0rcra4tL9mxJej3KYHvsZZ1QaDTUDOuO9+R5nuQOgdl
	 t7LsbsY+rt/hSUMp2eRLjHw0SoajkPGFGB9H1efl4sot9if8kzn+FvJFULrZ/2Kp2l
	 Cw2Luze3p2p1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC2105F7B0
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347669358.25079.2945030563718009294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345cf65e0c86693a6aabe9a8c803c80fcb5cfa41cf992564960dd8cbfbe22130
Date: Sat, 14 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773476693
