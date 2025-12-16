Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1992E0B77
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765862575; cv=none; b=ISMqd5EYevao19wefwe9p+/QCsE2bSrWg/tYLwHkHhnGF8DeFvAj+BPJaN0HBEgasZ1INbppM6pzxggmy/+dfwa4+B2HUxJetELoCYiYds5JMi04DS01VIbYyd7uWeDcrc6nHfOP9yIIp+wMNV0MShoLrzWF4wjSng0bIYmtBz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765862575; c=relaxed/simple;
	bh=WeCPG+/PZHrV2EkmvGU6ZZ0My6AkAHDKMlW4JVXhchs=;
	h=To:Subject:From:Message-Id:Date; b=OeBWiOkyDiRUeX1YPgHf0XDOSWYuA05hg7OybsSFypPPf473lMhWiGxf9Mev6+qRRlCuhidiM6YLVf9yBqCi4msbdZANpj8d34bI9d50cVw3EV9DgqYOEbVJ9FYPy7oiRAj0boRfa7qwBsJ2KVSbHdIE+FDXpTZpPlH+0ecuiTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MECF2hLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MECF2hLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765862573;
	bh=WeCPG+/PZHrV2EkmvGU6ZZ0My6AkAHDKMlW4JVXhchs=;
	h=To:Subject:From:Date:From;
	b=MECF2hLFgMHiGEtBZVWtZcgDqsTviDJ0Kmy2R2KA6mhaZIGFlH+65X+x8W6SYkl+u
	 wKknpp0/amn/Kx1QOYXn45ja+0zOt0hyKi/ROrC1TK2lgN/muARTI6gshEACP8ANjo
	 AMMrCdsm+Tm754RLOBaqR4kK2+BMmk6qsjOa1NKYqhm8l9OTKvpnoFAG2jcRhOPQ5G
	 mvNVQwh/1BXzUS1ZYRxejDsmspEUqNfef+v3tKHl7rm9wmY84nZq8E7UFLBXZOKRpb
	 39hSZIvRqCH/HkAM5+uVoIKLqCy/DE7rl47kvrt+bpqU/q9ihLOVYuSZsjj0gGYxaL
	 oF+tOnogXTaDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9389ED5C0C0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586257359.336.13513289445601251209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1795871b44839f255354703ecfd7f91d3755ba9f59a2f4186fdf75d0b8037132
Date: Tue, 16 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765862573
