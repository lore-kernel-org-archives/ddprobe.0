Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D352459DD
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784989834; cv=none; b=futMK5LZOU33wik39IdMsPXpJ6RGywY1qOhi8DPxPrk9+4ueLGpGU2DHxfQI2wXwQ1gtLXB4+4nssJPU5myVpszdvf6P/eHhXexy+Pbw6LgW7jRPP5k3rMEM5vhU4eYpEjekbk/D5z046IP3rHDfOw3WougGhfGSK8V7UnXHfzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784989834; c=relaxed/simple;
	bh=Md9KtpOli2eJ7gqCBR1y2HPyKkR44bw0bgqRme79Nn0=;
	h=To:Subject:From:Message-Id:Date; b=CGGxgVtsvw3hXp+aGs5bVa3yYEl++J/P1KLrQBhEztxD/XFfBuwjUqmV1VaeY6bPKFhgIuYN9MKGs/14+UTpjEUCm4r07k01RrvExe59zDCKyTh1DPvLd5+NCRwxCuv+9ipQ/PJ7cLhwPHRAXh5UPrQkKskZNAdLM3yxrU9vIu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+ufdJZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+ufdJZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA775C2BCC6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784989833;
	bh=Md9KtpOli2eJ7gqCBR1y2HPyKkR44bw0bgqRme79Nn0=;
	h=To:Subject:From:Date:From;
	b=Q+ufdJZ8uVr3HRqJnRdViLQw/FfPQAeFjW3crwTYsSNAPkl9NTWNf3V3tVTrE8BPq
	 zfa8I5f+D+bNMa6ikrepxrcoocRh0zEhjTOhx/m1A0ztT5Y6rqxkriGXYyMRaLtK10
	 GhjXOpg1WuSnHPphaK9dAVF7GHKsg7TtXWQIcsXwcSBfQwFY7vU/ASKrQRN05ztjq7
	 a0u3IRgZwJi4sV0t7gM27SKcu0VJitMaUDdNF/hiI72hh0h9o1lLWicrU4zHJzFGAW
	 uyLc2YmiPMumzIRODzUYotNXBEeuFiNjL404DAB237wXeMt+xeSjFpFd6z0gFlQMmP
	 Zq4aK1t0n59mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8723C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498983368.3049.4657179431744815960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee365c896a9d9288f2dca53102fee920d04ed1e00ca815b7991fd64ef0bc4df
Date: Sat, 25 Jul 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784989833
