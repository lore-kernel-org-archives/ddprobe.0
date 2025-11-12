Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A2C26E703
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762980594; cv=none; b=pNXwAZHuPLy8ElR0vVaajaXCZiOoEpGaLnY44n8OjqnJUmpmEA+t3CgYn5/ClJQjGt+9R00EDCs8a2S92czHqR9x1u8sVRMa199FOgon0lVyIujJJaO25+PB33xPrS+sqgdqy5zNwJ6gjB24lKGwqJlwLGwYrRROPr8dmzBN+Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762980594; c=relaxed/simple;
	bh=tduRAE96E0zMn3a/D8YT9y9huxosvdb4dtaJD+3Jv3Y=;
	h=To:Subject:From:Message-Id:Date; b=SvdPpRXTMjzfWN61mcrC9RKo1htulHDQzRwZ0qRdr7BFTos14vs5Z4lcFBA9RW06AcP4rSeCxnqiV9FQL40dpfIs8s06hUMEEaNEWZstov3v7nn9OASxQNzI3u0mQ5sqhVQSzVImOQyr73kwEi+ZAxsn/CmuiDZyCFiIzk77IZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6x2SMeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6x2SMeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E54C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762980593;
	bh=tduRAE96E0zMn3a/D8YT9y9huxosvdb4dtaJD+3Jv3Y=;
	h=To:Subject:From:Date:From;
	b=R6x2SMeHAgWlD2O3YN7jeDLVfyWItS1IcBsMtXoasrrqLxkwPI5z1yaFezcmoLIiQ
	 dP6N0NlfGM39T5VJLWaLdbMSc0IX/E0nZQXV7jwZchXtmhQZ9G272c2+Hxgrie79ss
	 zd6ggBTivBsOvgHLchcrjRuny0eJcW9o+RCU7LhltPeEnso3KeACoiMPQTWqLOedjY
	 PGIYe0zfmaNhmcAXmLBVBD7yBJ943T4hakV4CZRv1bT38ElShuxDVjK5Gw8xwuGein
	 SnAUzARqw3+L4BaW0xPoGXfZEH1xrAqijacIE3zHygWnm3i2APRfSxWrHQ5papyH4k
	 wHl1L0EIV8pvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EA5CD4842
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298059359.15815.564746795544839027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b0058b98782a84b2969064f00a0cfe78d755fb8ac5cc3d26694e544bf35c23
Date: Wed, 12 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762980593
