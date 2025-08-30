Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298972367BA
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756518594; cv=none; b=NBu0spQNg+KspT8F9kdDrwDBCLoswcPUGFgzM5a7N0EvxwGmqXv9+bFEM/STvpC7kOEjhELtQZ+l4B+r9BbtQAuvt8z225PsEL6F8ox0JCq9sOBQ1DAD9VeoGFlIOGnk7EjlspQUGuoIBcGgWBFZGPMaa275qWQ1QdDkibKUj3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756518594; c=relaxed/simple;
	bh=LtgsN+e5zLewMrMDpVhgWm7otAEADMFmSSgZ78zGy4I=;
	h=To:Subject:From:Message-Id:Date; b=Thv9/kQIT0dlNL5/mQJgQv28BWhnO2zwfwKDecVjqeu1TROD+Eg6ZR5rNX+X8pcLYJfuiLwcJEoiXFwQKFJ7+VrJG8G38gzrjo3Jh1qobZ0U3R4SxeG8vAZxK1pEkTQ3PwV1vSR2lXFxHBAiFdnrqRDlMzWxbR4+GwGkHmtU/74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tD6MD6h+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tD6MD6h+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A307CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756518593;
	bh=LtgsN+e5zLewMrMDpVhgWm7otAEADMFmSSgZ78zGy4I=;
	h=To:Subject:From:Date:From;
	b=tD6MD6h+mSDLmFSvmgQPw1VM7htMbFWrItJ601SRiG2WagI4PZ09Xdu+LVtN0BWfx
	 +CRhxP1iUoAzIaDVzgmmXmm+Db58xXF69O1KsO0w4EhxiVWCW/C0NCl+vsP9nHd3by
	 IQ7ZCjtHfMOnSXSnu+vSOlVqOcmgvRUENq7q07R2SVY+tB6t29M5Zqno+YORVkhw9b
	 bU0vk0Re53950iF8pWADmJDegj9RfdtwQxRqChQMU4mFUoZyr5bwWWqmJ3r+XlXWv7
	 ApwHL2n5CVqg6IODQTNq7yLRuKkoLz6AykBD6E3S6haTboOfS5TjFF6z1x77o4oO9s
	 HgrqG7xU8EByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BB0CA0FF9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651859357.27807.5561715719522141528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796d3bca5977b07c0f2348cc0cca9bd4c84f467eda8b650bd3d24add22ee372b
Date: Sat, 30 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756518593
