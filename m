Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D32D31E839
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774101894; cv=none; b=Cx4mlHpi2QcwCMl7viU5STu+vMrFVLC6iGKf+vbwAWfWk7DnFoZMjSkG+GjNfHVVU/P3K2lls/U1FfcnC0rmZrxomzPoS4YAGWC0oKcH1Z+Yw/sZN5odj53tN47iHhctSIWXrAhUBfmRtfYmO5kesypOFoOe/OjXqsbQbblJuCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774101894; c=relaxed/simple;
	bh=cXi3Ocg1tRsnJKoaOJp3X8urJ6+X5pczaC/kAkteCkk=;
	h=To:Subject:From:Message-Id:Date; b=RY9rMhuwIEaJbHyahpGrPS9vlpuMekR16yd4zJnU0MZS0/d6SnNZugMyOjt8bMwuyD1vV/tihe5Oeeek9hCZ7QNWkp4cDViNs9sqqobzK1kmSlAxNa23OaXY4OsYx/opXnJ8VVG1MBqiYx1Xc20bkaqLaHjS9Z+KSKAVFRi0DP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRQI2Sfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRQI2Sfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1331C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774101893;
	bh=cXi3Ocg1tRsnJKoaOJp3X8urJ6+X5pczaC/kAkteCkk=;
	h=To:Subject:From:Date:From;
	b=IRQI2Sfi9kUotnWpqpnKQ+FvYrWZMm+/Hqqws8rMuB7pv9Bf114UUDnxXGZ644i8h
	 7rSo8Fp8pnOpG4RciZlH0Whu7Q/1VgdJmc7dTwv8TIpfMaHbIMIHYDF6bDPX1vEimO
	 Uxi8fzuhpY3UWkFCy2gthM53yEa8A5dz9AvF+k6Mo7mcNudUJJGrb1FMg4oFR1JFNy
	 O2rUE8VjIRzIt+t4ao/vP9G/z3anXwsVGDPTOEKfZCUPlIXpKPZ88NbXh6uIXcceBZ
	 EcxFUua6XBWjT3nkxWfCHrpqCG7Sgss9HuNnbOkOZky8fcH40Y7FqeDOqgy1VrCWRS
	 cx992pOp7BoOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBBF109447E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410189357.3642.12821111819165741699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8fd5610b063f4c12481f55eaecaa469c8ae5b10c89ec9ee6a0ac4392e6ce1f
Date: Sat, 21 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774101893
