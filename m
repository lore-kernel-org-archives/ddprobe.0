Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3A23BAD82
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776860254; cv=none; b=PjUHvMNQPe3UVngG6zmJk0p+O1/QeD8DyTwVpd4vLX+il+OeSCBg8UWZ2td40Gcx66NumHL9DjakWFstw/8Ta2+IRBEQ3wzZgp7mQi0yuAQrTYGEtmwAs2wQVb8p407TvsWc+G7p8gctDK0ogJRKhzfVWf3tGfnA4FJsyY3PFOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776860254; c=relaxed/simple;
	bh=OefNph+NDo/70EXnwrtqWE+B65/xF97Oxkj8HmXt+X4=;
	h=To:Subject:From:Message-Id:Date; b=BOZdQRwLddsIw6xaXSVUvmGSKoWy4Eb4MPcqy3o0gapjIIc5TUre1is1skLZneLhG+h0mkjfNX33zvlIGu78gSnmWVt32t1l2zmG5J01I0cAHWZ85LkMjzKvzyGPF6vSAPTQ2DPNUHtblq2vw3U8R36hPKoyW3LI3Mxfy7b0tUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk+GwpwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk+GwpwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBB9C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776860253;
	bh=OefNph+NDo/70EXnwrtqWE+B65/xF97Oxkj8HmXt+X4=;
	h=To:Subject:From:Date:From;
	b=Zk+GwpwN+5cJyiCQc+eXvsSUn+rRh4db7Xj2c1KIoGpPmeybMhHpwr9eWaQWxejcB
	 jBHMdPphUvBvMW2DC2QCQ4M48fl+qEPv586RpLwQ645MOMLoOMNuOmyOkAI8X0bMTz
	 p7Ye3JyvWq13QO+OdBNz+9Loovu2Tcs6RthkHw9z3TiySpk+RVSTgxxnhVcfpezPad
	 WpWxin/kS5QZflMRNqTUSusjqT8aqReyuHOvbnp3dm1Z5T3x7d7ix8LvtpHpjMBhWY
	 R3BWDU9T0QfxHd7VH90BX8WVHTmdEvnKEfQmz8TbmQMB1wox5swa8WMCbvqcxj3kDp
	 BHuCTU9TRz3hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6EFF9EDC0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686025369.21964.15729292327591914243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6c4355b71efebc215ee088b85e05deb9d589c4488032fc9a524c13b7a51284
Date: Wed, 22 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776860253
