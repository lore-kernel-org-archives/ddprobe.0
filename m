Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377842848AD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765036974; cv=none; b=nV5F+jp/L5dznKtuidwKD8NSs0WOaX94Y1xfMKwVLZHbJ73SMHTG/Ew6kCMgqEj8wt0hL0bjBlvVapMQW1vy6luReH3Ne8K2dUHERaT90XSgUdIFuKOe6owIk30nI6pW81F2smdifJqG5cv5Q9BJ9MKsLGSQvsCt8q0pY4+/UBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765036974; c=relaxed/simple;
	bh=UbicQ+j4glXhblCFSHWCCEDdZfgtg7oPCqyB71G/+7Q=;
	h=To:Subject:From:Message-Id:Date; b=MjS1julK2H4GjtNYiY8TTNzrxcYaUb0vZwJoy84SCarvvWisPqt8/ChfmTwPIEaN16bz7JiL92Ynq/fA6ZhZmIoxzFBuxrRg4VafZRUkSQnyMwN0Y6FfXpfr6DrHdAmZ+DlSbo/dqy8Pzx98gYw9Fjti4wMrFR19IUD2w/huKXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6H3fYOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6H3fYOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D5DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765036973;
	bh=UbicQ+j4glXhblCFSHWCCEDdZfgtg7oPCqyB71G/+7Q=;
	h=To:Subject:From:Date:From;
	b=b6H3fYOHCdfOTTWD1yNV5SJDRMVa0Jk1b3/dxSmB2lGYRVgDhcoDAJylP5Pzz0WaS
	 dqaeGXpftOZnORp0vict3rLYdbSnSNecO5B+d5XhhXLRPLu+ogqy1kHTKlsvcVjg+z
	 57rMLI2Sj4Tcys77xGMr3GO0qT7ymKi1P1Rw6sigP6mmsJO5g7dGvYdouBA263/wCo
	 xuMKdMpAt3FUUzvQ7G+ehaoKMYBAns7WAD/9nDW1SLSywveqp0XCvQIYcowQcCNihz
	 c7cxnoTXbevbggS5YC4+x7av40Y5UZXXig4kg6uoHw12iocmHRap/t7fxXXEONKEnH
	 V3t+ekSQZcXTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA7ED339BC
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503697365.2133.2935966721916891321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca96ac3454578e1f80d188a9a917734ad63c5ad6479f30ce37c0ed8a79d623b8
Date: Sat, 06 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765036973
