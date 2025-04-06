Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3672529D0E
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743906594; cv=none; b=b6TzGo42Ef/OLQdaKjdNaxzY5yO5vdmHrFzKv/+GuCZAgorQYf6GAscaeZrqVSiWPp/VIhc+iSd1/WElqJsAjD4PH1AHE75uGbWSpzbesAQH92nRlfN2rwxsCH6XVfEmlPWFVxC1wLgON91YchDj0phby/JhDRiBMyxrvjaEFHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743906594; c=relaxed/simple;
	bh=QPmrOtIXiJYZpKZ33Lz0V8z+BOhzeHONMPpLPgODIks=;
	h=To:Subject:From:Message-Id:Date; b=sWmDYWBCmhN6YDDCVXiroyaksFtyS2+BnMUrIReUblltPiJDKw47lYo8lh55qP8I/d5PpdVWpKFgPZd1hrK1u9NQV2gZZ95fmx57prIbuKf8S39A+L86VznodgdIv3G8uxTOs9Eef/H7SPcuFMy41GZMUNj0h255LYtIXtxfVD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFH39aVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFH39aVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB314C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743906593;
	bh=QPmrOtIXiJYZpKZ33Lz0V8z+BOhzeHONMPpLPgODIks=;
	h=To:Subject:From:Date:From;
	b=lFH39aVGddO1yd2pEv5ND+Xehe2yWqYqvER75X/TRHxo3xiu9Obkd8/ZhR/6MqVMP
	 iZrt2OWxVXZji8tOe4JMQ3ma0Z/UVxKryuLJ3zr+ghr3Ak1ZRyErKFDMwwRfd5n/Tj
	 9BSmhFGzVbe2Bwd/rQ1buSFKUUBYXU9ayPMKHW9BOErVS59Ci4xWEwpVD08kOSeV0+
	 OEQQIk5z2Jyz0x/N4xjgeO6agUrUxWN5F/7uM8Scb7y3A+HpMwbocevxDVIdjCJCHZ
	 ALZcpaTEg6ZW3as3xGeJckIYetnNs+i0tYT9FwweWifWIshAtFixxpLf2pJxZbjogX
	 Tyw6Rv/s6eb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D3EC36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390659360.17904.975197621419533692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27669df9883064a7aa55441ef28ccb112cccdd1dfba75cec4f1b41a77b7bbdbb
Date: Sun, 06 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743906593
