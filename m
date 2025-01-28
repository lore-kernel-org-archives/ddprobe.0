Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4191718F2FB
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738093554; cv=none; b=GfWPgtFZOWsyCrcGtXbLj9JqbQka15vyNKiVUnNHpQH1aObpXPWYplc5n3ul8LqrqY1mW9DWUS/32MD/AHnx65rmk18eYdyIC+W84JsasSYwAkca5o18BPECAGFR63GEIX/FI5qdIunPUCcm8l5BpwntPt2HDpmGrSZh6qgtJ10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738093554; c=relaxed/simple;
	bh=gzPgfUHEl6tgCLLANhSTHCgB4yGBMPHpRXsK1iCjnxc=;
	h=To:Subject:From:Message-Id:Date; b=su3vDe+BVxaq/FeA0HUjDmzrW11+R2KliEUfPLF21OFyA/QALlU+JlLXb6wPAgHdaWyslyjIh0ek96iF69U2OJSOe5W/S5vbhHX43Gm/qlHrRtofSwOlZyABoyQpgQmW9Xq/OgYAYwY0J1Z7HCOFBbCqTUOnRfhr12Gkn4zwSFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxjWT8GG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxjWT8GG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC81FC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738093553;
	bh=gzPgfUHEl6tgCLLANhSTHCgB4yGBMPHpRXsK1iCjnxc=;
	h=To:Subject:From:Date:From;
	b=ZxjWT8GGz6Tg8OyXDLA4Best+HVL8pwlzZwRNsHSZPCTpf6BIrSr+pDYJWmq9OhQ4
	 ci1xtcv+/UjOboIIt7oonrM11pulEZ6IA8qpi5nePZbG8BQufII8kAiqNPcXHNBx+H
	 aOS27OyeGg66o2yoVa/M7xEEfUM98mGd3roP6qN6LNJtm+CV197dmaprM+EJ2f2GpZ
	 MhM/EDZaiav7Xmt496a+7p9rOlrV7w0O5eQeM8GDxNBFtABVl3a3ofG49KpmBTdbIy
	 mUJU+Su1ZVlrE3vMm9dg6PZXgMUkxU2H2h8ea9W2T3VE2+0CrBhczafaaYOJcNh5kA
	 HEdz6LHL4wT5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92286C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173809355359.14982.14158205558901686312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac20937b4938c5d04bc3714d0acf2ea50b3eac177b94d0cdcedd97e57d17631
Date: Tue, 28 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738093553
