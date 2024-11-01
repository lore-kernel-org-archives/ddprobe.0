Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A1E1531C5
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730471753; cv=none; b=n3VwPH0LTo6lgz0Kw9W8Bvjc4lGcWdLl97l0vLPsrEpBbk+T116SzQFVGjpRETPMmHMe070nUmvl8jzjGxzDmIWA1O4t1Izk5oNJD8W206fCdPPZJgVxUKL9WoK4ZGUAfm/Zeh/28UuS1cMLsp94ZVQpoK8xk1RU/ezocnj1ww0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730471753; c=relaxed/simple;
	bh=C56I9O0BD5I3mP9Ppj9jTEpak/X0khkot0fLuAqTGwE=;
	h=To:Subject:From:Message-Id:Date; b=h0EUylHtSIQtSEQNnfmCFs/E7rdKRa1cw1BEEHLoCa0gf23vbPdj1J+GRPv3ddlZrrnDb+OeS8f6VEjUCKnjM5X99FM+IneMeBtZVr3V7NvIFnhLy9oHAW69afmiZRYdSjRp8cXVKZdNN/vgzG3wBAByC81VB3/2RtbVysTsg18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Smva69Go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Smva69Go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17BDC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730471753;
	bh=C56I9O0BD5I3mP9Ppj9jTEpak/X0khkot0fLuAqTGwE=;
	h=To:Subject:From:Date:From;
	b=Smva69GowcVc1M9hMjNiYKsG1qs62lm7f2sSBqWicK4yCugSv4x9Bno/wAqLwiWwc
	 f7t58p/59VZ7WFjO81BFpqIEH6qX0sX/bolnPH4VIkJFzLoo/ZJ/Mn9yjnnaDMfU38
	 3Y83vpyfpt8EH1WsjS4XzQrxCWmtj4MoRvnhsJkGey72u2nWihYXd0rBph6z/C4bKk
	 mY2lVehHtdOO5oowTub4pyS35+dgTlFD9QismoAQNR57GfFh1nA74GiRFEB5eKGXNc
	 zLB7lqsJVqK1BGCV4N1O9C/1yOhHzzegMgw99n4WapJoymNxRYNEra8P8xYwH9aSOE
	 i9OVsO+gGEftA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B89E6F062
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173047175358.18812.13035223187293421298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c2e75b55ed8f3bdf58e9f554b18f05f8d5de25353a8d94c41976b95af8b0bc
Date: Fri, 01 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730471753
