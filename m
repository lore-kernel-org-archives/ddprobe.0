Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D756E17C8
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712104696; cv=none; b=qIjYwjj7L4lFk1YaHUfPbJQaQqz1jvrFrKNsVX4NL1a/3k3D0O48T1K1023iXRma3FQHqDgLzgPd4Z8HnlG+8FhgFrsqNR4FfTDsOo4OGkkMJkokeCmZzlrLaxbrEU/RnxhscAcbbIffDhKrurWyZKANZCxt4reTI23WWvPu5Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712104696; c=relaxed/simple;
	bh=d9SdZb4PeTlfKgyDj7gI47nLuTl7ZPdPwJINASCaCjs=;
	h=To:Subject:From:Message-Id:Date; b=mkaPDmekdD5O0cSW8Eq3bbQzEqKTLEp55AdQAx8qPztZuelwPpXv2rGKW9awxCfoEknB3DSkRM/j5dmqBTwBJ2WRcvEd5oX8WWPoyOoVW4Agou+oQ/FjHbk6RrJ8UUo01G3Sg/dkgXSHcP+HqleqA/6IrNoTLGdcL/iyoQTrwHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiH0kuVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiH0kuVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 743CEC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712104696;
	bh=d9SdZb4PeTlfKgyDj7gI47nLuTl7ZPdPwJINASCaCjs=;
	h=To:Subject:From:Date:From;
	b=aiH0kuVR9iWTWfvGv88AWekG1mL0qPKdI3vpLwZ5ZOo0KhzS2FeGHUn9WGnOQdMaP
	 VyEvVTJKo3BM1ZAZyiKO1Bos0Qgj15OnKoIAyyMFj85X2rDGbi4+wJsYaOLzjPmP+h
	 or/45DUFSiwO8YnPe32PMpMeOrRIPPGB3eJhM7vjWKSfw5Qf9Ook0l2DO6V9epB02N
	 pA/aKVgNMWjNlZa/BCjRQmXU4wAArHFFz11lgSyuLm9+z9HJh3rqD7+eLoM1/st7FV
	 887tBllkMa9ZDWQLS/MhoZdIc200oxxBiN4Awk9ctLFtSYUf5s3HKUThUOFL+XkZne
	 mOFetXonsJCjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E69C6FD1F
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171210469639.10549.5697980013999923174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9613d7b144501f58ee610f7dbf48507a5b3a2697d3dd66f20a05e7c329abf207
Date: Wed, 03 Apr 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712104696
