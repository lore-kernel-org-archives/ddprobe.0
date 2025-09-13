Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41B4231A41
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757789393; cv=none; b=QfkPe9uFSCu8Ey/eRjhu0WSCLO+MkKiryZq8g+/ATfgwz7gwpKJFwcpI16U4cYNhzM2eK4aPHJmvFB2MyqMpR1BMz7LZLpbQohagkP79n5fjA+JBmvNf0e5Urd7xyXCjr7bwLYsyllM6b8AyHX5wOlRzE0Vov4XRzY9RWdjVSeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757789393; c=relaxed/simple;
	bh=ogbSK+9buID/Xf5Bh/5Ljn5XrTlkh+2uE4/RvJ+DAms=;
	h=To:Subject:From:Message-Id:Date; b=Nh5ythxLgjMsGmKks/DDmIAwHYEwByG8u6+5cWdRJBr6/7i+V7sfWCZY+WGM87jLq7jcVgA7LNnP1iUS3RAQLTZuNyd0rn1nqPAkcxuTbXenw2l1GCpfJqz+J5LktZ3aH8N5P20ZsYdEDTKXYjLOXcTzN/u0QblOgnlKCgpv9ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2FDHHXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2FDHHXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D27C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757789393;
	bh=ogbSK+9buID/Xf5Bh/5Ljn5XrTlkh+2uE4/RvJ+DAms=;
	h=To:Subject:From:Date:From;
	b=O2FDHHXCOmwEeMcQ46LTIEo9Fe5j7hUkTvWc7GNUJ4YlYWKzyVVb7TPaYqzq2ryJk
	 OgIH+NnUpwjpNXVCuKDznE1GZU8k15dg72h3PU1zOKpqgWmGVdwEocEy/SbEURIJ4W
	 SkqMahFIa9AcFZOEgBz92KOxekmNtVFPv1DEQH0pTcPqTQqMa9imvCD7Y3o9yAKqMm
	 +pZh7Lbgt6HBolypVWTY4K7kwck7aWWLSJc6L8y+OWwadMK/natwkCsyDyNffnx/CJ
	 nnfX3khVcCxEvt+gCIJxdtfMKkRIZU2/EWD3V8ICaxQI7Ouo/GVbu09w1ZHoSwdAxH
	 dYRagC/fDYniQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9686BCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778939358.1982.14709862945230884907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48a40ad1773166fdad82bd4396e9d343446fa741401942b035d333db694d435
Date: Sat, 13 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757789393
