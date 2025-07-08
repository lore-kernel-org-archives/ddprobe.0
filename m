Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8FF256C8D
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751967595; cv=none; b=LCAQorg/cebKnXCBQfPWRWyMEG0sbaNDvPnqK/iBhf1KCz/IHGCmYphLLs0JNcRDKZX9L57dhOcm9IMzQDNS1jFfHAyfq/tFawJ6vYnIUzZWZ8lCwOj46h1zcAtwyDkF9j+iAmrOQsgTb8bEb4bn93uStA7kfXcIcV/SdSvdyIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751967595; c=relaxed/simple;
	bh=QzN7SODEpbVO+3xufUrsZa59SjrkJ0fgDzmAcASoH3s=;
	h=To:Subject:From:Message-Id:Date; b=XZK+Sn5g5x4f0P8cqmjTbz3zvS/9EkJ/2arPCTuipkGK6nhYfXjNja7YADBeyO8Jkz29KE2+4nAcgBE9h1GnqE9CjWsTEdwtY6ceow5Iy5FUK9MrGw4j/WR29jgA9vMj9aG3fmWlzMtJyrDpAEVod3YRq69Wj/e7US2Vq5GiCvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Urbchid3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Urbchid3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20D7C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751967593;
	bh=QzN7SODEpbVO+3xufUrsZa59SjrkJ0fgDzmAcASoH3s=;
	h=To:Subject:From:Date:From;
	b=Urbchid3+rjAyoA3Y9pxWu+qX29pge9IDvC4oNaeD/k4ixIouSNnnbIsw6c4B5ymP
	 eZnohgGrVeTxbivhHbYTmiMfugXHYf0Lk0IHHhd/OOzy2FAN/TnuWSf16KPaHfpdgm
	 cdaVgKyWeD2G3dNuCxgTPF32im/3Mm4XiHWMgM2ahBS8mlhc/R/82lqMzg8/4ya74j
	 n5L1tXBOgpRCn4ThKLPsyia60Qa0cHhqr4lReLr5jltmWmNMf5/6cOLJ0PS1NInEhE
	 TmdWlCgCPso6dZlRBvKEj6Zgm+EYGd7rmM6C1hmpQvfv4GhtZmii48oP+ipMG7yXJm
	 0a4wbS6rLd5bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7DFC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196759357.5319.2894190226449998313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e1c8f7a71c625880d0812ce64aee0b9743dd0d45d271a02185eb87ef8e2fb3
Date: Tue, 08 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751967593
