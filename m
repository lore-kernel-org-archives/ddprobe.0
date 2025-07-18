Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F12C10957
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752803994; cv=none; b=C0xYUIzJ0ns8IeQuWqlz0mwBQRw9uptE3p3/cRxSaMQnwy9jtO5OtvzTDeH3a0F21km1d8gb89z3k+lBw1j1l9EQxaLDoqD7j6u5mC3Pt4DU1s3qgEPdKsnPUXdIpIUuWEJBiY1F2bYADoF9P0qdh8JNFoP30y01v+bhRcCz2no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752803994; c=relaxed/simple;
	bh=8OvWWTk59bDR+IXvsVPHzaF41UP4MKacr2/8cbD2D64=;
	h=To:Subject:From:Message-Id:Date; b=uE65WqRnmxPcEC62K0iLaF/QU63M14gTXONdE7EXdRKZANawxNS1wILTij406Tq9ItOSlWcjX9nIxqWtVVB8ZdqMJJkTHHSyfb88Uigwmy97o1pRNk6ducMP215/dsh0U8rng2z1p8OnJYHzJkH0Wyxv4YbV6o/w9RXE4m+S4zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJUCrRhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJUCrRhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEA1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752803993;
	bh=8OvWWTk59bDR+IXvsVPHzaF41UP4MKacr2/8cbD2D64=;
	h=To:Subject:From:Date:From;
	b=iJUCrRhqf9xDW1nCOd78fSPM5HUrHAmCteQAaAtmxhqnQO/0O0BgMsMNu7ibmT6pT
	 TTPqXKXU6D1U4D/jdJH9DN0wsaCcCxshVl9n5JNUhRIlVmNyOogq3HUEV2gN694Cax
	 OcNIwwYsMy1Sfea4n6MSgFkTTCs7wnnkAOBCuMREA/rfzteDr0TvdY0sCIfpHwMqWI
	 InqxclCKruDOMswaSzFyYCMkXjDAxTABqh4pTbFANZhU1BlsqDo2C4EUtgyuv/0yNo
	 8l3akDwlfYpmUyip7JlJqJCAsyTt4zWDnhpEcCV16o5rCERSB381BrqgsTkkGnajqy
	 MlA0uDPmooglQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DDC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280399357.11859.16446908002589653431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe09899b05a6780c0f1373c0758e8e725e455ce5b5151cf261080a6d69b1f95d
Date: Fri, 18 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752803993
