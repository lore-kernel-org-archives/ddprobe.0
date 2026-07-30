Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6770C3672B0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785376834; cv=none; b=nsu/9RkIG3t7Fx+VH+qGTlFmFpg1uKr2AdZbfeFlsaeszBycZIdUoPaV1+7aqPB3i3ItyqTlHsxgF6mgc4Eb5oMWgLd1IuoAn+Ot+xdttT1KXA5LHxhnb9SiMyUMzNaMpJ/xdARuOPUR/KuGMZ7eJ8pQcALQdbmApUW/Uyf+G/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785376834; c=relaxed/simple;
	bh=euWVEpcimKm9+4qMvOvQC2T/y3ZLoTZ1EQASBKQscSM=;
	h=To:Subject:From:Message-Id:Date; b=O3aFdNY9fIJ5NzQM9CachBZbzgivLHoPztvqjx/cYXpD5NIo371vNe8DKhFGRuf0isJ2P4OLkPUubuHnWrXKHK0tyxL882rFfxiYfI68AAmmVcrcHCsW0j+yVrh6BWc7RK5Ae24us3oecxd6hkvbvRFErXKG4f9oUjRQe5bEmNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qisq1k50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qisq1k50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4969C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785376833;
	bh=euWVEpcimKm9+4qMvOvQC2T/y3ZLoTZ1EQASBKQscSM=;
	h=To:Subject:From:Date:From;
	b=qisq1k50XNUV2v+pCBdMTRyyK3A054NtLIBMqxgqU/5l44igz+3odfc0QLLjbNDFn
	 D0Jbmi+llU8ox6aMJeWUsBfNm95gZWrdLq8rrk0KB/7yP+hEiQwmO3skJnKXokmQ0x
	 jI8onJmdFSirCvkxIB3Z7bLgC30I1uN12hKc0e9i/FDr4Z8gGSEZc1R7dOjAvEwnsI
	 Bfh2Soh9I0/NJh+mqdUN0uSt8zGajCA7BaAIyVNOCHARitqNQIZBE50UxqH0lNwPQj
	 pa/DjCLRmc+ZJ6CvOw5TwGKTl/xeC2lyxNISnhr+7v0fS9ReNgYO0wkbbHts5b3DJf
	 UsJE4epYMu4Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84DEC54FCD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537683368.24629.16573764312498938730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111e2907649c5e55bf16b6144122117178f07e799bec168f6a32861e0bd4d4b6
Date: Thu, 30 Jul 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785376833
