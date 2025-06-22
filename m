Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241FB1E3DED
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750598994; cv=none; b=lC06gRABY40VAT8ksngGC259SnsIPTfRuDUOD1oDCE4rsakjcBqsNibGkXqMJwxXVbsXFfe89NG0EpYXm6ctm6ywuNS5e8AiUJAENpPLd62HCZcBM0NVqxoRrmG82OFvbjYsnT52OklHzDBtoVnbXR/SmYM4CuY8tkETmB7Oc+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750598994; c=relaxed/simple;
	bh=ZkRwHZqLpAr2oWnnyUebUqWZ2ZrI/qajaPSVBnFYlqg=;
	h=To:Subject:From:Message-Id:Date; b=XPDnTCU30g9LqdcSzJicqlFCqtRGe+AWURa/NwlmyT+KxzuP6U4FCDElmuJ7Wvc2I561SV4KW1pcBF259Q/FPs1+G3FDG/Lz2ojgRTsX3qaEBmaXQVZzw3a2qsfqeAG1nQhQZoaR6sGtU+iZStp5esjmf9cHNpJ0CvWBYPgySKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIj8TjVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIj8TjVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F50C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750598993;
	bh=ZkRwHZqLpAr2oWnnyUebUqWZ2ZrI/qajaPSVBnFYlqg=;
	h=To:Subject:From:Date:From;
	b=bIj8TjVIhjXYgXxDZHiLSaahKZ4yWT8eN+bC7YioL4sIB5KWyXBGOiQEggIqhyfqC
	 ucdustUg6PnHPveoOpBun4H7HC6+Le1d64ZFZtbRXF7qMMbYCVsGQYFjUqXO09wFaC
	 kNYl2j0PsaM16Is+k63Cw5RhMRr1kzUh7L9mDprO/vUaF6s4UipV8LzP194Vu6F1Od
	 f3SRv+QpY9rsVGfpBBanw+pYvVMnuoovOmz8vMxC2CxPifLr1wT+nmARaPivu1Pckt
	 n0hDvkeCabn+jaeNG94S7Ja/M/Y/7rMWg+bH+lYzF0Lb9ad1RmUImgwt/ptqTPBrWp
	 BCxdRCQNsYjBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99820C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059899359.18552.4944661214775092427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97a4b4bf9f748c6dbd8f16dcd07e8cf6c72fd7219a2943101654b92a7afb12a
Date: Sun, 22 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750598993
