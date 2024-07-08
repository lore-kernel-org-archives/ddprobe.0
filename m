Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5482B3F9F9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720431383; cv=none; b=OZawYQVt40nRuzYAwgxbpJHfEamBUBLrq0kqpxJlKchhkJnIOVqTFiXeQFoMlOFhwNFkNlbwk1MseYgfr0LtvvJBxW6tvT0kvV+/b62uIkqWzowzi/w/vUyA8h2aLorPvFxWzcj1W8+ExWV8RiD2/FMfmYuxuNYqAhiwMsdeY4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720431383; c=relaxed/simple;
	bh=qaCsBxT3PrAQtpIHs2Gcde1h4EW4jmX9fLiJOJNPyYs=;
	h=To:Subject:From:Message-Id:Date; b=dwz1aI6R+tZYdNZY4sif7hl2OwNB6QSqCHb+Lq0hmu/Ig76a7hnc+wuNgYLhDv0MUDrXo+4FuhKwqaaqksJffUO7b8iNWGZq0RwoFlhC3BRWvT9G2QlA0GYFxoOp4l56rhUSnMPqgrj81BuQZFaKG6jVqtIl8tLuAR6RmKxbLhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwj27e4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwj27e4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEC6C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720431382;
	bh=qaCsBxT3PrAQtpIHs2Gcde1h4EW4jmX9fLiJOJNPyYs=;
	h=To:Subject:From:Date:From;
	b=cwj27e4JcR2ivba5QsTin2xyC73IkydFSraNZz4NcK3pa44+Mc1okW/qBJjLRCClZ
	 YgdUE2fxQLGYRr4tow9weQg47zUuhF0WnP4J2MXTIH/3FFLr4VXAtoQzTUM/qsKLQQ
	 cy8pvBN7GUHYDrI71gUwb2VtrH/gIPA8IBuxsDC5M60JM0XsAnivEIQnVLCjkhXJSX
	 PwhWhkmN7TwcF9uSW08yJOUialRDJ9CXaxIK4VwBdUjHEFmZm6Jz78Kcs1FlzwgaBw
	 f3mbxH6ybDbntTnNP4t/psr7ftxcjlxlMzZjSh7kLcoRViLDLeCaw+3J1WbDtl7v5+
	 LjlxYSVoCPtcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB36AC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043138275.13986.1985384196436318683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23ae883614710c848a4ff98bbdf48b6fb2ffa98c3a6a0d61fc63cfc70df06fb
Date: Mon, 08 Jul 2024 09:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720431382
