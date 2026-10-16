Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569ED379991
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792161034; cv=none; b=KHrDkRhFcTBoPW0XcwXSuBeOMAKyHpsBYO2D7jrfvce97SJnsu1nC94CDGT4BAoVz6EjGUMGoj7RkO2Uqc0RO4qHlXosgXSiE63MKrGSESAVTdT6iszIdrkXpp/Hvo1nXcSxJBTOjUrPOM/AWz+sgrbPBA51LbDkCjFh5HI+UV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792161034; c=relaxed/simple;
	bh=EbkEGEfJtdZnRUNrpNoOKricEqIAnoXNqjlvjoEr1Ks=;
	h=To:Subject:From:Message-Id:Date; b=RH26NC5h2o87TFzPmNEqABI9GzTw+LlFeXhALSHIN1rraVfcDPvTZHf9q/Kb0TL5P6C/Xy7rvLIgc0nYvGnpf8+XoEpYlOJbpni4aq/SvDEVgerg/znpHfJP5urFlCwqHmjqQKBvjK+9A1SZ6o6Twg+1tUoRtfuKI28ujaLNVFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5VRzncc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5VRzncc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD8AC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792161033;
	bh=EbkEGEfJtdZnRUNrpNoOKricEqIAnoXNqjlvjoEr1Ks=;
	h=To:Subject:From:Date:From;
	b=T5VRznccV/VOIuleAk1bNsBCJy7OlVSNAx6cGamRUc5Gum3WRcnkdo1RvjE/r7mal
	 Dguxt9/FVbDpu7i6uyH63pGX48P/vaBZN0YN0wc0F/UkzmYhKS7Ys5HjPoD3Zw6DaZ
	 eJkXvg+BMGMneiIZhUaH89VN4fROd9nyE2wh+CVsO3EI/Qv1e4pMD3kmEQiktyeWTj
	 33j2gbxftB2hv7F4vSQ/HM0lTrlraAdy4zqzxPj7J4ly6OQWSxcX3fRrj8GAzEO0Gw
	 u05ujc1Yum3LlO1LySl9Rm+ekTVinEXy3qJuaBCESgP6SxYDrF7OFN7Nu/D0rS+I6H
	 CUgsGOhTs/XXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45FCCC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216103372.15433.1068199162519894938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ab07e060f93ba2b58495cfa3908a8980babd6d720225865687cf4fd97536f3
Date: Fri, 16 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792161033
