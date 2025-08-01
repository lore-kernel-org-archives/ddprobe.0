Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4FC2B9A5
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754045394; cv=none; b=ccr3WbMhgCw5Xqbl9aTAGGCJPJr0gs3I9c+XE6bEkv2KqBXE9hjFdJrv91yoo+C764uH45eECVdh9lCxiqCXu/N+USKN6qdOnE8uYuOLNgxa5fCfLqtT1Z5CyAK9W6ihPDrGNa1v5WwTiObKb08dKpJZle1d/0FDuDacJOzmsfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754045394; c=relaxed/simple;
	bh=UAGw458Fa0isye4jk0+iDLdTgInAw0qBJ+rSzfSyMDc=;
	h=To:Subject:From:Message-Id:Date; b=OIgn2k9QbjYMUJ11+VudwVI2LikvRsQTAUK+Zrl4jt1lkQq0qDwI4CPLhpxGg4eMxDh8RmaG6paQOkr10+Gz0wKtJV9i/QW/NWKLkx8KAibUOi5lXL3iDwzRYlenqQsNxz/6+GsrKPmktdEkO3zaIYPzTzwicBah8QMu1gSw+20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxxLCId5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxxLCId5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC29C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754045393;
	bh=UAGw458Fa0isye4jk0+iDLdTgInAw0qBJ+rSzfSyMDc=;
	h=To:Subject:From:Date:From;
	b=nxxLCId5nNiht8c8kDx4IRL3MIU+RiDglsdfMNT1vkSUwm0Fg4rbb4L7Gch3NgjLA
	 JTGj6E/rbMg/qM4jBX1+Tt0b+lQXjKpglwGekjBHoW67fg9oWnMI1hN+h2Pi4MSrPC
	 r75MhEBary3S8u86d3p5ugUC4UljMH/pmV9pPhAEHy0UvUCuGJaBAqiaNEmpcNEOe3
	 Msbt1tjXcOlTsdh3vKtSRab5NjS6wkvDAsm6pTd0UCeoWkB8sdgvwoKH1jETlyvJ1f
	 w406E4GeOKwksNnMDgeXjDpgGrQ1oyELQjGvbSxX8GxmC5gXLh5nI3BxDMERd9bu4C
	 Y2PO2l825zCgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9272CC87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404539358.23297.2624718715381188070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4005cf2934d23157461bf4218ff10ed545e699e6b2f7063c3b009c06673f2107
Date: Fri, 01 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754045393
