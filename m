Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30ADA282F02
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780904074; cv=none; b=a9G3b88nAZ7PD3HFEXId43AISSVC4Hp/srWLAf1vZaA8nsMZJLpRYl7gXj+ZrnD2IQ8TfuOTc+Tu5SqBsRuEAwVh59EdlaBZhPPRQ1WamdngzxywPGR9hn3+S+FTfCUryiyTVzhwAaXvIBpLr6hJUllMm3a6cQXUNo3Jdq5KHqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780904074; c=relaxed/simple;
	bh=07rioOWO2+SkRAv/OzSefH897cqr7b31qbIJZZJcA8Q=;
	h=To:Subject:From:Message-Id:Date; b=YtI3uMerwSA3Q4j8oLNcX64hW1vvskZwlXOr+AgfV5c4DJ4aKtmLeBtPyecYWLahyqYTPO0wwvPE5J1KKiCQlM8+8PpHY2UiUWXU+IWgrKDdPuMlmskIoagmgn9YKylpUg79SVXGtF1M6LJ+UoXtVMldRlWQ3SgtkT2/acfoFNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJ/jRfHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJ/jRfHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9636C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780904073;
	bh=07rioOWO2+SkRAv/OzSefH897cqr7b31qbIJZZJcA8Q=;
	h=To:Subject:From:Date:From;
	b=mJ/jRfHlL1Az6cACgNlnXDr5xS66GcyREIw0a9TQlRFq2bVz9kKhW9KpNinXlntS2
	 0C8ZUJY7p4DhsrhDVfbLbO9pXS+CyxYtjlJjlyLZJtIxHnJp947wZphc3a2vLYG1YM
	 1cTvQmxAM1KpgHHVYOFa+AMWQFTdQYM7plqGLXy1W9scFJ6Yq3XDeKlIJuQjjhFaTM
	 QxLInGzSPa2uX1TLFnKRXH8qqrbmFY3iQ7aFF13gNd3FE/jf038YSqgCENnKNg/5H/
	 mXwHC41cCTxbzsl9PeMbWnRSnjbzGy0BP84Xk0WY6aLPBWQ2YT86msf0NBMrEmOWOt
	 UcDiHrrfuTqmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0878CD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090407368.6654.10603890591701009589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0d8c3c1b74cc799b9e1f76d95ac5999854d1f5d88435dd889646013e94a78b
Date: Mon, 08 Jun 2026 07:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780904073
