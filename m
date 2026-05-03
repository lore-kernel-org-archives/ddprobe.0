Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470823A7F72
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777789654; cv=none; b=fLzI5df1QBCrCZtg5fubHBC0HtUxt0isC7siNaLYGoes8qZYQWVPetGIALrpWy3Fvror+Edli2gHqO3Xswjuec5zfRyQwoac1uTuSweCnsPIivK2cqUw8jbmyipbfJWrWrZy7P/vL513lBTTz7ZazuzCDyMz8v0GjxmFqJH4byo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777789654; c=relaxed/simple;
	bh=qOCVxYQTE5Q45w69H+5Copc1ac48VHARjdeWAAi56Rs=;
	h=To:Subject:From:Message-Id:Date; b=CtWlA3j0IJl7kzdJSd1c6LfFtkXuXI1Ms4GFqPqEv3dN7Syr1MRzH6sRzUDx/TW1FIQuq8Z7Q839M0FGjTjQHrStlMXviD+ASv7ldufj8ldbsa/qzuNwUnzyqH3XeR/iQ41X4ZeXFIt8Ffw9ND5ZhkPWivBh7Qxb91o+KIMUAro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qU7wIhID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qU7wIhID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D54C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777789653;
	bh=qOCVxYQTE5Q45w69H+5Copc1ac48VHARjdeWAAi56Rs=;
	h=To:Subject:From:Date:From;
	b=qU7wIhIDIJv6Pfz5jYFkdZtu+U6abE7b1qUdRgmcSywhBw9gjyhaK3ruRoH44pD9L
	 /JTfPL96YBpxppPBI7EdU4JlYXZwZceqmW0aXhgBynaEgFIwsvDiq1/CFrboDF40UJ
	 p957PRxb8KAssn8CAeFS93tdS72iBwQSwr7Etivof9GYOY2NXGxtPSvN8FKGVcT7jn
	 hnBynh3PwUlSD5NmQXDSqsjH8KD7UV+qIWwLTaHzofJgtMLZgin+1fUh+8LKIAzW95
	 cGRbJhbg/4tnCJUtvvDWOJpayUVNmxJCY12D1n4/oRSmGGM92ED+veLgLa0YkyAt0b
	 /H0CWncUtmDMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6ACFF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778965368.11895.6068555214164074811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41492bd1b3c709e298165d255b9ce0064334601b79d2e762d32cdf92e4856330
Date: Sun, 03 May 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777789653
