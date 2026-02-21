Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0817C2571B0
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771700094; cv=none; b=OmwFRh/a2ZIlop9vz9gjHQXfXtZD051d9jorcnz4Euige840zuvOeK+FyeTdtcgfbt5KlBX32IvhGR/bTjUiAzScxxRrIyvKeKreEJ9gwaVm1sUC5NZdv6AS9zURMtEMtDO158eZao5d9giaaneNOt7dkU/kLCWNyiXN2fcsRSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771700094; c=relaxed/simple;
	bh=qL3KHnTJdifZUwvOM76Ifvgix7XHYEXoMO3HZvn72YA=;
	h=To:Subject:From:Message-Id:Date; b=FB/2mWu3AreSmAL377sX6eUYwAhmxuKP+bmANKkp61eHVq59u2Ff34PYPcctkmglWsLHiojLP3D7DYrcMzU+WlkL3ybfZjsy2DNgQegLeVXE/3aTKx6qaKNSNJZlbpfU6ClB5WKSxH+MZIXfjbXNZOmdM30RoauOXckmamZ6L7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtn46Ddl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtn46Ddl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF939C19425
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771700093;
	bh=qL3KHnTJdifZUwvOM76Ifvgix7XHYEXoMO3HZvn72YA=;
	h=To:Subject:From:Date:From;
	b=gtn46Ddl/aIn7/G3Oi9mE11o76vmDjXP2jdjiO/ihee7OYE0ppz7MhR8JILP+KxKW
	 f4wrHdWWTHu39fI2+7AsH9XKpvvWxWhMDOcAFtPzTpxN6mvDaB5k0X+4JdClK7N4Ee
	 nwlZ2FSmQBjr/Piq3bN9wx5fEVkXZq62AZtqF5/lqQ4wthz0nQXUDhNpnEmm8U7byJ
	 ezJh3Io2BlncSHOIF6Hj9zVYWrAzUJN6Avxy+44PlD9qR0nY/F6bkTux109byqYuaZ
	 UN0qEQh9mvv93XJEeT2RsLrvoBnbm37dtI8SC9TWpJ6m/159NreCpGrGtF0HRHjuut
	 msBOhp/lVfrxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BEBC61DFD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170009359.28575.9199039923499042730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc9dea24de5f602d81774bea824423435a0400dcbac78e89c3ce9d5e7d0f63a
Date: Sat, 21 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771700093
