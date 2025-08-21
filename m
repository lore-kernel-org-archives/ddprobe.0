Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA9A2EB842
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755814794; cv=none; b=uF/GfufrcOCFzl5Xy+QBjP9TMcL+AZIOpllWMC8oedcKAMGBkzSjNP48xgnnlU3IPd0FYle6mC/xaJnLhgkgCB10DE0SNGBYrAtcgvvOgNx/WP3XNne8QfE+6JnpbMmTyXfsWHvx/ckyv7Um0BZcP2gms7w7ne3JT6fl3/tB+20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755814794; c=relaxed/simple;
	bh=R26oqcm9eUkZsjETQOEIXYJkrn0gIORROMfQmEY1ltQ=;
	h=To:Subject:From:Message-Id:Date; b=M4TcfKVXCZ2A9Ujc++Dfq8/ziLyaLcv8kMxXhgHPBvPPzkiDxKYD+bT8tz9rnB//FMWE0x9RtQp7Qj+i3Npxsu2N0nYx4u8fHKcv7SJb+tHjPLDD3boldS+sbIRrUC4z2k2Joede4kEW6rmcGx76+vga5B+zvj5YErr/qNNGGFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRteEKbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRteEKbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C0AC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755814793;
	bh=R26oqcm9eUkZsjETQOEIXYJkrn0gIORROMfQmEY1ltQ=;
	h=To:Subject:From:Date:From;
	b=LRteEKbY5GfgoDLla7C0HgK3vWKSdV/yasJW/oSJBP5NxLqV8JQfkMBBTG6tMnrsU
	 QC4xOam6MKVjTr+wxjTTr9SODuj4yd221veGX/5D4YUrHVA6JG/Ch4YPIc+wmvSlI5
	 PM/zef/5pH8tsrrxGU+PhIOnRbpBPwI3Alq9t6cFIylTSEE7S6BsxgkIzv3V1dm+nQ
	 t5pVHAPV83UPuontPpcJqZH/6EH8cxdPYvPA3YF+Rj6NxwmBoGhhtIsHegS0pUrkmH
	 ELkp1MiLIUeFHyfxkMMkXTMXkyeaB4QxB4hl0gxlr1AgWgP/MOtYI5xTaXimJEsHWh
	 uBuL3Bwtt8XIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F16CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581479358.21874.17355145437302322278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a383325515ab7ca2db7a30ccd8dbee1128758e0fe290d49ca20b74ee9204c5d8
Date: Thu, 21 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755814793
