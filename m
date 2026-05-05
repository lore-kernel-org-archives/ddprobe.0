Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F8139D6FA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777995454; cv=none; b=X2ln0TPyLWaiKz8FLL3DBlFzgjnlr2xRU5zWa5bz4TNL4q3sHEZ3CX9XlpHMeH/XVgoTDQEdnftIG1klMLNyrvgCDPGqonFUwc19gJ76rHQ7UIU17lShbmc3K1azE13v9lk1A1xVHfI15AoOthpsnHWeyj4SHLYQc4BrhpFB71g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777995454; c=relaxed/simple;
	bh=1q9kS/xX+Ii0yylqGbkQktfnBp5JRCunegp0yRatFX0=;
	h=To:Subject:From:Message-Id:Date; b=fZ3hD7sjeJ0XxQXE/xeqV5jLEQEimNhDObf9O48949tju8gzRs2oF1I754AT1k0YzPPnSDCLpl66VyoQKvgOLJUkRMCvriCfJjJzfwG5yVKE2H1jMx/CMv4bgyNLmxiuzqxA2Fxhdhwy2bJhXWVdULKeTj+UsRTQq3J3V7n/lb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWsIrEtM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWsIrEtM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CF2C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777995453;
	bh=1q9kS/xX+Ii0yylqGbkQktfnBp5JRCunegp0yRatFX0=;
	h=To:Subject:From:Date:From;
	b=JWsIrEtMhFIjkLWIFj2LD2Gm6YT52vh+bK49LHVVzlfjg+0+jT8pYXX7hvIcXBNDg
	 wejM0hQEftVRnoAgDHSBPtBNh6ptNyg6Ao4hE8tbTpJsjT5AY5wik0T60gz4yXKPTP
	 sI+EAoJXe+TnHz7GD2HvOeIEL5Fi2yq6762Su5dgxTVIaOp+0t/bGZyiYZAgTcWXgZ
	 t0OFvZCL7LZVqQRF6JMGP707K+qkR0HygaOjmJGaruEOr4MqpRohyCSq+SHh9qna+I
	 lJIsd337AvhO2UO7DQa3xDkakRqn4GHkiVW2dvVYEGKv6BBBsOUUixSciW0gFuKLRF
	 SXcX3ab70MfsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB021CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799545368.31086.11292466244151495750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7ef1e6d28c8494435847019c4ca99826766c8faa8a67d7cd2712823f9c88e6
Date: Tue, 05 May 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777995453
