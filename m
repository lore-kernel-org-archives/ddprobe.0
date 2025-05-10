Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5652F1DC198
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746871794; cv=none; b=FJCtjglbE/Th2LNoLf840if9JIZUOBiU5oVIiFDhVVosOCIS7+LyKyFTHlIyUPfjB+RHqd9iubtpWBEAI00dkyv3Zpp62K3/nUWUv2v8UTPrMLAVUUQt+7t6KwwPOEaoudg9sGxsYt55emDDd650odMYgMy7MNUXe2/gH7Q7Niw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746871794; c=relaxed/simple;
	bh=Em+pdmVdwYd80PPtrmlVDx1bzx0/nH2iovgodBRn6pw=;
	h=To:Subject:From:Message-Id:Date; b=jcs8B03L6oclM3QkS3RgKlr1zpfPyv68baohLEesaFyC9GjXB7LiuDIm0nZQH7CSoqXEHGIQtY0hWOr0l7RZqj4nOQ4FmYSxqv/zD0mhZTwDEyVvH5qnT2EjGtWEoq/5iLz/bHn1+I/CbtFxmSqH23RmYrcRD/c3tfuEpHygyRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slXJ4Ksr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slXJ4Ksr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90F6C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746871793;
	bh=Em+pdmVdwYd80PPtrmlVDx1bzx0/nH2iovgodBRn6pw=;
	h=To:Subject:From:Date:From;
	b=slXJ4Ksr2E9UsbWbue5T4Jj13jYH+odD7qrfvXtBgoxg/X6UhE0ieBctg/KTc/+Qw
	 TrRBpEz4ARhRtlpLsxsHrsAbDPXiDX+keKLfDKxsuki7Gk8lOgoHI9aES+l1lT+Lv5
	 wzDmEVb9IJvgNCig8LdmiYnp/9VjUjHysHFaHmaI6ok/L6+SHpeMXHB+1Dc77KkXIx
	 /RNDErlLhzv3vCe9Rmq0pGg7guoKcK7hnsIvo3+EIt/3IJF86BcveSFH3WddDvMah0
	 Q4vofm7VlmkuC3zN0fWMqfbx6WppFKfaT6akJAW/2hVXAdruCGUe6HAm2ewPTHM3YX
	 RAYGcD6UrREYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957F7C3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687179358.18763.4938906728641910429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702d3a8cb698485f33793d24fa1efc161f3027af05ed6f25ccb11ff84282b1d6
Date: Sat, 10 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746871793
