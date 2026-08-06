Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A6F6BB5B
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785993634; cv=none; b=KksGWoDYm77NF0BySE1wy50U6D9dtqGM8VMqjkjtjMKi24eO9ztbDFJzJpVW5jVdkZ722W9hKNMN8p8MGRnsybGRux927yYgo+Ct9RlbPN5WnhcMsBc9pAKSSS9XMfq+L5RV3TMgZ4bHwnHgsVUCjBI7iWLd0/LUGiT9AAmU0Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785993634; c=relaxed/simple;
	bh=ng6qtaazhpFjAVZp5x3MmHesl1VYAU3wETT03otRFYs=;
	h=To:Subject:From:Message-Id:Date; b=L2fEyveJPcy5oACK2SnbMhUAR9pm16XOL8JyZ+lVjWHlX77GdbSy3CFaw7lxWxw+B9v5HofX1fZzodFbtRr4c5nZBOX230VDA9sMwEuUlxHMrzQ/eQXvtm1SfYwor8IBxKFFOKEJ1X+GkkVSEo899jYI9kP7BVrr7hYoR95A+I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xlmgy/Y3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xlmgy/Y3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA72EC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785993633;
	bh=ng6qtaazhpFjAVZp5x3MmHesl1VYAU3wETT03otRFYs=;
	h=To:Subject:From:Date:From;
	b=Xlmgy/Y3G7UlKl9BifSJ6Urf1d1lF1qXRdpYfaUMXe5rWbuS4tHr1J4ZOaGbamCv7
	 3o06nCxiCcTeIUedydept5uN/81dcGJRZjy3gRCZPtDzjhzaf4yNo972n3XGuaLjzL
	 xOnS6FrwLDe2RpOu+XyoIdLMAxcL03c9EDmlv3k24Rp42qkayfM/R1PbDEoGDiM+2V
	 y/0WxDJKG5fkhE01/pomva9ENFq/6tlUv/SXeC5K/I254BH1MUTxHNG+xr19/VZMoX
	 wW+8skxehX7FZRriric1vW3DjHTNCYaqpSxPpf4J35YxQfWRPkNnPoxRczqDJFmL/S
	 uTDAMTUJZvDIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6896C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599363373.18037.1910347755179183118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e2943a7c9cdbebf7471a541c87d2087a48d94707707f1be081b48b57852732
Date: Thu, 06 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785993633
