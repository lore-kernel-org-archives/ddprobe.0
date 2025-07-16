Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097202EE5FB
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752706194; cv=none; b=gXWt1mr/fffUChcClJCvAlKJ6gGBqpT/vYLU+yl2+MNvCKrpN0vmcQmOfoqf9dmwcI6wRcLxRFfYH3OupDcXDCgfNkThhUS1u8HlrBJ7XgCHxvSSxnhwUQRMxbC4cg5nUxSKB3wSl0AwTyq0HwZXPWPNl8s3Cp3sDbMpjXOOAm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752706194; c=relaxed/simple;
	bh=omT9x5GltOpxTFjJvWtgEQTqOSuwSCmghH6Y3fz79LU=;
	h=To:Subject:From:Message-Id:Date; b=GSRQ4qwnynklA+QIpcKDnge+2F7Dxp6n8ujv9iccbhmZxO4ytnf0Ee5pJgNaxgas9cWPTZuKmHYFfAFEsdFzgqf3VGmiJvmfi/VG5dMviyZj6xIdqHWHop7bgmWjwnGNZzivAijNkVoTRlURIjR9YHnuz5/0mhcwCDUJf4kyNRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAFpUp2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAFpUp2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA94C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752706193;
	bh=omT9x5GltOpxTFjJvWtgEQTqOSuwSCmghH6Y3fz79LU=;
	h=To:Subject:From:Date:From;
	b=RAFpUp2L7AewlJPE8OV4ubaB5G2QfoLcpz3IbJMIGHdGqXPrLwO/hazXMhcRS5hyR
	 187CdmL06iIyj8ye+MpE5SGzp8uzRNu7wFsxV8mbbAOT5E46NgCWcQesGY3BfkJSIQ
	 PV6uiD8/Nw8f6e1b58axrQiCRJrjMvVKGOD5GNsY1Ay6sDwjL1lwLZNmbrILlTUoi6
	 2qetpd35nJ5n3Ef4seFDGTRrZqCUupubhjUJI0lCNoo/0yM9gpWvrsBCtxneWmZaey
	 1MiEEFgUWdPsB5FBjh8kPHwuK22tRcy4l59vsb/wpdmCFestXutgw1UC9X0DZNCpnO
	 CGvmMr9Ltdt8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F548C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270619357.17892.15464966955337428612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a8f6d0f968abbd6670b091932ec27d1b2cec6386d24e3fcb79b3f4522d07dd
Date: Wed, 16 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752706193
