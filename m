Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AAB4A64EA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792017034; cv=none; b=LBzX3N6KSUPs44k4Lhh0vAK2MwxjgC8X+EaDxIIcMS+M6ohw4JdHPGqh5WgG9IYwUjQ/mnlOMncSaqtU7ousrW2YWb3COiqQ8MLSOpRHYzNoG1b7XHJW+XYxEbrMvs1t3pd1vx+wMAeTVaux6AwCzbMDaOufaSqUiaVEW4/X5rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792017034; c=relaxed/simple;
	bh=7nrpgMfmCqQdc07Lak/tFc4lIQ2lDefGuRNlnLSYjcQ=;
	h=To:Subject:From:Message-Id:Date; b=lTnX+4WBLQotZbH4MINhtaMRHEPN3tFQArBRayzW8Vdpy0MDenMuA94rcxMHhL2PZv5LEZYi/atHikk2tNFRA+Vnm3Ojhi4DOv9j/GYnRWIVcGY/tIbPZS82Blt246SNq9D/PiVlFbtcYv2tnXlgKV23kZnxrPjo1hcMGbSZyr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRGbt3dH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRGbt3dH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86F5C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792017033;
	bh=7nrpgMfmCqQdc07Lak/tFc4lIQ2lDefGuRNlnLSYjcQ=;
	h=To:Subject:From:Date:From;
	b=YRGbt3dHKB4ALsOxydjhR/xmCQTx5cbxM2hIWPqopGDfpL1ElQ9uaf39+9MieKHcz
	 KKGfuEDGwP/DYRRB9HoFYdNz1+F1joqsLIIrCjNr0FJCPExtNW26oXjN7Qj5AjN6kB
	 DdFR2R9fxJ8UkQEz66BR4rJGYxaPN0Y5513/H7Fwn7uEjkRtPDxXMeo7vk5TpMyhnF
	 TrqCfMMEEq5wUasxB1AwIkIX0HQU1F5MYIIRolFDcID7flGd13yUCxJCL+2h5Z8RQb
	 aLqFnVPW5VvgByfuigCJhDvGSsOssYk9bqED4zDS9IZKdFNtcMlgDwEmBwqLfsM0En
	 P6LhB3Hy9wUJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40CACC6B2D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201703370.14539.1601463870978819862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660cd3ad9f3468ef2ed5807fc387a6cd8b9a38c1b33f68b6f1d148d45e2ee335
Date: Wed, 14 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792017033
