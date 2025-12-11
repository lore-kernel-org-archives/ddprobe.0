Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D29330C602
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765474974; cv=none; b=Xmlx7JgoAR7XYW7soH0wYQ7RgxwtHpeB9Mw3z127/rfIa2Rx3XU4ocpqtIzbZvlA7i+bEf0vN1Vlhyjg1TvlqseeddfcxLjbJ2YOhr7XBRSeYqRjUR5DlM6DZvUL47/Egw68cRxsQ4rryL4JZ8J8dCnN7E8V4Rp5sA7TuylFjKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765474974; c=relaxed/simple;
	bh=KOshzuaGd0bLrLNkdpUAMaj4AQmxaSybsQRUMZ6O75w=;
	h=To:Subject:From:Message-Id:Date; b=p6PGS7f/mQBYRnwjhcFZhE1YXC1pX1zcQ1Rg648sKIqMO/LAkh9mlMF/5r31+PVIBytnefr+I52RKUgUjotbC762CcKElBjHkzqJpazUrUKXKQpoRBcN12efino0gwP9uEKnzQSmOJ6qGr5ZPxhBvUgHvSF7dP8kKavJ3G67T4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwSkDWWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwSkDWWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E71C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765474973;
	bh=KOshzuaGd0bLrLNkdpUAMaj4AQmxaSybsQRUMZ6O75w=;
	h=To:Subject:From:Date:From;
	b=jwSkDWWh1CbFgDeVkFJYnu6qThrrvNOLFIKlJxhJIFpgDPCsRKmRQELgCeCB6C05Q
	 H6yJ+M8ixfJHp6P9neB7fKGnjVn79246/8HU0vvEtSOqpz00nwuSwrnwzOuODA+NCn
	 rvm1VV3ze0V/cZx4RfJYKjMF82ro4/jiQr8pmUj3pkt8Tl+Mfqbot3cqjS4rsXpka3
	 L9AhSYtdx6jlmw7inGohUjgirSbC4a/aBuhGSBoI26gcWPcJTGPxi5ZV7TLTUvCdX/
	 jjS7NN3/g4+zfTB+L4F/+EM0qvz0urp5XB444WB+Lw5uRl+5+TIMUcLU7eGltGc5Ww
	 PBbydmpxjdhAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7B1D41D6B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547497359.28842.7580959304282084950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8d5d82166222c22d1416314422e3634eecd99ec13fa755038377ab0ca19b40
Date: Thu, 11 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765474973
