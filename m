Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CB0187345
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721038464; cv=none; b=NXnSaZBKHm2Q20CEefQ49b6lNMoipWD1l6lYh4Y+ADRaIWWGJ5wxTKN5VZhLSDp/xQavHguXcoSCXOzJ+Dxd/jwlrXE/97/ywY56VthrWwu6eCROXMNaK2CWBUzJjbwpMRA3Zpwoo3kGnj5Y/NEDiPXovmVWuswsvQfkCBWB/aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721038464; c=relaxed/simple;
	bh=412XNKvAbF6hn1fLSZeJwV5Bk43j7eQJfp+B3Qvmfaw=;
	h=To:Subject:From:Message-Id:Date; b=JYAGizYCQgAlE8eQK+EWjJ9pIqCylhrOghEMevKFO2UszXBwI/n6LKeLHl/mYZ8qVd/C3zx36/uV/1aigAzGaD+yJo+oskfT2YvxmIv4VwrhWbf0E/xlZLHq5jsuJYsHIG9zePq+ewWqno8OwoanTEs0foL9a4Gz3WCBuuk39Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EC5+A1Vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EC5+A1Vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF3C2C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721038463;
	bh=412XNKvAbF6hn1fLSZeJwV5Bk43j7eQJfp+B3Qvmfaw=;
	h=To:Subject:From:Date:From;
	b=EC5+A1Vtdx3KrpxMCA8Va6vAv+hJpLUKuV34GxVrImHmcw9PGl+judUBTeak+2k4B
	 qwsVZaK10Muo40hmVkwbyonWocHlWOiHO3gCGrcPpSTN+YAspVpUnkxHNjzvV7Ec7w
	 b8aXQAHELFoPdyuyzCFpSHbSXsHDKT0L4MZ7WFjmD+QQXVEbEYJ3zH0tB6G0/FTORu
	 gjPJNsn+Mpcic0/ZnBoCDKGbT3QjmuV7+rUCuYSXZTVpbm75R4S7KgSQM7e3cT5qM4
	 eWFqH6s2LntmwVPRus3xyAsYIWmjVh8HOVovt3iaG1objHcdHd3epsuIzrUfy5b6pN
	 LXH+pq7np1gxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1C2C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172103846282.19076.6334658087949723530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57782b2b9208b435f855b26d31023b5be659d9a19339ab4c6c913ca24d54764
Date: Mon, 15 Jul 2024 10:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721038462
