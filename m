Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585702E65D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783227514; cv=none; b=U+H8PXSzM7YTIrFGWEGg409LENlRitESygBjXAK7/lEzUfnb5ax9dZ8m78HFQY8pBAhmF1HnQViaMvHn+04YBgRFSbJuKOw1Lqsb48dYKVyG/Pph0NNKrHsmcsnLMhYA1P8LstofNuXxNQVCb8C9a+7WjNUt3UrnDore8CpZyl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783227514; c=relaxed/simple;
	bh=jOgSUX1azzgJK0L5gvy7+zCcKrNSectDqrcblprCQMs=;
	h=To:Subject:From:Message-Id:Date; b=c8fkj9Bdt6aL4IV8Ud1sP8D18o0X+87ZPtF6yxvjKcpUOTCYaRa0imQFLUUj52EVVJ2WTBrO5gsDwCsv5hfmt84n3mowiCXl8YhN/9pGRI/McpokKfxkpmNoQChCRDljvB+6XV9L/Z6BvKUb71hs6W6ofCUnIBFsLOBeR4wj8e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpDrbMfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpDrbMfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5750C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783227513;
	bh=jOgSUX1azzgJK0L5gvy7+zCcKrNSectDqrcblprCQMs=;
	h=To:Subject:From:Date:From;
	b=NpDrbMfNFvDoXShj0saleSQ4yWsnkfh0XWX8YNNiMK8Y2DqnEL0/vfJIT8o8GIFSi
	 G+RfJsS60COjJRqEBxfef/vS9qBdpuPxeoEvm3joRuccdaWp2ryBGxf9LwAv6L7FP7
	 mkmPWqevMK2HSETjrCMSP8kw9zeuB0RNV3Mat7fBYr/Hfpw0kH8HVT/fB4Jz26uSo8
	 xYi2boOFNh8M+yT3YpSR8FllZY8Qh3xhxoPBcGHdoOChhN0ItfbvJzi0JOvTyaJvtf
	 Hi5UTRLkqHdWLHPdnEluksKakTO/2AXheZmgj3xu+WulKKtqFGEn/vRxKuyJ8OmBnn
	 sx2EVP0EdbGbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE761C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322751368.4689.7775363348204451256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8403bf998e129f2cb06733c38eadc146a2d55c17ff02b4b4fda83d3a31e37508
Date: Sun, 05 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783227513
