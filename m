Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E51800
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730610954; cv=none; b=Jas+CzOWtwbVcMwBK/hH0bifFfx3HH7DVkRcSMCyAlp0UjQbXTsZiG3u8V2xQ45J2GHgcqRn6N9qCiXWhjcgmECiRKuSebX8MMENsziHif/j9Q1kf60AvrpfUNV/qgWjgwAg73zCJUTAKuXQH6BM3ClO6qcfnacb5D2m/c2YPHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730610954; c=relaxed/simple;
	bh=JmdOzQLj1x9xsVi2b6ZXnrct8uh7vyIKG846MPNVo6Q=;
	h=To:Subject:From:Message-Id:Date; b=OR3jeRHlMsVIZZ9+fVKkpDQipz0J+MoWtZfYoz70SPiBSUo0HhiCMk1TfwFJ9UFby39eQeuEa+RUY0jWToi8XcqiUwgvauER3yrAkYcW4g7fSQLpa07VmIR/eA5OKGnGKQGerHa4CCnFrHFI6J7Q7BALyKd5YUdFYyRYlt6nAG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODQ0ia8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODQ0ia8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5694C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730610953;
	bh=JmdOzQLj1x9xsVi2b6ZXnrct8uh7vyIKG846MPNVo6Q=;
	h=To:Subject:From:Date:From;
	b=ODQ0ia8yx0C1mrWcpx7driX4mG4d7yf13wLsyupU4+avSqs8joFHdGSliNSdAI0oE
	 U1hvjToFAPFZo9gEoq5o4vEQhqbGOw+6+THWycus4T5BMVJI8U4Q6JqUTSPpNO84t6
	 /oieoLAa+YiKL02j/3XTxz3XNCSdGfe+KTzW6uxgO6UcQkJYJoH8xFJUFGnQ7iUxPA
	 QcFyw2tRj3NMQRNy9GdwOq0gON0+M2z3kUKyt1FqRjkhoBUlP3+/dQzTgSpHVYTNpZ
	 nJhOfGyTysAFeZ8o39f79nmxYjGut5Ncv1/+2klA0nruDy//F+tQ3n3cIg1AfMbvnA
	 axuMISYS7pX0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14B1CF9C6A
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173061095367.9098.11230380729515054680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3022945b112e2572cb1a576726c91a03a818c6b34f367440d0159a748f0a1f31
Date: Sun, 03 Nov 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730610953
