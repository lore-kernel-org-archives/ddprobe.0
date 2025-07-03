Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F68E1AAA1C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751503794; cv=none; b=CsXS2+zNXp+94yWncyeEvvGMC/yS/N4MIwufez24L7U0qMH6iupFHIQHdEyGTksjSH4vbQhZZ1ttXaGvCfp2d39pET3GOjFfGxLEN/rV8z/V3xHyQKy2g7IaTPNlLnDT5QFvGOL5EWrIhO46AvHpbqVZXVM57AEwji62eHEaNKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751503794; c=relaxed/simple;
	bh=hjWRwSadIJRAcd1ADc6UlDBohY2pJEgyxtJGF7pgo2k=;
	h=To:Subject:From:Message-Id:Date; b=bsR5271lEQmqiiVU6lLybwUM+8Ak7pVEwuSAzlqmki6ZC5ZciJ1sg9tI/L7QIQ9TlQIr6R/4DE6Jw3x/WTj175gZP8yjQ4Xmn0SlaX2CCQMh6P2wmgX95q77rHQ7TZ3Zzy8WDDzoMnB1wlfvtMArNkuFyP4JOv+Zhl7+S6ut16A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipjwcZr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipjwcZr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40D9C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751503793;
	bh=hjWRwSadIJRAcd1ADc6UlDBohY2pJEgyxtJGF7pgo2k=;
	h=To:Subject:From:Date:From;
	b=ipjwcZr7kH4ndZnlRSGDAgux8njIKUfyJ+STfYpKQ4SuXQz4m2KJhG33jEaAyoDfV
	 IMgI7eyf4NSr7buXB7LLck+D7szqKy2VhmOwTcuc1p4a0+YKHhULVm3JvpysVMStjK
	 aJZEGLjKS4d2PbFSOMtqNBJ7BdtYlSZpjaHan6liRUOL0K/74jQk9zoFmgYqsYDHHd
	 KxWl180uVTEpa32HYEZLNIVgpKnVyxDqbQiwqlsBRFwGa7zOmgbD1OIIzeLQCqoa/T
	 5UlR+nc/DxzzRcTcY43b1kYrXWsRm8+OQkzl6ACuLYYUa8LtjYYVf//aUYVlbhAdV8
	 DOngmDcgFcDxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D0C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150379359.16037.6006855312461426334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c57cd620d8dcb71459754a20fee6f9015fe08051aa4a3f3be45f1ff276ebc0fd
Date: Thu, 03 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751503793
