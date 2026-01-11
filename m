Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB47C346AE3
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768146833; cv=none; b=bLxOQNIRoO8jDsKG9ZAmVs++ay6tz+tI97UmNbj0Ek+MQp1YmUvv1WJaf3/XoLG9uv4CyDUnC1hLUnyxWGkvP+60ENWkOIbSS93dXSgE1Wbqa+jBPTcrieuXoAhMnQQca9CKNiJuqFD1RMYZnEE4sIrQjrOY9K+A/5CvoTIOt8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768146833; c=relaxed/simple;
	bh=TctZAaq6VFxnMpvoOslg4x4M60hhaETHMutgeEbN6Vw=;
	h=To:Subject:From:Message-Id:Date; b=gEBeXas61y+VWJC4GlJYauDjmP3hnKLvEgRK/+tkIxSh/QuPzOy1/3ZbYd1/wQ+NTExA3JFpcxS68WIBT0QlPTWmZ4uD/HPES5pvssMHPTdWRhEKYKyRwUfasFqKweui9Mixz/lU/39sBGPdvszcKcT3n6y9+k+WzFycVTWaKZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMKFo0yI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMKFo0yI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E262C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768146833;
	bh=TctZAaq6VFxnMpvoOslg4x4M60hhaETHMutgeEbN6Vw=;
	h=To:Subject:From:Date:From;
	b=VMKFo0yI4/8kNxM0IzWaV92ybajLWbyiZQRor5plpW/VzkgINBH0/41gp9Sr2pA2w
	 jDCgYxzdwtKtHRW2BOoU5LRoTGGmTeRECvlV7VyauWcxhJelpJKMhoc9bRDZLLIBei
	 8mUEcRTmO83I8Ug4k80opHL3e0mVsaLFmTH8JqNUHHw8oADOlbvhHJw7r9FUqQ0QK6
	 hOQuYXplG63vJ3LBvE0PjGmVRKeBAKg/M8ZSsDGgGn0Bau97eIMMATIEGyNkBzBFz8
	 rPo2lWnVyG5APwfA8E0eRx1gXccX+ekV+xC1EUYitASYdXROkkjr4Qf9PXAnnXbuOQ
	 Og0+BbyKkPwsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE10D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814683358.17222.5005239044880851277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954c51dbe0c669a690c7a7f126526a9ae8db5e292b50fe371e019359314a4226
Date: Sun, 11 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768146833
