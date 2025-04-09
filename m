Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445C526156D
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744205394; cv=none; b=Vy0pNqmmfgZDUXyxRClXincBFbR5M2bDyknYmMuUUdggYT8ppI6KkNMQl46kKhsIdn01BeRGz2N14MOlmezF24b8yO7u8QJwlFbVboiusW8IzXV3seenH/oxza6FaQaER7ne7+q7yZueRbLnUteoSfDv89YOXMCy30Vbx8ZH4jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744205394; c=relaxed/simple;
	bh=P/2TAwDr01Iwye8kD9337m1lFJUw/qdmexNSsmG3NR8=;
	h=To:Subject:From:Message-Id:Date; b=uxjKK4AUGI4PRXdPIWqq1Be3cm9ltngoC/dBlDQp80trwm1N7GoIvwlS3DgyeiO6+iezy9vYsrtxf7zd2GvbDawk4k2FizFEBsifYYjT/Ngl5+2Kv7NBuLOUfbalQ+gtFxhsJaLPI0iXi/BuY3onnFLpMBKqy7tr8EC24lAqXas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9pR9ziC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9pR9ziC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D4FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744205393;
	bh=P/2TAwDr01Iwye8kD9337m1lFJUw/qdmexNSsmG3NR8=;
	h=To:Subject:From:Date:From;
	b=C9pR9ziCCvkqPjE76AxWkR17sUDBJfkEnJLLXbyCNTgGccb2ZU56IalyXx/AJV1Cs
	 RxVwg2nZuH2sdAOGLUZTnOVpI2IaspppxudDiAvhJQKZGL6TdUqJy4wqvnC9bwEshI
	 qD3RR6+C+LFq4vuPDjd/mLGCmCW9lx7Jg/KUtul9InSQOHNwJrqFYtPSFdCOweWlg4
	 pIL9qTHomcYUzcBtCOihw0BVIDJ3zkf0L7uyqp8o7FHZwXAM/spIDTwB1kBs9kxu6p
	 JQk5UlUWiin/CkO/RzlhSan9DV2FsZm072NflSWAi9yAjjGEPP6uwqHEgRG0sOaFzc
	 n580jLcm2SKNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F9C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420539359.11314.17785033051779041772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f326afcc3af906fc8c2c32c2e7d6c99e11804b04c66c876de6c607d1867a55e
Date: Wed, 09 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744205393
