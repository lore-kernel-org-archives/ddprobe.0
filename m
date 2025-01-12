Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263AA46B5
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736725554; cv=none; b=Tyi4QkTY6Gm6EByZdoCZp8Q6b+nQPmEZh3UdCSVwxYSoEBAm0XvOkINl2ox+V0zk1AKoUJYctUdroCigKy4jenycYW13Vxop7X+QyK1w0XRjSRk49P1/+lGmHzOvdTtzm6knA0PoygkbtdWS2RMRItytNn1F3PPln8vj2LuOY/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736725554; c=relaxed/simple;
	bh=hvN9nZV1hF6W5+X+hyEvMhHJ/N9N/0kdPur7eSsXsWg=;
	h=To:Subject:From:Message-Id:Date; b=Qn89vECBWVOMPDwOYXaAZRACxAFkWcFmxIthGqco1ymJIwCh2Gb0huYVUmo7skQ/AM22T5/DwJb+po7My2n66e376JtAp342nfAYVK+zhbuWK00gob9QNV9ymkQdhQ6qUPm/qkS1p5j/3cOJ4vQxMtt3v1Eqc/IWZjcjJKGIt+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6CXQgZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6CXQgZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA198C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736725553;
	bh=hvN9nZV1hF6W5+X+hyEvMhHJ/N9N/0kdPur7eSsXsWg=;
	h=To:Subject:From:Date:From;
	b=e6CXQgZ2IklFM+T+BF10gfZgot3jWV6+4z+b7yN5jiVVbwPcgPKrzsLMNKh8mO8mz
	 jVjmo/O+xiivmvWGfEa+CdyUmLo4MqCLKTQrZqvVse3VcnwzAZGpZ8Eu/QswQxf+pA
	 9zyx8gGt3h2CEMNkXJWNhU2EhI4e4GT6igDV7lr0Vb3b5WtcXMMiZ5h889ZR/aj8vy
	 Fa1uL1eC9qnV1MDg0UIdApm5EySD86t4K3tmPlqi18vvCx0PTPqh1didKqxpPOJGYj
	 RZTEj02B2FtYIlSYMgou6tfLrfb0xwkFnxObMyE747V58ABasTxJQyvGEIU9v4Zf1U
	 eTKThp8SeS9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93575E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672555358.29186.14616287977175086183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47eb263729bde14dcd47b9137b99a0320185d19eef26865b9edec062c17fc5a9
Date: Sun, 12 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736725553
