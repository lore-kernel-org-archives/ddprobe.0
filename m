Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B0B24DD13
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754893194; cv=none; b=FppWXvloUUzR1VPym2Oe/smTMhTXbc0OnMoTcsL2pSaq3jLkzMcBLhBLTMzDO7kV7E33uMUwgytbP4xvd4BQV0cv+eyuooekboF+d8gzayD7n1t6Xa+0wg/oYsWr3AnwIgh3dkC9Mj1md/gefximBXK4U8jR6sGSHiwrKlazsUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754893194; c=relaxed/simple;
	bh=X7c6S1DYU8+UXqDq/yC14OJIqJEw+I16F0lq3hIwQFE=;
	h=To:Subject:From:Message-Id:Date; b=lySziO9XLznL9r589xlRBnWNIoI9uX+ZraGa9qGuebTy27UWN9ZAyZclTTI1pnawG5k1bFmr4SjntHLux845rSkhSBBKRClWpQ39Il8449AikCBzkH0z9fbMbGV74nTCvw90AUGkYC8unDF9RYHMBuRnvV/VD+ERAvzqR7djZWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPGQOLV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPGQOLV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D15DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754893193;
	bh=X7c6S1DYU8+UXqDq/yC14OJIqJEw+I16F0lq3hIwQFE=;
	h=To:Subject:From:Date:From;
	b=qPGQOLV40ZYcqlCOSbiXcgb3DX/oHACkRRXeqwCeBaXZ0yplF5qFgyRJNxbFJxkQ4
	 p946pxKHkasJNbAoZjDRif0EqSMWLjfIocgiBJ2zr6lQn5YONffIeUUz2QI13Vh9W1
	 b9zZH2s9YuX7txvteSI65Ysjs1QZsUdgndewB4dVTrLu3QPeD9Lqf9NgupsTfxXSZz
	 fYdh/s+JZQC+wmliUP9wdrgo1ZvNAtcnNcZLJpgtpI+e0w3uS6IcbvN8dYJQgLY5It
	 MLKazRaz0COjf3uFYaQ+gAq4QsjqRqZs89Haha2S0F++TrCEGShMscKd/q+ZdX2ZcF
	 BDof4WrGRiW6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E574C87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489319357.29525.14682666954836608343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b15b1be193fc947d5dcc16f39abdb04ea829dadb6a811c2d508701438d6074
Date: Mon, 11 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754893193
