Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C6810795
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 03:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714793543; cv=none; b=jvnO7wMNTTTCGubI0/P5wZotuju2P8QdYRI4IkQeLZZZzmUvAzjUeEeCIMAx3mtVFvRrAgfuNLl08cpKSDi96AC6KAYNRFaUZ6eZKUXv+iwCFyqqSitxN5fD1zTT6ljtNf8iqKAXI6si8pj0F9b+o+nDf0ovL/UNo8pveJNDkjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714793543; c=relaxed/simple;
	bh=aHRmKOo08Si2vx3iSCRSsqH2Wh64weKy6vpRTeztZw0=;
	h=To:Subject:From:Message-Id:Date; b=sMDKn2xC3oTHqNXjl21zP5D3IayvlUktFpedwArvgi7eNPHsXoMc3ZG191Co+Vg7uShv2kmnzuRHJsZ69bmq8A0ZRrp0HdR73w70xHMwKFRDTCBXyMu9z+Z9saeETarAVRAsbAR244bD4KaCuBrphbxsCejxgRLMssl6BMskXsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GH4mGvMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GH4mGvMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D298CC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714793542;
	bh=aHRmKOo08Si2vx3iSCRSsqH2Wh64weKy6vpRTeztZw0=;
	h=To:Subject:From:Date:From;
	b=GH4mGvMWXgLma+CdCYW0BpCd58rzdZ1cUYhrySFW0LAJY53Y5I2nnGLDr4q1QVlN/
	 tW73sFYpDweUSuIFIb9r+caWMOwN0Ogd0ICpz1yoQ6KflIG/wjnFcVbTClx6T7X9lE
	 dQyN+6qsTYisJDeqjHHuDT3BlkOCkiBLCMDngWZ5SWEH/hVpHLDNFMAMsbcBR7p1BB
	 8Jvwb4frEO57givhi6K/Bp/cEpgAtWXy2yr5G1LceG6/RfPtA/NPsfapwLRdnOiv2K
	 X/H2Ot+hdD/NrjKe2pu7OnigXAxChgOudg9CT8vUVgbBGZf5uMYZmvEHtYdmqfOyLc
	 dsLZs+78kyAFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7ABC10F16
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171479354277.23598.8027264449125402466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc9155a622205d6fb803e0cb0e39168c4f8a039b96fe87c2c4b41314fb73fc7
Date: Sat, 04 May 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714793542
