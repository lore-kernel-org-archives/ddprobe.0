Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6569E6138
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720403183; cv=none; b=H82Q1oAx9wMPFiikMoLW6M26LxHWOwurBjJmqVW0sNjBCm3jDmUWP53ZlPxfhgoE7lmYoH2UEZtUvCpKHSek05lXJS9KXbLDdP1sFnQ/t0UxixaaWc+YvO/54GYbkqMSAjWEDLfwiNdLjpUZQUh6H16Asow90pupMEU8xDy4Kg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720403183; c=relaxed/simple;
	bh=sF9+5mnVve5s6Lb/sRUgjbXH4KtZK6NSjeteShyX4Sc=;
	h=To:Subject:From:Message-Id:Date; b=iJZfehgRGVVbXfDvZiuBJ+AStIX99tO8pnRVFd3zhooJBGs8SBdeBEbmKc1fmYlAJqyMjKqJwKh7sCgPzv0Gzvmo85YpAUUE5R4fA8PiCLYS679SxwjMY237G9njggxO78fxsROXj9Owo36Ss7p2qs/4XsBrzyvaseTIFbLIpPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0eP5IfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0eP5IfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F75C32781
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720403182;
	bh=sF9+5mnVve5s6Lb/sRUgjbXH4KtZK6NSjeteShyX4Sc=;
	h=To:Subject:From:Date:From;
	b=c0eP5IfYgFf1YBW/DuZ3/mqTB02nz6aYGSMyRb9RNmQB5FNwxTUBiONSfffr7nRfP
	 hDBbz1nxvMSVFYKHqD/tVoEchZrM9FulHky5SnJFMUp1GQBvqVTEhYymOrO8Bzec/4
	 yX3kmbkjx5VglVu0GN6wRS2eueER828qttIzv/oyNifB914Knu30UnCqpZtwaBpg3L
	 GsxL1ex3HKjQzYd2viNwnFjm9m8K5lYcRNUavCUvJh/MLm2CGUoOwtiQoaEk8DFszX
	 Bp0u007G/1fLY8tiHlsIdwoCO34xQou6kjn9Be7cC51lCYW9SMkdJE4j33A9jgunF0
	 DRAOsT/7ZmZAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C00C38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040318280.7233.6839097543991344008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e370b8103e16975c327248670345bd42890ce9ffa5895ed1c035bafcfe926c9
Date: Mon, 08 Jul 2024 01:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720403182
