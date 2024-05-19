Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB8DFBFC
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716157943; cv=none; b=GrfVuR/V48RYmF3X49SDLk35K7yLPFXxX/UCCbrXFtntP8PHHINNxCt/HdN8C6X0ePlLDp02LiZbgsBbVkHuxi2ALdnW0m0b4OUjoUJF37hIRUg0smHbJjG8ql8T/ldSoKmxySWA4ZkBYJ9lmA4uqB5OZyOa6Q6i0XlBlcUm8Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716157943; c=relaxed/simple;
	bh=JhSM1mf+ask0QkD4ze4tmLRe6gkLPphTo4LlvMNwLtc=;
	h=To:Subject:From:Message-Id:Date; b=tS3h1hryhoXhe7rnOSHmILTzcdAeEu/EtbuGePL+4Z5bCWIP6Rt9k8GgK71SIe9M0ncblWbQNpiMGavaZD11QrA1uxxbpczflBiR18WOG2GBKr0soS0+krbNXeiZ6CZOYrCTRE20tewpqco2c3ODOV2x4uW/Dz4IVIyMJMLroEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFDXIg6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFDXIg6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7370C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716157942;
	bh=JhSM1mf+ask0QkD4ze4tmLRe6gkLPphTo4LlvMNwLtc=;
	h=To:Subject:From:Date:From;
	b=lFDXIg6mpU1p9JS0Ha7uXzu34/4uDwID7l/ht4w5EsGA0GsUIZLLGtH7OFJzwIGkw
	 vbZrDV9j0l/7fMTa/rsg93CBlca31UoQtNBYQUwFetc1rbbLphn6+rbgtS4RgqPzWO
	 pl/9Ua1w22pzv++hhilnJApMNQUT2hBTSc+1bKCNlFa/Z8jPRgSbboW9gtagMxsuRc
	 do+Vu4CrsdlooXLH4XTAE1lmtLlwH8yllroduV5DBjo4mUPPSOFa7OZLUulNCLDFGx
	 J241c7R1BuFPEhIZb+/sKwS3mstsdXuY3LOGXwPTw323evHevwLIXimTQeXKkIaGrC
	 GZpDfxAvqxKog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAED7C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171615794282.25189.10257310557631544681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976a252901bb00b05d328a1709c7e85d94c9d0ebbcf85d3b5ce501b626f1abd7
Date: Sun, 19 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716157942
