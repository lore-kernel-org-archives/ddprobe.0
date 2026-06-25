Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D31155757
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782418054; cv=none; b=MinQIZOhBVqwubei2k7HBTyBsQUlf1Kt0464adgSWFQypkiAX6sAaAwnUUiRtbxAzv4gpY9h+MPaH7u5UbyNh/Pj4PVUzbjOIcu88lgQmwgY2OIDwLK7Whq5mp/6x/h3YNXi7m2GVAbPPLqEvXP5Lb3STjdp/N1MJbLJY1D0TbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782418054; c=relaxed/simple;
	bh=CFhGDXp5YGuRMsCwW6J40kQpx9Zz3UP/gdHTf4iA+eU=;
	h=To:Subject:From:Message-Id:Date; b=HNx+IDp7m4AvB2ajNjcwo8cBJfKz+lV354BvB6XiSSTFjg2Y7HIrg88BEa74sQH5+45TtBj8HUYRIPCq+gyNchXFhgcQYAPa8tUamaB4YOiYqBKIeVPIPOFyxunlH6DBr76QJBHjAmu2bkrlak50Voa/F4vPHrIXsW8C6kCbVRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3458IhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3458IhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D9FBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782418054;
	bh=CFhGDXp5YGuRMsCwW6J40kQpx9Zz3UP/gdHTf4iA+eU=;
	h=To:Subject:From:Date:From;
	b=T3458IhXoKjHzXUxDTlrUApVTBOIYLdgw29Xng2fQoA8VPHYqX+6dmL+K1NytVelJ
	 uneFTH3WVYzD3X3Z17RyQ/GCUww+X4gZnC1p4BdeWktvTX/HIZGSK/st7b+o5jNdot
	 jZcGa0zH08G4nGIuJbsYQt0zl4mpgkcJAe3HyjyzFnE0xtWCOq2Ai4aa/ovLZbb2hK
	 DvAaDiuckQ72rN/G/9smd3TaBTpRlNc92tDV+odG6PmhlhqnEtittwq/DVca9v0XwM
	 P2RHJteMY1k2dlbQyZcCEdoT3sK2BVlSu7SauawUdQs+RmKW/wB1LZdO2slZ7zGo0K
	 MRiocpiy1vGZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDD20CDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241805377.31237.16902697274486619574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6e4aed97d1819f59abc2e5d708026d0750060b295eac979ef6a4ff6faa65e1
Date: Thu, 25 Jun 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782418053
