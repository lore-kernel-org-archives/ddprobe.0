Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40389345CB0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777054654; cv=none; b=RyoZrt46DmIEzHp5kAXKYn5HyiadhOwkzq5GP+xs807lSjf9QV/YvM7OBDt0Xb5G76O0laeYyI501bSFiVkCb1ypWR3DupX/Lhpf/lE//izuLptFvKYj+x1Vrbvm4ooIjlQawSm6ZkY6u0pDAuSBExhwn6esrIQAnuDDE5T+4Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777054654; c=relaxed/simple;
	bh=o7QeIUCUeedPmFXUZQ8j5ikXAXd4j6iopOOXzWVcip0=;
	h=To:Subject:From:Message-Id:Date; b=EwUPSBBOL2rRPZNJDKG61i9EGmMg0LH7DpZ33cDi1KWNRD0sNscZjLb6am83fZPFgi/RAdbkc9LX3jV405EdYwbDAh0ZpIvE2nxHg6Zgo/dwhugmjkpXvsiDjmxMUDg6acU70O5k1GP8cCgjyv2NKTN/FGD4dQLI91cLDWhoNUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhpqNIF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhpqNIF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF69C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777054653;
	bh=o7QeIUCUeedPmFXUZQ8j5ikXAXd4j6iopOOXzWVcip0=;
	h=To:Subject:From:Date:From;
	b=jhpqNIF0m1K+lrvhCHzqA9F06x5lsQsvoIEB31gpzzdKnZi1YPjqrVC31Gsi15HNt
	 JfLquVaF+x91h3FVgvA29Z62+Wa3px4yz5MmTM10gk8P1DhpZQmTXLGXr7Zk/nZq/k
	 bK8841LXsXvrMLvjzjBj1s0PC+lKzD/E3n+/kH5VczD0XSXysYnz6zav5HeiB8zS1/
	 DJLufhmiLrt9stJKAOY42j1reDRqVO+W5KO6CEM1kSeZPTEPvffB3ry4MzPv19oKIm
	 R2qz5vzaHBtYxRUGrdoEJm8v8juYbhy+19Wpto06jQOzsRC4V5mcJmZmdSkc8yR0QI
	 +DLHhmZJhitNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C9FED3E6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705465368.13864.10838079175256910818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36aed50c8f360407a9286f3f04ec2da313d5a18c6bb7311a5475b873b227e934
Date: Fri, 24 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777054653
