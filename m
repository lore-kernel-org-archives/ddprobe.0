Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E4423B616
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762726794; cv=none; b=QAwDzJixoUsI4uOy8ysZqjOfkJ0IAU+VYwE+hhhsXvknnf/hzgblLFZKZSg4sjx/Idh1DdxnJ367nTYjrtHr5KYYNxrUzP2TNGEgeHXMGNpwsInqKjtz1T4ni54NmStsbhUXpQ2WhbM7mhGqDU8FjeESWDwIN1uyS9Td873BB+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762726794; c=relaxed/simple;
	bh=VymJ21cBhdrN1GRpWxpgFRNDTQXAFJy1Zt9ZYzIJl94=;
	h=To:Subject:From:Message-Id:Date; b=VKUv2BrkwtwED/QEaiMhg9kt0YNLqpQjcwnwrNVoyaWSgnsEJOKyigJo2U3BDNwdpRVxcjKLhkggG1Cf96rTsI8WD+VBxjJYIqv5EKqq2sao4iefpiG21LBkIg0LAGfrquXw3kmQ4owC8YSPOf/UliC0cb3mENMcR0oTUhaJll8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rt4XT1lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rt4XT1lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99498C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762726793;
	bh=VymJ21cBhdrN1GRpWxpgFRNDTQXAFJy1Zt9ZYzIJl94=;
	h=To:Subject:From:Date:From;
	b=rt4XT1lkkjyMhhqc+hGr/QXe3/k/Vz/bOtV5P2G9A8vnUBBkh2FCKkBcmP2xCzk+d
	 /tAkowwFoo6fUFhDQFybPpPMOQGEtgfhCfZ2LrEga4De7lwc3qdWQ2gz7OaPo9Fhz4
	 sQdDPaafey1rEdV9yIhXsa0xO+uRh7MKFXRjORrzLLMLQe1lQEm8i/CS2RF7fWAhND
	 yZCwt1tWpL8LkpyTdn7f8+qrI9o4HktPFjsf/dtV48XQKYnsciexf3TGauoVrztYKI
	 AtZejKkRSSyCd8SwHUhcnCz9S6v3dWZLx+X+v68sAQ12wm2Pkq9QCIze4OdpwBEQQS
	 6xhNzRrHJnBYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E880CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272679357.6978.3518496741005284587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7fcf773f05efe00cf8f635c56b5fcf0a4dc7b38073ccbecb20687172ad2f31
Date: Sun, 09 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762726793
