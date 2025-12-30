Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C53A263C8A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767085434; cv=none; b=MiveUfVvotFm865sOUD8+vRTlZ+pAH2ErpsrAuhVLlCAjZ9LX5f3jpx2slNej/1vQU3gGk6rUMshE2nk61RhbJJqDzy/Jf90Rt4KVcltNrguTJKWJi+ez2FPlJnJ1OX4iNCZxemqvQvftEpoHUOMopUDcgw/olN4wYz96SIlauc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767085434; c=relaxed/simple;
	bh=M0c2oyshbU1znTjV4UXA24/T+gpPnbwZ4x/VqRB7lts=;
	h=To:Subject:From:Message-Id:Date; b=cVkK3myemln8+8NWATkbM3qScvBQpiC9MkPplIpNelfFnINniVxHztzDFNtbdP1WVyWtt2DUwb5vswKURBFQuN1ZoS1w1I3IffMjTJreWTMYgGAz6CXmce5dcfNWO7YyP2JpsUlKPd5oN57lYz55QmHCKbDkznfDdCoQBl1BI/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hn7vIr83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hn7vIr83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB85C116C6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767085433;
	bh=M0c2oyshbU1znTjV4UXA24/T+gpPnbwZ4x/VqRB7lts=;
	h=To:Subject:From:Date:From;
	b=Hn7vIr83x5m6MEJaefBE4MZ4FjWlKom3yVoJrZHpFsojym/ShWvaP6UE6WhnrO8kB
	 mRnhObJEGbY+YU8t3kL7WDJmZoNIdIXHnBVgojO4IAmCNm6BaRDU1W8hrrmu9Jwq0l
	 RZYDexUyJ2ysMacDiBZZPK1vWECnJhs3yW1pXRyv9Igt+FHQ3U2sz2Zq2Mi3plmM64
	 XWDWq67Ht1zFfRG5yaXQX7e40aEUuWAXTGxbE4Gn1ICDwnsCpwoxfk55SuJVBWd2Tb
	 kp/aE20pA70R/C7vyzOMO6ApHEHUgO0kdXMmn3Qvmc4MVX4Crp5FldzLjar2hS9AAG
	 p5GcRoVOA1Ozw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE5DE94108
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708543364.31535.8952404179242233917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876298f30e5db849e257dd0b210480d902841e5c58add3773f913223fd540231
Date: Tue, 30 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767085433
