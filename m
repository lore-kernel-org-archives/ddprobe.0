Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2844C274FE8
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756079994; cv=none; b=tSgLq89b52iPNBSiTxzwRIdC5uGdiypfF4zSWXiDkw9gI/hDtmVF287/naIPnNi6JCBQ2YwYBL6eDbNenjzBtZZ1C1Zp1X+BcAJ+G+Mw8IWSJSfl5HQiaVAAlSdQiqYAgiiTvktPB4f5nuNGoZF6jqwu/1ub5sNntMN54V9JdaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756079994; c=relaxed/simple;
	bh=ZGjkF637PGb7m7UUSGNLYx278ue4x6Xg9+qP3jTPP6I=;
	h=To:Subject:From:Message-Id:Date; b=OC81Xx2wLgEQAM1tYLhKueH8aQYTSbZ4F4+r4+M4Veay/UCDC758BeuJXT/ITdG8Fdih2cSJaUGlCjr3FfvHIJqwV7i7yrCzgkJBPSPUWqsFj+9/aBr6GE2P7vpfKK6FwSH/XSTdY112dWPj3XkW5vmNbdtik8I6Cr9bEtCEdyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBMFyI5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBMFyI5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B12C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756079993;
	bh=ZGjkF637PGb7m7UUSGNLYx278ue4x6Xg9+qP3jTPP6I=;
	h=To:Subject:From:Date:From;
	b=hBMFyI5Djrg8K6rnFzKgHZK5P+G0C6LEOigzgljR9S1TlZ2BpOFO62meqvopZZMop
	 wAn04W32lm33+8otc4/SYcBUC+TFOpS8J/0L0PWNnQ66gPLchRgFETDZfgbQEjBwe0
	 jsTXJzgeujTYgJJMFl6nU1/YphJeBxfJa0bbnbjyVST6L7isN1/ntoFoeKkb9TvPfb
	 UL4WDRG10ShikfRn4ZKUTf3Xjb/Oiw4LiNRGD8joeXZzgnp3WQq46F78FpHX3suMQH
	 JiYLVn794/nzINTxE56fXmTPm4aeMOcyLcgF8FLWPywA/8zu4PGJXnHmM80895ses5
	 5+qJ6rIW5QzkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91689CA0EED
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607999357.29622.10109318113844782538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85fee56ab2a443144fb5899d9424d1dd07da81fd036577c23d75cbc3dd2e2bf3
Date: Sun, 24 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756079993
