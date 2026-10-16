Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C8944725C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792176634; cv=none; b=FtNtOabJajxFUAkQ7yRKSk4setP1YOj+UD6FFWSsw9S0bYA1P9pXOw6akP9V5k0vai+YR9Z8RNeaHZRbAyJZ5JPOcDPLMQLp7lxXMIWxUDhse14Fl5koqJtrPoYRqDX4CwgfiVV13cEaJl+BodZ+5uzlKR3uERIQD3lRqfZ1xr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792176634; c=relaxed/simple;
	bh=UeHgYVxWM+MwfW2gdQxltRBGkc9nyaTNQ8ifh9jA2co=;
	h=To:Subject:From:Message-Id:Date; b=UYC2BPfm8z9+BwhJJ7e1d1qjeHpRCiG8VJBU3x8cjMa/kr5N6wNd4MxfD4ryeAUa3DxM/TD8D3mHnnkdFgq6+rR+YMsXG/PDmWeL0mue/XutRjAEWi70rZkrZC68ixaZQqrVPewFrZgY4ZoNCP5uaJ8dHJcjrM3c/s8VGi/u7d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NX0S5bHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NX0S5bHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EA9C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792176633;
	bh=UeHgYVxWM+MwfW2gdQxltRBGkc9nyaTNQ8ifh9jA2co=;
	h=To:Subject:From:Date:From;
	b=NX0S5bHPYA8H3lFBsAcrQufynzUclsQStqGAwHr5NgVEnhHh5pZencYxkbqDT9b1n
	 zf+JtxVCgG2ZeFWuP6ft57X/8eeUJgEX1FzduCcoBhiuYT5DDfMd0JVX+NzMzkH76V
	 ROGFPftyQP/gIsXtnwRvMOZjLIsln40AWCgNpAnBIoxT3uWuBsER3jZQpuRKEvGwmD
	 UiVvHnsUoJA4Afz93C0vBrZW8zwLi4KrCRJqL4pkEzEoaGHAnsE3bpgI8PfYbBC1H4
	 Fs5gTdCS0xa2gIMfxRg4dgRzFIwSno9u9sWXxScaY27MX2pRaqhnrJPkCIGdi1dwPc
	 Lcj/P7V0Jx5xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB56CCF2C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217663369.7047.6305336368013510789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1f622d11f53dd2f7a6044c2e6a9f896fc6d8917bc8d24a55afbb3d8500d0a4
Date: Fri, 16 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792176633
