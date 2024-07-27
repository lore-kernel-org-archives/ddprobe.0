Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D22B1B86E0
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 11:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722081355; cv=none; b=JQeL6i5W7tnW/lXiUn0XW+CArSXwZpRHBrnCMHfH0YJ4gGqF6sBHe5cPqX2aQ6gYZU9nPTC4Mw+hVTDx0SdBAz3uh4VD7RjD0KmJ7MU1b/dg+BirwJO5MwERu0hxe5dbFOxmqWZyr55OxRgvu8Tn1OAoSkW6hwB17YtT6ZbSJzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722081355; c=relaxed/simple;
	bh=Z7bEjJZax1YhE1KvEAZsoYO3UyVp1DBKIDrlKwJSy6A=;
	h=To:Subject:From:Message-Id:Date; b=LaQMuaTGX8W6/36ZeBCEoElh/GAP8npuJcrIZNDC5QDNOY3KX5q/OJmHJN0hoegH1uXkT6HEc0sIejL3CkURuYFFZ7UFMs+pXyTCtMURAiLaz+J9wcGsejnNbdA58+Bp/Jqoff6cE8jbb0OsdOINIG9UoVgMP6iTBhJPHFaoDgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zv/xn2CH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zv/xn2CH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCB3C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722081354;
	bh=Z7bEjJZax1YhE1KvEAZsoYO3UyVp1DBKIDrlKwJSy6A=;
	h=To:Subject:From:Date:From;
	b=Zv/xn2CHycEbrwkllqoYufAId08pk3+XSQlO0QoMQpP4ixURqycS/ZrlKbngabaa6
	 xHI+mU2940XdRay67piioYGdlQHsgk1/j2Wsd/Qy95d4/N3I6zevUF2qUshFsMoKft
	 AF9j64xclFivYdzC2K26+O+ocjMd0/uMPGmP5/w+TZZi6bqqC3j8NJDOXds7MG19+h
	 ndw6IKSFypZxOmKeIfgSHoHkGk+7ZvXYwND3gpDLTQH89M5YYlXcqmYw8Xbh69Ohop
	 dNX4qmP4HCFpGXdK0ERNZoOxxGMMkDho4/Mw9KxMY2talXiLqeyL7PvHpwabqXeL/Y
	 /lUx4MiYgYoaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9791DC3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172208135358.18644.6112961725479705380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3562f4861eda38f3664427837c9a14c6004e448f7bcb0bbc0af7f092cec90202
Date: Sat, 27 Jul 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722081353
