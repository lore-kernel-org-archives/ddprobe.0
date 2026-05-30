Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84766311C36
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780181074; cv=none; b=gHFMFykObWrjpdoGk8AHonGqP01Hyxif7W3nKFc2RrrjBtWYTYGXVprcujbkDFZDAowPvbdvSCk+m1vba0rch9dK+98f2k4I48idFEKOt65gDxn8FXtz7/tr+E+v+S7PeHPBl8H4irDArCUXNiem4C1lMbRHtXFEgeqWcWiv35o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780181074; c=relaxed/simple;
	bh=hHbK7kHbn+jJfvuQ4FLvX1wrTU6qKRmymU2AbUuRNxA=;
	h=To:Subject:From:Message-Id:Date; b=pU9guQAwq+cDAcHNvKJgVgaSOSm9aIi83Scf/9SlawEt0ZRLKbmIGWn3BeRg0byyEw8sM53T13FYZX0Gq4+3a7X8/EAJpctYiJLUzTik2SPUc6iB5/ymx0pRJTWPkXlO6wTMBf+3YkttefRQBPZHFhzS2OGchbVeUIdPdlWriTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7oFaMYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7oFaMYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32B1C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780181073;
	bh=hHbK7kHbn+jJfvuQ4FLvX1wrTU6qKRmymU2AbUuRNxA=;
	h=To:Subject:From:Date:From;
	b=M7oFaMYTtY3QApdaJ1yf5Kl3aUSYSwIPiTkPgjt0pz9jlNt2jEI9XszW+pmsKvcWU
	 1enAP68mt6DDhNkaEj6dbifkmhAeBCsnuMJEp1cUMs6QbhK15BaHHreRgpZKPNFtG6
	 YX7YL08CN6Vc8SN/7U895yAmR+5VJqBpJ++3z2Ort59g5/X+u1ZnmR99diiv7KgJbR
	 E7MkFiU96VHvSD3i9fg2RDoUpJDo2GBx/0/FCq5gb/cKbA9tFmrf2N9go8o5LHmCDK
	 XS2FqIxiEt7++t1ZlBlMGico27J6dLD+Ewnx/IJEB5nbvsesm3d+Zw8ULXm7FZcR3a
	 zMluNVgodHtpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B719FCD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018107373.12265.1773864761808702661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf350b930ab398f6365247c21b5c3bba9ba9f9c202a11f7fa93f22e496c0e26
Date: Sat, 30 May 2026 22:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780181073
