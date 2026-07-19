Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6346B1862
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784432914; cv=none; b=sypdleOuUQTawkcgfeqZ/3HIguLmLtoVPH4xLHIRA6viGos16jeClEyoWdqqafQLgmhciKLSkhYI26T9E5NoVrAoH2DnQdXaKQKq9HzpsdqJ/247tk4F5XkzwHNRCnxniVpJbetq6hpcLCCWWgbvmKS0XhmZkSw2s3l6YxhJVL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784432914; c=relaxed/simple;
	bh=T0+ySOJQHo9FPrRv6QNS20EXz0zFu2mJ4LL803/WhpQ=;
	h=To:Subject:From:Message-Id:Date; b=D5eaBP/nFFv8VN0xNOo7tcNarFsKrWqlKvML5FqdlqkpoZsbuSb705VujJ2HwHHcrFsV9iyigOL3vFE2FoRF4nNniEP3Srqrxalur0ipm4qHbmfvjaYIlcfcDc2fjlp/p54e9PmZkPS+BEnmKJLQdaDZHH9ezxEGGfuSxmrxlwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfEJxx3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfEJxx3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD537C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784432913;
	bh=T0+ySOJQHo9FPrRv6QNS20EXz0zFu2mJ4LL803/WhpQ=;
	h=To:Subject:From:Date:From;
	b=ZfEJxx3HSuzhR3rO/j1cgd9aCvFNd83juQhOF0Q/xAVLw9WItU023cVGG9vhlwa9L
	 qUdz//54ecziRf6wD/XfgyHfmQTy73IRObv3ansDUTHHoBpA2FxJ6l2x+6Ai3FJVMJ
	 S6x2p0aHzxK5SxFPmoOMyKhuHPGpSo0M8v9UH+i3HWfSiWRyWoJNxMHXrmmC+qXB7m
	 AdMtp3igXYTg/mukoUOV52xTeDyv/3/kviGGwapnUqrUzw8SIGv3Iy1n/1AZwkPt3b
	 BgGkYFcjVxVIMaJPx9kjg1p9H6aIHJVTabauFuUliT9qiGv7eV2cT8uOlGI0E5RzLr
	 +n/96GTydq6Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F6EC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443291368.2763.4819335371473728056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abccaf9fdbbaa49d0fe434ce4c4d351690427d60f1607bc70639bf076b1e772a
Date: Sun, 19 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784432913
