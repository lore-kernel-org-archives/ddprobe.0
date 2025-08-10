Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEA820D4FF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754863794; cv=none; b=JaeJmHVxQru4cAYjPRXC84ChpPSuHyrLaWvjphLziU23f5Kj6+vrkueLfqmOpuO1XJt4Dpkec0MWY5KWUKjOX8j7/a0883G91+ahb85ujwldnfJipYHYXqK5b1dXAOZhzBOhQ5Ln83X1ug8g8i/s66mT+2MZafrymurouEX8H90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754863794; c=relaxed/simple;
	bh=DODJ38bhYWIwnG03zni/r8C5USSP229AKeQ5aB+Gs2U=;
	h=To:Subject:From:Message-Id:Date; b=Jy+dC7IgpcnB13yEGMT5W8b9m7q7/wgn1z+bsbibUB5PN2FIMkPnrmMURL+rawwlmqk7g2kLe0PGoXyss3wHpHzeEo4cbng13/HlIPGxsujJRteM21/XBoQ89MUYwKujenArvMvjTq6r63SpeFWkiVWKaX4jwVmX8piXKZDvicc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDpUhcsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDpUhcsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDC3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754863793;
	bh=DODJ38bhYWIwnG03zni/r8C5USSP229AKeQ5aB+Gs2U=;
	h=To:Subject:From:Date:From;
	b=nDpUhcsG7Pn5Rd+S3iWcmGLkbd/yFzBMIGpdMNiW9q/n4xUkUjUIK1e30+0OI/vqX
	 PxdtTa0g5yo9YxTXjqmUi3CC/R4GlQ3Xjb9Uqn8wWZH46ZDvKC+R4pwUsV2sI64PZy
	 Pe5Z4KvNadpLZxWswic7DAs8YFTGlnc+I2GoMQ3JM2LGI9GRROjgbaMBFZIyJl43o7
	 O+vXpJVPFR0gGpWK37YqfH4CBlt4OsCXl7dAdPylxeszrpavyHwyHUVUSlRYUyREQV
	 weM+qca4/BvllKA6NsTZZn5EOH3BHhubmp5rENHwc8lteGM+EZUr/IcQT2cqT34UVu
	 xOjJHMhYjW0DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E743C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486379357.22809.6806842017531171725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e203795991904ef0ac440a6ea08e529a8ab63748ba95d2cb1dbd7f2e714775
Date: Sun, 10 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754863793
