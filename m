Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB0319D8AC
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759271394; cv=none; b=rvAcIF6jKdtqUBTiE+NU1NpFZwA0WURBPC7dSpMzYVpQSID+66O+3gXdrVrb3OPXWXilHbSOxsHGYYxntBgH9HKYvGRkdsPzDOMjHD1tZungCmxwhu7tenD9sN/hBlUY1Lwr9BPpRBE6jlHoav26XDoyXLOb/4m4Yvk3NblmDkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759271394; c=relaxed/simple;
	bh=pzQWY32W2oFXMWxEi4HKft8JucGDGOv7Nvi0ZsMIvX8=;
	h=To:Subject:From:Message-Id:Date; b=mJBqAeyer54YMuhNyOAr2p1fAIn9VNA6AiwFKX/xZQEN1SKemwVxDLvSxA0K0rX/N4DuKRUtONlc+jw+YOC0LcoBp7GSPGy4NZetlc7TB0xg2hJhdEpqLUqo+uDVyUIr1CNyRqlZKe+szCsqjptvAXqmtwAaeaXyL7MtML8eQLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cd3oMxDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cd3oMxDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD568C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759271393;
	bh=pzQWY32W2oFXMWxEi4HKft8JucGDGOv7Nvi0ZsMIvX8=;
	h=To:Subject:From:Date:From;
	b=Cd3oMxDZyGXNujAV9AxiD01SfQsBbk4/KXWu+THRKBPCHwIT/bff+9CWVQfUj8l/a
	 WNhmJLwi0A8h9wGEeT84XUgFmPb8Z75Pyv/Ne6muQitxeIMm0B9zQmCK4yHUwX04WK
	 X8dnyxRT+VH3yZiKzwmK5goYyRN0QW8Dyv6hgWlVDdiJL2J9fjrl+VD4vHzGmLeLql
	 sZgALeTIXorDdmw2U6k6bwn9QTY7FwIIgBqiUZs8xy3U18qoP2vZA3R/Uzpz8Ds5Nk
	 GMol7508ocRb+sNkB03cTxMIdCQL4ceW9sFC7E8RXIEjUL83ucKloPnY5VNeyk8OHW
	 lVFhxqtF3fqbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D57CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927139364.13976.11749719033250580340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4dbde616c22376f9bcbed60a99dc454fed8342dce8e32050eeb853419a9d5f0
Date: Tue, 30 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759271393
