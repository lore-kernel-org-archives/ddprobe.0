Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A42433993
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746947994; cv=none; b=J7w4ndBfj2Rac7aFjXM6aW/++zr7jyDQJiikBWLBdnz2VLFzfHaYI0QLS7zPU9+5gTv4880ATRE8yDcP3WmjYDNHUIH7vKiO0l4FI4lG/rpnEbj2+7h7rgcSs1CqrXx9g5oTDtnpHIVrcmO4NVggVrnkVRTiw7lyzzSQTbUNYHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746947994; c=relaxed/simple;
	bh=KVjUDkbndwWBE309H0WSe+n2cyKDOQGsPxl7toz3PGo=;
	h=To:Subject:From:Message-Id:Date; b=bLpfFuUBuspdmoQEw/mqv30rNIpm3MRqnjeSfTw8zVzU0DUr11cDFcRW3p/5SSnZ67hgtZrjAGEbo0VG31wKLzs0TUIvGv9eeGlb/Cz92y2ORE8HfkCYFp190Geaz/u0BTB14N2N88fLmfHHmNF8NduokYQHBCaoDS2PgAhstGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ojpf1B41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ojpf1B41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A923FC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746947993;
	bh=KVjUDkbndwWBE309H0WSe+n2cyKDOQGsPxl7toz3PGo=;
	h=To:Subject:From:Date:From;
	b=Ojpf1B41WGY3jmemlwUpbH59PNH7+Y+LCXGDkG8KOhwkzoXgmj5E+qX+wD1XIssAL
	 BCvKPZ6psYVZELQB/bLPxtBaD7b+GrsZRRc20LspoAjre7ARrBDq2lGSUK4KTDf9pG
	 0KyIRtJ72+kP1Jb8rVioXdQsYZFwn+KVdbbNSYZT+2gQF2MbtD+pswPt8fjCXAXSxE
	 Fv/4BRmuKxBTfjf0bn92zZQUH7BDOIqQeQNGAGL13l7VCklkW/bObuDL+zKJz/tC8a
	 Yru7c3LntAMClXNImUL6uW3KVwWojcsMXKLOcrMWYzjE2Jye9SNIBS23LrdLay7UG9
	 umPA7B5u2/mng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FD8C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694799358.3531.11809051952144363034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4139d29a3aa8f82ca1e807a012cabecfbd0941d6e57bab8c38a99bbb8c411f
Date: Sun, 11 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746947993
