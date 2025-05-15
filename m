Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAD1C2C9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747307996; cv=none; b=LzZitHhCTzo+DvKCYl9ZR7PKf/mNVL/yAvGJnw/167AuFPa6eMeTG2yJPL7i7lo20b1UZooDOABx55EWZKcp2RSE7Rqpr+A3RoOEdOv4SujigmR6Rmb7gthbY7uaH7/Mc7CRgWkt3pInvfGr9WK/K8LyfQftOYBPIM5jO+4++W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747307996; c=relaxed/simple;
	bh=tDmz0Eb1MGo9lMGBKLn1/QQRK6bw1KfEXt55wX00WlY=;
	h=To:Subject:From:Message-Id:Date; b=hJKDIbxi1qxAnK/RePL6k7N35OGUTAyVOJpIz1LYO0xCEfjsFZNuV1FtXGLzGV0gIhV7KB8EV3Px7R0NRQQC4W7yMAPBzKiXl9R8Za1zGohPx1PoM9sLXNMi/izkrrKnnWweksSj+zEi3SwqvPM/3lHGkRaPKcZGl0wmofoqqyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1gAY3Yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1gAY3Yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3242C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747307993;
	bh=tDmz0Eb1MGo9lMGBKLn1/QQRK6bw1KfEXt55wX00WlY=;
	h=To:Subject:From:Date:From;
	b=S1gAY3YfUbWTaVbSYT4Ds8EObSXMxlROa1s2H7q9uCQ4CSAy1RjcC4yoaCaiaob8h
	 OtXNmQS3DcuG3g3wi7Wa0rC5G+CUpL/3WT6v0QVcbYVcq84Z1LvyPRF+JRHa4dVmw+
	 7UUX2N3m8ytkrmVZO7hVzFJ55GHik9Ccpq8kithKqlNKfar3ktRdL3GIFRCJAKFrrD
	 sxWb2sARarBIHWhbMTC9/GEYTOpX5f7e8HNhzXSHUaHe3B6g5KTu9v5WAbYWdjpKKt
	 y6V/+dPYAusJ+8O65nsykqCXyBjmUy8YpZ+EAo83cOBrvzVyuoeUqjFbZ6bsWc8KdI
	 oJnI9AHohyStg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F668C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730799357.345.16097534301775482586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f5c8055a1dc59abba37928b62fb74df7c7d677e31b79a272a4bd6ac2320e17
Date: Thu, 15 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747307993
