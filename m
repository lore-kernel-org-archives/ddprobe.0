Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9982F2E
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753546794; cv=none; b=mNOqiAHODGLjAvCFxU+mx3mspkRp9s2+eL48N57GZ0me2EibWm5tqmnvB+8RJqDwuGM71014LsDzTJirq7f0D+LRa/fAd6eilI0qG/rrq0hmfoAQh+SjdsEQk5L+7Apu5NrxUOqB1bv4s5JqVKghpgUzACADeU4VeMpfzyqhwj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753546794; c=relaxed/simple;
	bh=90LTlC2oD0N77+2cetDRXG33x2cYoE7oKXOL5otdWgY=;
	h=To:Subject:From:Message-Id:Date; b=XcjcFufebzWwdf2nEcWXh/Xys2oTLm2HinprMGRx4bEx6AmyKYd6kLrzQWSBsUiNSdTbDFI/3NQDGAguQ/3yQdtByKC8grvpKcdxJ0MIWTC/2wMEZ2PSaDvHgO6/9rLZvrawJSceIhBDEaBPXL7XRowzP6GrNLS411hN4JAPwl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hO98wak+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hO98wak+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D69C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753546793;
	bh=90LTlC2oD0N77+2cetDRXG33x2cYoE7oKXOL5otdWgY=;
	h=To:Subject:From:Date:From;
	b=hO98wak+Wxym/ZF2TIM7AtuTwA2r6y/iP5ZScxD03mi3IedC5G2xR/XLc1ElrreKq
	 r8WtAb4pVpgydjVdFGF3DItJBxU1d5iVxkUtXYlH1U42q/CL85O+jbXKVODU0+8zru
	 UZ+M+423gVqQ6rrv4xwq+SIeqvhpMj2dyb5A0MfDEuLV72XP90twJLElyS3a/jf23f
	 Z4D5Gj5vyE8k/f6CxBa1C/5pz/c9h/VkQIDTBG4lvlkX/IFbsfTz3CAKx9E8mdAmBW
	 tLBUAzHAezapKCr8jMayBLvFTvMDagOYnv2iildqifHJ6UXB4n/xjJIibVyOlFJVIZ
	 b+4hDxy2Lg7qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D7C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354679357.32733.13330138344713142275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a90314aac91c81b9ee78d1ba51ca4b90ba217970dc91d8824eff2fbf47cfaa
Date: Sat, 26 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753546793
