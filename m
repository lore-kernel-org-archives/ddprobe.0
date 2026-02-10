Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193D727FB28
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770714834; cv=none; b=ItK7vwRyvIo0fKTdtqdz+foXtZJSRUZIbpIqUsV16/GrS7hPgoSubT+oZt7LohpwVDWLMUQSCVUII6JKdD6QvYUVUI4YhV+qT4QKIbKeibPdtRfz03c9YVzm0vGcMjZEBlrHvJEpy1GiZg38nXVJB27svsl8ZCrpCpEiZjW/vkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770714834; c=relaxed/simple;
	bh=bqiFCLK1tlyEIFIyENPH3VS9Hs0SLXBflWLCrfJIB/w=;
	h=To:Subject:From:Message-Id:Date; b=GMLLJZpoyWDC2FoLpHBg6bWPwMG4WZiuXFHHGPWhEQDbCRf5Z6qs8RgV1lflxjEQmfzhe3bfXPsQjBfT4sg4rjysRB94EwnEP766UvznbT0bnZ7Yi4tGCyW5bv3dXVy+XpFOkaboOJFSUibT5eJR05pl117jsBOpDhuFl/MP03E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B43YqCrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B43YqCrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C9DC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770714833;
	bh=bqiFCLK1tlyEIFIyENPH3VS9Hs0SLXBflWLCrfJIB/w=;
	h=To:Subject:From:Date:From;
	b=B43YqCrbgVHdjb3tmh089lxYM2Qd2OpC50wQCU12x4ZxC5e/2D6aSoVuf/tJRl/gT
	 NQa4ukFL9fImoDghHHjq2JQojKzlukIGmdOXDG/A3QkWHY4XylkBu81mZmYzW7yEFA
	 gJ9dYHefOUoSuxs3G9WiKdHotqEIZ89Shm6Jmc6WmSubs3sydvAItrKMIGBoMgq+it
	 SmwKHMlE6HigzpsPi/a2xVu00dGF+mtYPEtYcyWXB2qXNG6xx2yJwAbPiSDwMDOFtw
	 OvW1lPo2ZdpwZTl5NDOs6/9duSFkbqe//ewatO3AYSblLLoJu+RTB3vUMlWyF6RRiO
	 EVudtSeE/BRzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07D6EA3F28
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071483364.13062.10036811991072451371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c405d2cea32b70ce86381ae13d089735da3e322f081e0a722007a7d0a043132
Date: Tue, 10 Feb 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770714833
