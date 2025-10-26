Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106D81D90DF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761516594; cv=none; b=FQmv1Pmo3kIBsSWYXkGrJC+FTqhr4M5uuiX2ydTdihkZbxMZll94giBIMnF8afqv4SHYzsd1szdZCwDE8KkulbuXBoS4MkPkXOO0m3jP/pP/Re5xnE/soYNP63MI3/13Q0/VWzu5xo22vmLYF+Y/nIf0Svicg0TQF16numPUJ40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761516594; c=relaxed/simple;
	bh=NqSW6XIfbJu7+k69dE2HqIbqjLOcsKBj2S307BvdZyc=;
	h=To:Subject:From:Message-Id:Date; b=TIqarREqV53+2urAv49NllvxVf8iG/CbTCthZDKHQLAw/k8977OzsHTaFyqnfTxUt7xQB9C53NhFrdvFqdu24Ar9TULsaJgJeeOz4hS73crlKktRnlNEltXm4NayAo47Ou6567HA7Uax7v43VzwRZUS/uLnm6k+CCKQYDtNreYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RufCnWkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RufCnWkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EF0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761516593;
	bh=NqSW6XIfbJu7+k69dE2HqIbqjLOcsKBj2S307BvdZyc=;
	h=To:Subject:From:Date:From;
	b=RufCnWkvpi6a+5YUVsyF+3JPNOtZT4TClA94weoAD5NLlpanuXEUXl1IXCnpwhepM
	 muU7cfS3NDveCpZpUSbhWQtGqOcfj0T+kpTt05gUXC52GlcPI4lUzIjdY+imOGCox1
	 1LPUGhhSFihrek6t66IOVOL9KUK2m+i4oF0/G8k8ND86TE/OMp0Yj/D7av6uKdXE+e
	 j2HaWJ/25B3bGi9/6CuQ4AxzYOA4Zn1thcdNxmS+80CWBrduPNN8WZZ0sY3T5a20cE
	 vHrYqAaYT0qKhHlf91RNJLggn7aWAM4YAeD/L15x/QBiy/C9Plsc1z2WqMx5MxKelU
	 wYstwuf6iCI0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA74CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151659368.22127.8785212224453580946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0634338a7ed43f1b051d4eba55c87ec2c006e99472b69a6d25860e4d090bc19
Date: Sun, 26 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761516593
