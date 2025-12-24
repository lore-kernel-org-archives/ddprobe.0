Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107D87E792
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766588634; cv=none; b=OoYnRCq78OGeZZV/7WzOftOkTyiCeyM0P772mNFFw1Hahht59FJKFJMm+JdfWlq0p8ZSTjVxVpiQU8b3hsatFUeNb8Z1Jwonm8ljkSnSUxWxZm5P/LuqXb9TueUNlpM+0sDaWUGkaE7ZZsRikESFkC0ZJrDu263u/Y3wrwBW/YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766588634; c=relaxed/simple;
	bh=uGjnTaSZhux5W3kgBT3890JgaxpXSOWuBi63Bwv4lPA=;
	h=To:Subject:From:Message-Id:Date; b=dqUQxN5glt0Qb9KOThmf856/VeSBLam2r6wggknpOhHx3UqO++kt/qbZ5XgOE+iHxBZqQqA9YFBDXUHPYy9nHVJBTLMWhaaw8WcMvyx1fP1EKrVzbue/fV+jpR7mhM8UpqZfAQxOZVWSNtFkecACzcrNqPDm1zzrW7MleUxUvfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bg2wuLHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bg2wuLHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42FEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766588633;
	bh=uGjnTaSZhux5W3kgBT3890JgaxpXSOWuBi63Bwv4lPA=;
	h=To:Subject:From:Date:From;
	b=bg2wuLHpV9fZ4vhR4T61of0ZYxqDhKx5dkmiHCulRiikKZ0xHED8u08EbKgS8n4rf
	 s68YGtokfh54E7zRLRVrowQ8Zn52Jc8Dh6/0CpYRy1Xnib/CGXPA/Iw1WcLTyknqfH
	 PDsWIa3Ad5g0lDyme/Yjw87ep68tYsLYY5Fcl/XBCjJLq1FmwV5hYO9QfluL88nLOU
	 o7MlodNzJeM+MdCqPujHyY9C4Q/Qs6cAtynKPVXFXQvpv5tZR/rOm2jl+mggUgy80h
	 kw0nPpyiUkwyofNySUgu9Ku++DpqTwu7weKzlzPXhRtIxKIswFxdXhFbnTSr8/HRSB
	 pe1Ym+fvGNsKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918CEE7545F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658863358.28013.15774063243971507293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc75af8ce022a2718468430bfef7a465186011a45c4c6c27b38429c210b9ecb0
Date: Wed, 24 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766588633
