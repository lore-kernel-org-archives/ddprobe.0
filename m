Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B4049E122
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789080634; cv=none; b=VXHX7EfjbdD7KKzIHq0bDdvvTFXZJsEr36eKGYlYV3575tY0cpEfDJUS4asFsuDDr83pQT0BqBNAdPlnH3YuAMX3bxPKKy1tNU1su3wb931Q3BPT7p9HS4zVpPDw4sCTvBVcVl3C9jm74AdyLr5cAJ94tnzYnP4MFa/3Couh5cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789080634; c=relaxed/simple;
	bh=RMsy4tqBsANGVeJyMsPtFFGPXfrKojGE2ltFYxFVoN4=;
	h=To:Subject:From:Message-Id:Date; b=sR+Vr8++/YFzBFwnQQSDKPoVp3KQM/M3mi2LDBZc5BRPThiprXxCcfhXguK2IhZ3RTaeIpJ0VNeABm3VH8MgbMeMsQTw8rCAI4V8x0G6SjQ0kVaasM7E2iQk+47JaXFrepwwvArbj35zxT1ZXkEDzuPAGt90ILntV/7YczFrU5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIkelukc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIkelukc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20C9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789080633;
	bh=RMsy4tqBsANGVeJyMsPtFFGPXfrKojGE2ltFYxFVoN4=;
	h=To:Subject:From:Date:From;
	b=WIkelukcTDLGIsm+rGWCosmvc0uLEXVlgX9/LmXIeeWZC0OLUcMN3pzpjXl/ehCSV
	 xHLpfb9rBCXN4yZ5elMmxTsRhTdVt5u+Dqdt4cDmH3QEAc+x2msMunPREIeuAmn2g1
	 aoPvvwAzsszyCS0vnR3f9/PwcQ6+57EPbn+z4xBVfEpJ3jM4ZgyFI+h2BBqiQrbV0N
	 H5cDXGH4y/QP18Whcvh3/B/JmJza0jByvT2HqbtCWME+QpsQH37GOkrEIXBWqVPlEn
	 Qa/1LPWHUqF+VHBdhgwFEOeuWtL32syR5CT3us+6hqwHqk00e8jYtrgka5vB1jQQWZ
	 7m42kg07i1KzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1C2C79FBB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908063368.31843.16528441630074991381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0efbd49577685648e4c48adbdc4596629b3a88184a6ca565cb250223a1d4ef
Date: Thu, 10 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789080633
