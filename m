Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFCC23EAB6
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763088594; cv=none; b=U/W3Zc08Hypb8I9kfxbNK+czd2XahGE3LtbR3EC2refa+uwmuVYttCwpYXhdQBZ12rZ5H8K2N6MEzs+eZ5f/P8i+AjP4OP3Amzm+zACRoCAPiYkoyUZzs4pVR0hbG2ee0Sdopeo3N6uXR62O0rZYOCO1uvbcZ3FurYJ9TwE//N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763088594; c=relaxed/simple;
	bh=l1+IBvSlQeOZxwC1HbSnr0kCLy89XioKTqc23ZWPhKA=;
	h=To:Subject:From:Message-Id:Date; b=TiXZRKCtL1NJjqFFJxZ94+4FmTntwLplvogTxk7ejYPvXONUbNkGg71qqOXizQPgfJ8hLOVHgicGSWTXM3xCLCbRFoOntzuCv5vxrBoaTFQeSMSo5VdUanCXq3P9xQq8/fPReJLu8G1U3s4BFSlu2ua2Yue0dxWKw44a21iLeGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acw+9IJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acw+9IJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC382C19423
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763088593;
	bh=l1+IBvSlQeOZxwC1HbSnr0kCLy89XioKTqc23ZWPhKA=;
	h=To:Subject:From:Date:From;
	b=acw+9IJXySBPMra1yyo6R66+HyLRiFPegtSjSL4dhEPbcUiI1jXA8Qadflc5GovjE
	 qOJqISwP5MCYUJswiMUYUjwXLCykc5Is9guZ63goStbqqx7i3Yjkdm47U9gTkaTdB/
	 vl6t1t2jRkdF0Vnrq0ubCf0lAdJnO+E9VpiB4Sh/9IOJK5X/gcgg/S15dcb1a1D0Sa
	 YFNnL+znMkj5sh7uNr76790p03NuYYtWExPO3k+k9GNem1+nw8dBNCxB05MxcPmEqJ
	 bGbJtLRJLRqE2KEESko/JWKY2/GWYhYbKk/mU3s5TDrbiWzNNTsbthcFyQIMRFpE9h
	 IMfpjO/05jP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91088CDB475
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308859358.19853.5131608864664992719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7934fa2b3dd7220d4197200347f375b1bc032e3c507021e79703aade4cbf02b3
Date: Fri, 14 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763088593
