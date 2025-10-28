Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2973424166E
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761658194; cv=none; b=NaXkpcGecpNKd7FFlFXb2oVF3s0XGN4y2nOuKSFAxxfUCYjc7b07UMW/V92xxVLqMjgxQWNsSitQkD6qCqHIgSk7GkhwOaFX9YGbh6DBJbbHNV5dQaFnRmdE2LP81h88EIQ3tjY4UFEXD33k+IXAhXU8Zvsh6JOdAEiiyC9yE74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761658194; c=relaxed/simple;
	bh=8TRciWzTga2FCR1jOlbmmeApl8xSpPIyyxCZLCDEPWs=;
	h=To:Subject:From:Message-Id:Date; b=GQPcMTqXi9iciclXGj12V2UEAEXvILDal6FSp2yYogNGgAgTLghTmk0eT+wKKgX+X2YfuAqwGkF6CuQd3AX4Lm0y1OzOipNAegfQuEhKmYBwBlo6K8NKflKq5l09qs0uiwhI3LRNXWq1EuW10pPNVLVaKLl1eHDHdVWXRFwvW5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzztKjPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzztKjPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84E4C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761658193;
	bh=8TRciWzTga2FCR1jOlbmmeApl8xSpPIyyxCZLCDEPWs=;
	h=To:Subject:From:Date:From;
	b=kzztKjPyzty1d//l4S+SsYhNX8VEujAGFq6itXPIKpJOh/DdRZqVZhzjbf3kxsWft
	 t+Speob68PPGzzF8wpdg7rPQF1buuptzdElVtCELJHvnohhz7Gwak1qmwMXuOWQtxN
	 JcZBE9dlBFSzyuc0B46ZlEURANYjSOyzQnHU1Yr3un5r0n987FLPITcSi//vUm4206
	 tkbqb7qnrIS3/8JQx1ZDP6Kyn7J7JtCEMP3OBe8fqDmh9ub0bWmtYUM1uOlTttgNBN
	 +/JXcRr0R9q3nenqnceFmSmiwSIvXOj07x5qC0W9qtyoNvObMCzo36YaQrCFfjjguP
	 HSfPmhPiWIIPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BF0CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165819360.21914.11316829527651868049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee464c40387dc93ea67e17f6dfbbd36cac1307c892be77ad2bf6ba28cbeb9ec
Date: Tue, 28 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761658193
