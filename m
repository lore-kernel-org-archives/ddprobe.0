Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B17356A22
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768815834; cv=none; b=gnWoWzNQfy2jvlVr0f1Oy1faXWxbWI45FEHnaNRi1D/mwQjIbunoCrxXvN2SRi9sZuOqzKS3xVxvthi2706oizizK34g1seIxGvSBsa8/IztL2lI8apCnjxxfQZQXXT69lkqc1PHuBea0b9KI61kSPdCAGunOtpoSpTlFOyfHbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768815834; c=relaxed/simple;
	bh=3dYabmT7f0cG0r2pABkRgR79ri42dotmbeypE/7QGKY=;
	h=To:Subject:From:Message-Id:Date; b=SyRALqB8wdJNCfsvh0JPYkXbXlQSkFf7ZlSP3pKyY/Pdx9fnwM9LzilyIH4wVwYg2+AV8Z1LFWvwKfSiE4K53AELkOpYhkxj+8AaJP8n8lofaPdWXWQ/bF2qV5cZ8UW49TAtYSrQZFIroUMvuBFtBpkTrB50JQERw9wJo7HWEvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZPTYbf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZPTYbf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E355C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768815833;
	bh=3dYabmT7f0cG0r2pABkRgR79ri42dotmbeypE/7QGKY=;
	h=To:Subject:From:Date:From;
	b=KZPTYbf/qJz02YO8sWJMI+24ysJtN1YeZRSW0Hw4rQJpFYwp5uEhaQ7rLRNYRGQB2
	 Yh6yx0siPaxMr52wfAk8zTozr2cEpqOpBDi5VQT+ojeC7X0ykr3phfT688crgKYA3U
	 HJMFXAsJWitXddCESNpnwg+L1gipmGmyUno2zi7Vhcvk/ys8CY1eQoSamaHNpN+WvC
	 dasNaKLiJqQDHAgTPdIzRVqfQN+ft+2Zyh0bZwpejpT6tSYGl6aVJ/OvxpibJDRx2L
	 HXB09vr/b+Szmwkg49OduBuwUcLkmYE/xeSqXGfgS9GMme2/MpEYSojaN4edRPjEuu
	 +qk86WdjchRuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B6CCF2D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881583357.12037.11685197918649882785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a09339acd66efb12e783b3a5d63260f8927aead1180939b2d21f12ccf1d2861c
Date: Mon, 19 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768815833
