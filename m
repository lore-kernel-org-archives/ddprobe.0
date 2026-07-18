Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD00EEBB
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784338114; cv=none; b=kKgxd2ARANe6433WGFtulGliOvzoT/WLg+L9//O1xsCwE2q1w9sl0FEtgFlhRINGTVqD4jgI7TltWEdRctoMgPAf6rj4SFzjpBuFlqYSrLTq3MSfx9Z/sdJHAD9fiEkhIJjD4I2NIn4BIGLgpplTvbAsHIvEbTKife1HuTnPD00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784338114; c=relaxed/simple;
	bh=9azerOMhiGEvxBRjfcPkmBrf674ps3fC7CA7y9GfsR0=;
	h=To:Subject:From:Message-Id:Date; b=TZ6T1uJvzK0Y/iFqMOOF0yh362TDhJddPYDj/pUQGgKMpvMQFJSora1u8ybXTsoZmB8mZXZZjbwe5l5YhRQRzIa41PHP0LRxkySUDvGmyOm5xyIIXH0X0lNu4p4xXfOHoVRlmiAVYtbiHfWeZWeMBXjGVCueqvN5ceJsA047pfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuVcyGym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuVcyGym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0BAC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784338113;
	bh=9azerOMhiGEvxBRjfcPkmBrf674ps3fC7CA7y9GfsR0=;
	h=To:Subject:From:Date:From;
	b=VuVcyGym4vRaeZMsljdiQxwyOsAgXatVyNZ2rt8/hQNXtvq0q52NmVIucp2a7Q4y2
	 zFgthR93564CdHTZFp0z2QSE1NMlaQEGYkTHmnHLOZxqUIyHmK4SkAOr0JLI43IKTw
	 tM22HAo1dEy4KcR2F8ePkU50x0ZpbIXbReMd/g14CTTO2xEgltyimm2HTkJ3gSMEYQ
	 xusHC8/XAtsY5QujDAOlE6KhEQw1wmxWCIY+dyfcwwfOWV/qhokmcYl97EC/WHvm06
	 PVGNOv5z65/NbZIAV9W50hCyx+epdi3nMXfZYirs2heMmvcIwdN3gq/WlQXB5nc00H
	 86AMAV/ASsUaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA14CC44520
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433811368.1522.17514309838681742448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0498c31542c960c365abf93d0dbc0c915941b570fd0836288dcd32a1d040362
Date: Sat, 18 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784338113
