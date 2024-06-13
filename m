Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBE0131E33
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 23:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718321303; cv=none; b=E2/yjtmuEVwyloEjQNcp+RzhV+BDJSX7YkohGx85ZF4tg/87MsM64ovejQk39kLsO6wdQe/3Q+d+zElw6+jtmaqykcuGFKL3g6B404O57Vt7JzO01gd7hePzcyurEriDWwhhzmizwyL2Xl53feePkSfNlFl9m3A8qFuBc2HH8LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718321303; c=relaxed/simple;
	bh=HqbwReSoJDHKm3id4JoBZSuuJf0vNMZlNcYRWNFDK4E=;
	h=To:Subject:From:Message-Id:Date; b=bWD9S2A+DosCJE1czPfuxKyg2vd8MKDo35cQvHvm+JcjuKJmabx8wgd5Jau81qFUXNZXEmv1nFKFs8goRvCUbJeuPwtm4PtCnyvIMjAYnZoXuaMcagYTvS1cfhf9ToJAl5DS+vHJ9WXwfTH3t6QQxB+bJg7ax/NgIWM8/sj7EpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tulto5Ov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tulto5Ov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08E9C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 23:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718321302;
	bh=HqbwReSoJDHKm3id4JoBZSuuJf0vNMZlNcYRWNFDK4E=;
	h=To:Subject:From:Date:From;
	b=Tulto5Ov0Cx7q62vJm8OnPhWHE9p3N+kKm6APSqkm2nAztXhRg/2l3izDrKbWWHlu
	 M60X/9FO+61h4IRy0ZaC/jyfXAS5iGItiJMEGlwr5hIA/IzIuekoSPzrWTI31KkFlJ
	 Ni3Ja3Jd03RNo+s3IJVKjTsHxaTc66y9lW0g5UvpO1j3toXiQhXyRwyP1lYRcc7gL6
	 6NONoM4FCDVp9glD6C8NJEOmCG5UxPfuVB04dRAvfnK219j5yebDAGmnpSsVN2iWO7
	 OwsTWknLAZqw1xbyOotPtBpaJwuQxWjBPPg5QZzhr2DSvIo8BGylZ8jPIqfXuER0Ub
	 t+OipxuS3wBTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA407C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 23:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171832130281.7805.18106312824190009068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7e6082206596fd3271028e56cf568089148e1fa47f3546bd8f6d0641d88b8e
Date: Thu, 13 Jun 2024 23:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718321302
