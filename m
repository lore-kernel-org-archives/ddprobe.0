Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F66B181
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714954343; cv=none; b=KPgG+Df3WWUcKdmi+FXd8LmU3DU8P0Ni0Dbg9KQInjZTBYATT/679ijAVvjbq56lVGkfdxdMKeVtlWTwbCSw1HOV4V4QAEhOFrapn1wb2HLDQgG1uWexSccbfvgt6TEQG01IbxV/1yaG/FKJ+pXbwvCmfJ9g7jni6UGGyszqcQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714954343; c=relaxed/simple;
	bh=e4IZVzPkRdXFjQE8ZMJFf50ttXIXbLuzKvUqbOW7hoI=;
	h=To:Subject:From:Message-Id:Date; b=Jyrdvgz36iwK1wjZfuUm6Geob5X5MKl4aMiosvytkM80/kcUqDFQ/GVkzyYqYW6j4OTPyizsHo0tj3FYlnGkdvisIYDfdm8wlsExbQF12DbRJ0rDYYXnQ9WLT3Bt5tTLkgSgh9WXRHX0xsy4D29zoxqCvcfsiC8uZR1f1zkURps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFUE59Ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFUE59Ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC8C0C113CC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714954343;
	bh=e4IZVzPkRdXFjQE8ZMJFf50ttXIXbLuzKvUqbOW7hoI=;
	h=To:Subject:From:Date:From;
	b=TFUE59EaE+SZw+oFrd710vV2li0lRx4ZP8X2EElTQJowB9CrdJDQcEK6zlKht6L+g
	 hmK3ux54AGx8j0zzE0OpwZcByG1qyUsrnCVVmLcQRQLzYVCGcTKsyxC2vSPPe0EyXI
	 F7yk2mnRkjcpAXwB61//qqh7M0nhlRDy0IHpgW66AeLCOJMHLvcpnpID9sZyOb4qEy
	 oywJRuJgSc1wG2w7FdOP2pOcr4RNwibfMQT/auK1ymqk6uWRggJMja4w3SQG8sL59Z
	 vSKCSDzB9/S+TN+jH7r1HYlit0c8jdx/b/WNzcAIIZ2+wLPSCKC5pwVfZnueexeL7x
	 cgObAF7LyHdOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5B11C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171495434283.13895.8986021627011112179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5318d61e0c8c5f3d41d9003f97ac51bb72b2cb3a08d6fe2b4dd8edc01ebdaf0
Date: Mon, 06 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714954342
