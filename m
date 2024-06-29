Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C8980046
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719690863; cv=none; b=JudUDUEmimKtughx5X8NgsmerDRguSFMto3O7UZWwg2E1YMclQGmNQN/fOkZSM01T6LEgDZucH1PhgOJ19ZFyEW/V9KwnisFVJhyWmvYgYdctYowEz5FFoWy6kIe9vVLHZSYFZ0JynD5MNRjSyUwP2w7DtTC/oHrJcpAP9a/0pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719690863; c=relaxed/simple;
	bh=eU77TWXIQTzUt4Apumcwg0f+RewlNaZN5snzBinK0MA=;
	h=To:Subject:From:Message-Id:Date; b=D3YzrLdfbTjG/NLNP6jBlLPf2zzpytq91gv5NKCcN+w7n3xJ2I2jabLuKUqhPwH7vK4APfLdrHyhSf7LUkpzsfXi6B6DBzDVmMQEGy3dzc5wCN3Q/TtSVHHT78z6kb8dRnkCYJUFxUdJAQXvKbPeLw3UoTukt87EnG6T8DE1tsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMkWYsEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMkWYsEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61E3C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719690862;
	bh=eU77TWXIQTzUt4Apumcwg0f+RewlNaZN5snzBinK0MA=;
	h=To:Subject:From:Date:From;
	b=IMkWYsEnAwPCoMdZhZb50dswEeVqHKFFFYDxyW6walbv72r4H8jAuo113+xcYoKNg
	 UwsEqLxtlnfnc0FcCPn++KCjLTFYmXN36wtl14Z33zymu2d5Xm2bQKxC/OhWEaq1J8
	 97DCPtGVUhsz+69G7AEdp+6ds6FulkMZ9FYixV4j7rCXROUL9Ndop968LJ7vj0wCM2
	 9Tg5QdU/ybGBY2jycHAGrCzRecf082Uk7/TvCLrWpsq+Fz5FDI+RVFyvrnjzlTy5FP
	 iRncHxWBV30YbLj4gxKx1O4oMk1gtSyPA8a885dDd82bNRT3VIJgIVM4F0oVPam7ot
	 c2LCb8MI/CrzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D7EC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969086276.10282.6388872106048345431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257430aca83a434de16b2b3ad521c29c55ee11a8253da4e71cfba22181fd0248
Date: Sat, 29 Jun 2024 19:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719690862
