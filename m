Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CFB37F30E
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784877634; cv=none; b=txMxHPMRFkwuGiWI5PxebJS+Pfrd9hC9zYJsPhAxV2SmeU0WreZnc8Z1luJ/VKAb3dhSebKIvo/ltOwjFCqJPVW3dZ+Ryxl7n0YcWhUIHv/xotTOZULnly1gYTBbDb0ofuum2lRIPSFUC7Aghcz3QY+trYgbjN0u2z6yNtu1UlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784877634; c=relaxed/simple;
	bh=9DMrkK7LSeiBrq0PisTlmeT+hgVVYzY0lsCh4Ww9wvE=;
	h=To:Subject:From:Message-Id:Date; b=aYHL5EtwB7dyZGNWmFX7y8s2U2WkpESo6SXhUjmTeImsTSuVfksIdc17+lq2sNNP4hmJWgVXjEiSfR8VwmuLN7MKPXumDRDrlAuz+SU4W8a0QoXOqW1w48og8jYmygmGuk+3+KjxGffzYSq8NT4ksPQc+wH9tN1vcCcSRcohcyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4JzbTmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4JzbTmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4A5C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784877633;
	bh=9DMrkK7LSeiBrq0PisTlmeT+hgVVYzY0lsCh4Ww9wvE=;
	h=To:Subject:From:Date:From;
	b=g4JzbTmXujQBrGrFkqCxMz89tsqN1oPoK/LjISscTZIBnqZGO0gSdqExJRqXII5vw
	 Bj1HdrnMwiwNLR+2HXloJtxfCVOsGqCeBdpJhyHTstWRxoEiBS58jE28E7Fv/MTmt7
	 Wq9RlRkzaPe5LIMc9GyRDlkfJ3065MGkd39i39wVGvqzA5g2vUPiCJJKAc3HuhtBuo
	 Mm22Eo/jShNcAgQPagteqiiqVxaogXiqVfVSRCQQ6GCQPLbSrtTLwbNKqtEG6HN4Kc
	 MQwODUo3ofxGr/1R4X9eHCI6TTfu3xbrNuviG8jXF54STGztxNJwAuZIdTXWuUd1do
	 anUXR/+GcRPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF6C531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487763368.19978.812791228173000016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eefb7b3755594100e61edd965c14f6cdd01f8b8945439fecd98356a1418554ab
Date: Fri, 24 Jul 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784877633
