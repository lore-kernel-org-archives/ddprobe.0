Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDB716EB4E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720733243; cv=none; b=iCYZRAgf0qhyq/YWIq1QR2EHoviVfUNK75inwioNEjQst0b5BdV/PhjcHsze8cHOKUWonMkhS2S4UgpWDcemsQqiA60FUeoeRbYVG0c3ngHIeh8xruS1mHh9kMF4nLvjGxplTIGCSMrKEOMyM5sGDlRsRcI/skKUcJr+ipD6eFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720733243; c=relaxed/simple;
	bh=9HSe4t5BoB7IxxKwvoWdaWZ4cJ4p3x2BNug9va2K/hk=;
	h=To:Subject:From:Message-Id:Date; b=IIod2a1Nv4w61R+WaeZgLwFz9Na5AeoakuV1dMQM9clkl1KBJHhz1BkHbkF+d+a4mzuSQPz1aEL0Sr3oURGnrawDLzl50OYGs02Ds1dYTkdE1MWjhDQ4oIzmxkiwRw7VEaTSx1GQeplbU/exZMIXXGBiXcFUCI+zDAwiQDuxqM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS5HBlGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS5HBlGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E718AC4AF0D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720733242;
	bh=9HSe4t5BoB7IxxKwvoWdaWZ4cJ4p3x2BNug9va2K/hk=;
	h=To:Subject:From:Date:From;
	b=jS5HBlGIfhw8KkBa7goUNqIY+VzwgMiJWrQkxCS260nn3UzyUvXeIhVILVdowLn8o
	 LdUvP05A/nzs5a3V65uiBxGEP9jnEHdKmafKTcsNJ05psLFu9t/A5VIDdJxyARjw4h
	 PbX37zp5FpbXLp233aRthTThKHpVfGhkFGbEwGfwX4IuJvqZM3taTwo+y1QIKQRAxS
	 DvFJmFggjzbMaFmr1V1wHLeZqMx6R+6SFSN46ef7kfUbTaaU8FRKMOcbcETRzzo7uk
	 FdRMk6vOPTbyg4y2vhaaNjSebt40pZpdQZCNLHPoPglzzH4auTyLAqZpmUJpwBTHqo
	 WWit1BuEG+UaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5AAC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073324282.9432.13082622248540589988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657145eeb0e29844f536835c46695977144a7e905625375a0363a0d8b8937ada
Date: Thu, 11 Jul 2024 21:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720733242
