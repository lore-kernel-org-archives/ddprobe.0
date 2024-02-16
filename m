Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F0F135402
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708114097; cv=none; b=GvXcM2Cp+rd85tB60XltGp1uzAdhftqcSCh8R8pjZkcnDNb5g2We0Hwhp+pG8TTkgSMeyXmXn0JlMzzawrLX1mZM1tFmLgVY2M8oD/0nMBn5ap1Igh7OShhVmOLjm5yASVvWmE8C5M4vD3HXEE+APP9r5lr3Ged4DOH0CdicUJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708114097; c=relaxed/simple;
	bh=+VPMbKmnNUsZYognzWL3WXD5x8D6DrgfK/EtI/+bF0E=;
	h=To:Subject:From:Message-Id:Date; b=ZoJpERDrbYXD0H+lvxqWQ3G3ULlfzDBRcjHEQQdQN12SL0WKmE/nrp02n2p454wS4DZTcvVZwmHB79L166R9BckEdJhP2QZBEzgRld7X/a8+yD+B5/085M+wchj0YOsCyDMbbbIGVrhbNr8tg1wDvBdf0zHZbBB4i8p4SwCnj+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLMq/hYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLMq/hYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F515C433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708114096;
	bh=+VPMbKmnNUsZYognzWL3WXD5x8D6DrgfK/EtI/+bF0E=;
	h=To:Subject:From:Date:From;
	b=LLMq/hYM2a9Viip//O+O+6PQkFCWGDPqMftJXOH7GfrHbhToUASJoyUSGcjKyHl3Y
	 fHW1ABCUH3xW+76VIbul35UfuRTBDERkRPpr/U3wrJX62aoXNjU/mf2R5m51FF3l51
	 Yz+nbxrdxhC+TQbETn+0hssYehUe1v5Z1vXolC+XDPETSrFtxcQQMosrFDyA9R618q
	 Y8lYyD0zOXnlup/7QT6cpth928kg9k1q/rvYqk0HD+4sx79WDfH78uAomoYxs//MJ3
	 mvnSwcQdsAatNP89uAZlCfLifTGyqeopZrstt94fmjvePaePwQV7GvJ6pvE6FWRmqm
	 YZkm2jaqfGbHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61389C48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170811409636.24951.16547627391219101316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d9ac0aef4f3cb5c3388bc9cae0281cc4a2cb8197ecc2571b6a5b2e1df09a84
Date: Fri, 16 Feb 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708114096
