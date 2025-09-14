Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204292DC79E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757874594; cv=none; b=ckocOIK9UbX77hj4ZmQ9Tp8WLgv17nzodRHdtR68GyMnWhEM8K9zOL+04CRoAXqXR8+te5GXe2qxUygzyD5J23xSPG3GhS1C44bGv0mHHvkKUiMx3Hzdy7NnqdDXMLdsS2mO0J8pGoBTklDSDU7sQ972jIBvRcDTvOQhXgVaoMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757874594; c=relaxed/simple;
	bh=pTFtUfrzswIhDYwUb4ovsZTblGq4gVZWSngo087xAfc=;
	h=To:Subject:From:Message-Id:Date; b=V8rplVgDA9+eG5C8Yvxyqxgh0l2UWX/V01agfXP4S1qY3rkIFqvDwfYy9c897uHQTURbJi34rvv8pMK965qAciVkV9ZZmF3XYCs4FEWP8hZFa2MUO0vLnAMB1cdmiqCzaNHhUWo7uC+qtQk5oBZRuGilETYwIK5flu4La7lO9zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4OAkSYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4OAkSYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5119C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757874593;
	bh=pTFtUfrzswIhDYwUb4ovsZTblGq4gVZWSngo087xAfc=;
	h=To:Subject:From:Date:From;
	b=C4OAkSYtgQNhpH8FHccbL446yUuLkf3pBr8MsGrZabsUzVEb+Dn3fQhtuZ1mLqe+n
	 yxpzkBl3SSDWIl0qufQffDZZSGu56FuwJwwiExlgH86U89fKBy/qkYegMyBed/vscQ
	 +cZhx/ut+UqcJSx4xk16Xc7kMMdhLx19gZHZKMWJNsIaJ7yDuySCNOCU70XjOebnHt
	 gPPOLUvzlQeOWMTsgSg4FgyM3/ftXZG/GPgLzl1jucYezPX5yz/ZUM0TP4sdQsiuSI
	 +u5Bqkf6n8wlXJAhStFTbHzpSkx3TNe2gciSliHeE29zgumuxWvFkRqHrOQKb/rFU3
	 q8cI7cBJMEMMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911EACAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787459357.14856.1589568828322370936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be711df3e099a6dbb6f84827f2c2f0d439c71e62fdfa3630b912d25ff7dda777
Date: Sun, 14 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757874593
