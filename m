Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538C1746E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738026954; cv=none; b=gLuh1FpLFXBGqx/YEur1ACiqMAuSrFLwdcv/dPidd5zb88oD+Sbp78KLlbD/abCVMc8x5nkh/8cLZvX7lePCmuN2cG8x3+9bi1mDvWH69MvQJFNTiyFVBCHzwNsB/k4FxGu77x7bjc9Djxe4TkmmwOLGPzKaUcHQeTlNHwi8MEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738026954; c=relaxed/simple;
	bh=g7O0rqgCNeSAPORRK8UxwLjZrEjQkkw4bR8jpWThzWQ=;
	h=To:Subject:From:Message-Id:Date; b=ctmTWEy6zwCHdAJSGAmYMhJPT+GrnDS0pzViR4lh9635fR/9cBMyJlSM9+D1tttDCMW/wKa95Q1oz119Glm70UtibgOQRBy14arWPUYxLnnb2TGvBRbfWJCF5xZ6MjDF1cQJHJ+lqyY42x3Vgr2d2oLUxyauUs1ocVKV9t392Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwueQoVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwueQoVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B270AC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738026953;
	bh=g7O0rqgCNeSAPORRK8UxwLjZrEjQkkw4bR8jpWThzWQ=;
	h=To:Subject:From:Date:From;
	b=kwueQoVkguKEVIITURKiT7j7f8CAHOzN8Er7CJI2D8QhKfk6EcslWQArg1LXMy3B5
	 cv8EkI2LD2rP++pzVVasYYa37aT9iSfCW00I+VJdfalNMhSsw5FyoZzzAsQ7kCofxD
	 g3JykO1qI+/gnVsaz7fboy2CoaNWtCDLBCSXlrGt3KORw0TzWHES0e3hqbaUit9gRk
	 LhzhGnRCz96M0FYVyduqNnGl8K5e0hhC/w/Jga3nGdwCTxnOXU22hsITU2X7YDaAyi
	 9OZN+/Cq5rjIikWOMP2K08/Gm2qMXgcIJoCPOCo3kUWLdgkg6YcxaZB5pjKkIfYfSa
	 /riW7WI+xAILA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991A3C02188
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173802695359.2876.5464805541352935741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff7a82c498d45857028dbcba4cd9a1c47a7ee3169bfcce24fcf833b11a3e8fb
Date: Tue, 28 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738026953
