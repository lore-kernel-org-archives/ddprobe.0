Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2575B42AB0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755050394; cv=none; b=dt+tzP8tyIti0OxDWzELV8JTvaFuCnZMF2aEHAh0fz/UTAeTp+jzJ2oK5ZazxLXz9BjGLNJB7sFM+2rSaThBA5+LNdcTltUTALXmRV0Qya+1aBwFK2I5fsALHdu2vOB0TKpQu9vHb4RgJv3iISaJWCSStTwKgCx/dU1ljbUNdXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755050394; c=relaxed/simple;
	bh=QwlwqyaOCjX59FViFYnAgCoqsbkFuaP+PtIdxOL6SYM=;
	h=To:Subject:From:Message-Id:Date; b=XkPkMzhF+AO+1AmYS2ZoBtAwZEzzks54It4U/txs9qvqkoL8G5bi6nytoXrVNKGiL3fcddBf86Blogsrv5g59QGV0PH7ddtTgGhr1tJoEsa2joSdDaU2fi3hhoMNXGW6Y4/r3F2Elusvp1jAhBPyEhjvPii6EOxCgcHFpzZVLVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oH5DLyL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oH5DLyL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98153C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755050393;
	bh=QwlwqyaOCjX59FViFYnAgCoqsbkFuaP+PtIdxOL6SYM=;
	h=To:Subject:From:Date:From;
	b=oH5DLyL8Bjn2VEnYDc2FutFRNuNSH9V7ekW/u7ybIDTcoEbyLyyp3mkIqcNvfou+b
	 U6GhtsSoagcmFpfNTenIxfAiVTn9+/BQTRLnmMi2Y3bcLSlJKAG0H3nC45PEsUS2LC
	 jY0rZ/EClo+DgIanJZMmoSW+KwQnR4YHt5LFESEVeMQMfNuRUxVBH8+7+DodS74Ogo
	 YM9XemZ2WVERO5lFmRG+Vo5IteE+ltU7X/jNaz5erBEKt3qar3z3ujh6wqGDp4+NJG
	 3ddDqf/wyLaZIzIqmsMUu+P94LkzPgbqeBSpVSqn+91ri6I+YT6hpuPGKbT1rqQ+6t
	 Ob+qhUNMEAvPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26ACA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505039357.10615.14681176513389924712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b0922ae0b6afcbb17b5c7d6c9f2e57ee8085bc45e1966dff7d23f831930d42
Date: Wed, 13 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755050393
