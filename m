Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5218E18AE3
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783311514; cv=none; b=QF0kYaYeVFQbsML4VjeGaMpbu/IGEPmJkP2biRZMHbwuuRMb2QZ9V1VfmQVseuTdJHFG8L1pcvVoX158H87Kscp2U5UfmmEf6LTdMaDRreOA3IF0n0/27DofSuHdlS4g0Z7U0egz+ysMm91gbEVsWntNYDI8b7yp3LdKdaSM+O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783311514; c=relaxed/simple;
	bh=2K/1/wgrzLre1EIIXez5AUHUOp/uCZfVp2lNBueXkvY=;
	h=To:Subject:From:Message-Id:Date; b=UOyKXV4IzCImhY5RpWLbegaJkoWEfK5jwvEAnQDLmmEmmhCuHZTCDDv6T+bQ/ADcvNtAHDyDXKd03UoNeN4ayvtP/doSX5xz6m9BjBj5otYFzBAMQncNs7AyGtBFR4R2DmjQi3C7jcTJS0FSixo86DZzUXSk6v+Up15qIAfDktM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Txn7GEAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Txn7GEAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8692C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783311513;
	bh=2K/1/wgrzLre1EIIXez5AUHUOp/uCZfVp2lNBueXkvY=;
	h=To:Subject:From:Date:From;
	b=Txn7GEAjGG6xh3eha4aTh765jW7inD/GrdfQkT1Oyz6YRyHryL8D2vSRidie4wA00
	 /nfOUjH9XYKjC/VfuC7ULdeGq4nxxdztxkMlnOMsjrz8QQPUXyAJSmzM4NntjUe6e8
	 7XRbW+wj7Pacv3ZRNATDqxENo5tnm8dj+gGBaxUTQ4dlUgFZniJEwy5G9wCuxAqsgM
	 vUUQRMzFFBicvUBxGjHzK8tPO3RaU3uNDGX7/zzLpMHgwurYV2OWU9uGenHcX4YK2X
	 k5Rj79Av0ONvxNa8BwHsTZBZtaJfoLmQAZVsGD3WSCQWYK+1FSGgrhW5Qm/s/VMNu5
	 upqkBUNkMqa/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08C6C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331151368.26134.13751321427869323430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be20af56ea6acf2a561cd4aa263e4f9e9a633d80712261e3ff9a6f2e79e4002
Date: Mon, 06 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783311513
