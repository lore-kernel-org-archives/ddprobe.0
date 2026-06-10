Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0591A47AF75
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781123194; cv=none; b=SomWcqDnOZK8RIFE/eLU5qvjKarVfcvda2WOVoY7AxwKumGriIESI8S/DmV4Q/uKTCeWdLoPGG2/+ab6GszTjZ6SWNdSC/Xek8jzrXapbp8CulhOGonJeIQ2xBF8cB7+irUqdhHnrwgvM15V1j6VyBIJft4ROvZvher7MPbDwgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781123194; c=relaxed/simple;
	bh=pUeYg4Dl2tsssyVT7BEL+wXfHJi368WhP7+ZEbhBk6s=;
	h=To:Subject:From:Message-Id:Date; b=nM2a6awTqR+fjHP54EFQPIJbsGim3VlhXU2LW77TAfQGHMTxLH/hsdveyoW6ju4UQzDkv5PyclbIgwD4v120hhXRVjW17/8ZHtlSWyN6Jynrh/os+kxHorBI4eZGYA9vub47FysWe0qM+DvltR7XZzDDzN5kM0KQf8Mba5uNMKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJIl6rTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJIl6rTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34D1C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781123193;
	bh=pUeYg4Dl2tsssyVT7BEL+wXfHJi368WhP7+ZEbhBk6s=;
	h=To:Subject:From:Date:From;
	b=CJIl6rTqh9cNRvcOx6p1Dkn4w6JojgMVoJGmT0Fmn2E2LMUyPFiOqjJqMgbD+4fCV
	 gINxs04RtbDZvfp5R9rsXzsJTE29it7/HjJCc8kidJbcCUbDGK6RdlEA4fM6ea75sU
	 AqUT5z4WEVEtFLJYxFQfQ8FpzysFrEb91fuxl03lZ0y9y/v3T4f6ky1UIPqC76Zy9j
	 cE+vws+zprF+hsyxFSHByvFG1kLhCS4Yw7BS0KUK3uS2RY8osC6cjnSg9DODtNrYLs
	 Zi6d16O/ijdQjq4U/p+ZyAw85aH+MKW3e6KwPASCsAXfresHcc6/9o37l+jmun2ofM
	 S7k++XHL1iepw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB841CD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112319369.11091.1120594362212678469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849000935a81915576abbc4fed3b1dd9394ebf40698296170a3e3f9bc8cf7408
Date: Wed, 10 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781123193
