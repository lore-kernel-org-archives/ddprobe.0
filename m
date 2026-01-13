Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040C231AF3B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768337634; cv=none; b=mQSVkg15gYHmt40hsComKpB7qzw9SzvdAiVcDeSmKIpUHuGsdlWpLlaDyx4gifdDlCBrWmqmHyg/y5Cx1lyKt5js9ZqvImAN/gxn2x4Vs4sxZychfytewKfKyzMmI0HsRX4SFgQVqR82MhF5BnFxuZDl5TfNeWnXHT0uVNYPuN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768337634; c=relaxed/simple;
	bh=ZQO1eytZz8bYnM6zFwI/vZVt0L1FCami9ArjrIs59Zs=;
	h=To:Subject:From:Message-Id:Date; b=CGxukn++GNnR4Hd9xfdWrHz6fcmopyjFcNepTciQ/ozch501eLv5eWTZQHu9KHNYR3Fj04hkor7E2bK+HYk/xPnlRLtS8P9c09VkjHmaBLd5RMbM4ATY6lfc+Ertw7IrTiW499JSkgX1xa7gDPfHnRMs6ENDHqZ4XdXWabDneJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHR+voHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHR+voHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E942C19422
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768337633;
	bh=ZQO1eytZz8bYnM6zFwI/vZVt0L1FCami9ArjrIs59Zs=;
	h=To:Subject:From:Date:From;
	b=jHR+voHk2+KLnTKjxDw13h59kFWOcthUmsAq8mW/38g+bk19astdq84j2D5qC8pGn
	 DXtDiYdnfnerrQyBZj4fSQ9JmjLyEuRUR+XEZuJ1NzVtEtstoeN65EORqx8lvLF8Dc
	 92mdHYMeUTZhSgQ4+eNyMTV/zrl0TUdMdtKXFjoTBMqlBBbhwUjeiu8jWTHe6CIHqj
	 Cz8GiGF1bu8idwRVf37CSsNASUgoYHErsSVTR2KSnfAMqw/0r8fuCvKOKs2/wbLKRq
	 CKNZitgcgFeZ+cyyxjayA3FEKZ9EDdHKpaeBpA5Yk3+NyEyZ/D0tIWKtCU8X3+y3YK
	 BI0py98CMBsoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFFD30CC2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833763358.21001.9223101324214800218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbcba5f97317a65a69739e64565b23f44a882b7328b29089f0ed338eef3f5444
Date: Tue, 13 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768337633
