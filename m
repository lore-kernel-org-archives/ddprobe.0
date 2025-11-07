Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2BA259CAF
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762551594; cv=none; b=to7ELzxNOlkdtHZfQ208EhlBu4tGm9c9YlWTt2WjjX0EIZxyJhNt3UnGdUDutSMviIqQoqfGdMABv/uUMokG5RIOt7+i43n/+RORAdqFea0SO+N6lxB3srfxg7xGMqCYeTKFaXAT9MMiNfKLmlyya5iGohBQBr+QUbpMc31CsMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762551594; c=relaxed/simple;
	bh=2U4hTcJzEg9GMG0vAZ5N70BxTxj/FWLfSIKSIr0XzQg=;
	h=To:Subject:From:Message-Id:Date; b=aO9qWTzn1Z8EYIuhP/rSLq1JJTAtEtY0nxe/aPkk28muf14hKirmQla7oDcNWsglLsszMXGcS09BsP3Wx790lVMl0BDVhoI1u4MrOLBV4anwKRMjUrXy/VCUHJhQMk9qKhq7de3tMPiOPVdbv/WCGr/gjBosefVMvwSAsBqeD7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwha81Bo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwha81Bo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F538C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762551593;
	bh=2U4hTcJzEg9GMG0vAZ5N70BxTxj/FWLfSIKSIr0XzQg=;
	h=To:Subject:From:Date:From;
	b=rwha81BoWrFbAJEHIGZDMo4P8yARWqOKS+kgSjYRGNKKimom5f8q3gGT/khmtfKiq
	 Eq7zk4q5zdDi4Lc+7rFsxmKuyn0E0X/8YJVKzBrIdlny2YFiL/aUnPwoF01GMV936x
	 U4qb+p+a+ZeB77Y+1ny04l0PsVxlmhhOKyJqFvk2yRSLAHsoFEv14ETPC0mfS1qyT3
	 Q92O9qZIOK0GYTnbUiQhI/dSEPUyEfJ4+5dwax99V3c6nGin6w0RIFwedOZdq35I/u
	 UaENKBiS8pPzD6epxfpz0magQa9X3EEbPRpnSJo4OTRcm6ON51rT3F44jRlzA+NoF4
	 q4a203gjGS5vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92117CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255159357.16410.8411568366619671182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206de6753940499c94fd67f2188b7eea3173ae2b9656db8ba86c1052c9f9aa49
Date: Fri, 07 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762551593
