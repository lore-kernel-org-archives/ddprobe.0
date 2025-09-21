Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296C9168BD
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758429594; cv=none; b=Iw4Q2MKTtDDJIA4pFpsii4c/t3NXgd5Yy06caiWRmxOXGc9OuDMX+e2Aq6jr5Y9D8HWKxFEPN8ian+BL5yXqPXsSnQpR+P6RqyPH1tT2WKHfYGSkkTWAJJA5VszRxrUHa9SUBSP948+R/4E4hclfQrUWRNEjVRpACAG5cBRRZL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758429594; c=relaxed/simple;
	bh=fLpSzj0XB8zBo9Z1gQ/M1/B30rbPD7BXuHhsayxl8oo=;
	h=To:Subject:From:Message-Id:Date; b=dqvxJDqf4LF0aXEzbwnbEAhQOYhPqz1ygPitFioe89axfaO0RbW3wnwCUe8sYB4tekwljTe9ewKGpj7MMrI0Epf6bQdqGIEzbQHyb0K67galhXvXw6+ISN/6hJ8+TdUV7gcQoGPZBzGQlfty9+OBDRJPqtKapJq3JbJF+twRi+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIu7Oxh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIu7Oxh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50C1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758429593;
	bh=fLpSzj0XB8zBo9Z1gQ/M1/B30rbPD7BXuHhsayxl8oo=;
	h=To:Subject:From:Date:From;
	b=EIu7Oxh3wOhbkNQpUUlhCB12QRXwugT9mBi4fD5iXFrmtiSBHz2oM+yF/jLLZAP8X
	 +er/b6cwhOHlX39o/dPyaTqjg4PeNd0fVaGZp0XiyvjY9T/MhMrc0Wh3FUgEGeBIPi
	 pvHfO7o/IC1VAJBJILrS9yRpf8YTCfbSzCSvaxfvpdQspKu3Sy5T+5V6z9AqUH0vJs
	 ImKI1QCYHMk1NR912p37mMSvOjDLCasOzTZRnGoLZgUMdM6WakkxfGLTets3KdDMHd
	 9P8JkwrtFxxXBY/kbGypt849HsqhdFvYc4T0glrFyxeXDbqm/har3RJ7gy6dA0GE6c
	 tTzH3n6DoAHJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9380ECAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842959357.20758.14231333721164469941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c664d5bfc99c755277207d6b658b9e758526826c7e4ef8786e9f95e18779c2bc
Date: Sun, 21 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758429593
