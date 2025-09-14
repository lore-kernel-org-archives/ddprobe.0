Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293C11C3C11
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757824794; cv=none; b=ABdYKF/yppwyJSGIojCoTzcfcGOZNbmhGWE0K8vUyVFYH0s/zF7kweSFi5y1ZiaPTTlOB36QZ0N4Lp/FisOf36qPy3qV7izCuzFYCxyWErojpwWTv+w7wLQpZXKiLx25TG+Of0T3xCfT7POxsgZvvC7OiHYSDGypvcRlaZBY+cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757824794; c=relaxed/simple;
	bh=ZfpegzYGY0HAPYYq+LGpXdGI7bSc4O5Rc2M3gHyGetM=;
	h=To:Subject:From:Message-Id:Date; b=slf0gOwaorcH6WE8vNIo7FvZIsvxryRGOizGFQ6LIPJSVH3WuQfNSS89gHJ/jGGALGrf7I/s5PIybp7nEnxKMn2beMqElEYTWefdeTziXkxj2nWzVVpyH8lnykLeSH7dEmcWa83WZ+XBxxY8WYVhNcXdGIVl5sVFpKnHHy9DWQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dX7CCLD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dX7CCLD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E5AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757824793;
	bh=ZfpegzYGY0HAPYYq+LGpXdGI7bSc4O5Rc2M3gHyGetM=;
	h=To:Subject:From:Date:From;
	b=dX7CCLD83YV9zhgtLB6wC+L0cNThtw6ZMD4hVIrGwiALoIhcWNVu2zlqQKIkRlBPs
	 DoG/X+86eCyf+ZF1TcUfoHB+KCuSlmg9DY67uLVhxi0vZS+6MpmUVLpZq3uoaZARzf
	 2cq68fY/3aqvHRvO4rG8CzN4Bi5IDYDZ+8Dyqm/4Unh8ocoqeuG6m7N+OScj6xqjHD
	 b4UEk5cGO14GQTj/J1NfUuYSFvzRf3whvuOGY8Yxi5bRtbY30Pii8XuDFJqResd7Yt
	 2pqghZM5i2ZIFKmovrwR7DzJyYtOKhjIcfBUahbsP/BBEQyhed40134sPrZMWZXLX0
	 bsWIqlFt+99HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9130DCAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782479358.24934.14126507142724252666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b5bb502ae5155e28059ec2042c1f784edf3877c3042b0b6f27e1db3aeae107f
Date: Sun, 14 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757824793
