Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2927146A66
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776248854; cv=none; b=NTW4O9ZY+sL14p0ZLm92XY2F0mx71juzCzJ0KfFKtuc/LC/0o+rPnhbHk7OsW6hs3ypR38yen9YttG5+ag0sfmW647XwtiNBITAG611Kwqj4LTDNTRgRvT5gNGQqDKqUyILGesp/F1O1Sup+Ukn09BQx7VTMX7R8Bk8rQkIYVvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776248854; c=relaxed/simple;
	bh=bmfffeTBdgGO0NM3x0lYNCGN7CjLNzRVs0cTyvD9Xog=;
	h=To:Subject:From:Message-Id:Date; b=nL+SsT/vnLovE3omVeo4N0F9k6sb2KdC+IyqK8KmwROceNdJVCraUMom96gr1NMxfHdzEygtKxEk0dhGEP3uHWpUatQVdivyTC0dHuXs42MfiKuMn+4/Xcc2Wwfad+mmu/OzoCGGHpcHnSuRctQwsGeaGQGXbsDNeNQ3YrERz0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iU79eSIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iU79eSIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3236C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776248853;
	bh=bmfffeTBdgGO0NM3x0lYNCGN7CjLNzRVs0cTyvD9Xog=;
	h=To:Subject:From:Date:From;
	b=iU79eSIVvxX1aaDM6ERByuBzdu3Zl5oEsaVTw41WIyrcpzb0cUHVOn1r4aD6w9ub6
	 RFIX/YGnRKyO9Z2sqIh7zQK9MzeS/5tRsF7FV5lwfvo58kTgHpo3Si04OshJGvASgQ
	 va0gL/la3k/fH9ZzFEEY9PBt+PKj9fo9bl3Y7ApNPops37Kp+EXXf27kbDRuxxOODe
	 M86wsZqTXWsf+d7TAcxViJ684uHu3/sLMovlKV1A8lmyUU9PJcjqTJc2/hy0zacobc
	 C2UVoW+r5myVxk07M2hpvqlOT/AchlAbH6jJqk/AuTKxxITdW5L+Lkv5F7gLZqA0vS
	 N+fuqSI7K7qOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0642F4198C
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624885368.28191.193521352722483235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748482a2f5c09184aa6204a23c5ef7e448e18e1b58a0bd431bb767406210afdf
Date: Wed, 15 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776248853
