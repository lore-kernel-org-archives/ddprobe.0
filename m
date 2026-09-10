Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681DB36404E
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789037434; cv=none; b=FuqUPuu9wrqHYwS8y+pmT8fpHqnN94JTDId/PLzK0S/3f22Bb1U/jHGVcpWLMEC7xDxWmmA3VGgg1K+EdwSImbESvrN9AEC9gCPgp2B0/7615sI6NPqG7QR6wvA3Og1Cffm+jTi/dvkvuDSlScVBnPMNkS/WhNSuRca/42RDYps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789037434; c=relaxed/simple;
	bh=7NOJwms/FWBQF7e7Usfsx4VzCWSygUMgCncJ4Kl4PNw=;
	h=To:Subject:From:Message-Id:Date; b=XRM7CyirvT24ojEyZ6I9EvSAkz9qO6sHm4MVHHuNuSIzeACeHCSNJcWZn/aTYV4+w2Xhf912++zGmHnkSHPTk4YgDToW4klKxmtfu4x+joks0NSGdlnzt14yJ2Dw15rVrL/esqJnhwVgEf3zzZqfjx93mixX1m27F52WLOE0j8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P396ypv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P396ypv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8128C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789037433;
	bh=7NOJwms/FWBQF7e7Usfsx4VzCWSygUMgCncJ4Kl4PNw=;
	h=To:Subject:From:Date:From;
	b=P396ypv9MpR87P75vCZBKoxPIDoKBJygMCPVjsqp+VnLC0bKrMXi6svvk85oHjDzm
	 uaRPsonGGUUsI0/Xl0w/RpJfCgEchNF5eSxzWDTWX7hpz4qotQOwbdKqxAHISkiqk3
	 UYW8b3y9ucxIZJj45psEKSHIbsEkavyzSVG/kDjhVSjAC2awrbDFnljS7Q3l/t5dCy
	 GcIgpK27hvn/i1KB8OjuvT4uFW9OPwjOtMwQ25DKA7qQ0kkUhVZ3lKDjeYkhxwtCki
	 Z9gVb8fukGq72Ax0tOvrDYkQKX0RSfdKz6Fr2xNdabz0C1Chf3b82cJZFXPjgcBYGu
	 qDTd7ac3s+XNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE718C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903743369.11774.7682569621282398546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64c78e1dbc5351378f0e277062206e961f592517cf95a4faabf06000e069c58
Date: Thu, 10 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789037433
