Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB81139A81E
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778649033; cv=none; b=F0OrO93VmkntZrC1c+2Fpxul6ttx5C58OnADWd0dVJ5I4D0LIITrwF9/KSS6dDMJmhlnA7nOFqNlWEKIWWD4OqBR1lYYQKvLXVM67/dlX2CiGDfWh6c5H6Cv+zSpOdyeYw04Hw5/i99F514AYTHOG8CHTbWV6rs1TISdDPoUqg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778649033; c=relaxed/simple;
	bh=6MaNKaDfmsB800upb2PV9jdaOafhbvLUU4bdPrm+8rs=;
	h=To:Subject:From:Message-Id:Date; b=S1cdjLvjKwwNMKjCwDVCVZlaBJIskUyt56PyvHPsGpeEtTr6dibAz7qnPvtllTk02k9Xv/56TQ1F3lOTzQNYOCdisAT+NoLCdr3m7cHWgX4XhDAyfNYRQ2fVQMdtJ2IlJIR1dBDKraNUX6/lJkPFzt8PGHrfj3Pkszs+oN+L0pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RM4oJQFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RM4oJQFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2EFC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778649033;
	bh=6MaNKaDfmsB800upb2PV9jdaOafhbvLUU4bdPrm+8rs=;
	h=To:Subject:From:Date:From;
	b=RM4oJQFM3SJsKADTOL93XIVMkm7QF2sI/3kgwmHxIpbmGtK0U9eIt3E+nbYgLVYBi
	 WC8vLYld8WPBjgPtpS42Ao2f+9ZAwLaSaKDGcp9Nn07U8jXkGm3CE4BKYZ+84g/auH
	 2kr1GZiTs8DS+iZ/N+ZzrXRiPp1NKfc/4U7MKpt0qr4MDilR6y0MHaLy74yV94o331
	 LSCguAVAkvT2aCIfUX19zx/mQXc3rTwKkaXtaLbpfwTPM8s+Sn8hJ6kpYgSH6NV3vB
	 stNPYdezLt8IqI9BGdN/kRnep7dNACCNezjPTYTu+RA05o2rCUMWVBnSlyKTOZ/TNv
	 6G4jHy2PmWTaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD09FCD484C
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864903369.12303.5459722188315831921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2b92c9bc4707523be5c28d0f18616cc2a7c07562d4d60b3fd91edaa9753f4d
Date: Wed, 13 May 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778649033
