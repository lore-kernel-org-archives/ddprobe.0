Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C703FBEA5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777064253; cv=none; b=AaPvTeWrT8N9slJX2uF1JD7+4rXd+QxVVkFq49SAVjV/IcjDOlgscYX3AEM1ZukgvlV425f5DRRmXf61SxYlzSfZgueKIxKMvj7JShkz1dj68H+s8CBqrqKcA7ziCVd7A7Cf0n5kdYltbzMrk5m/9z66L6/ZQs7gHniVRx6xjQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777064253; c=relaxed/simple;
	bh=Wi+yeFhZFHAV4LJwl2q+Q0gV6BAciGfGjPv1YEvoptA=;
	h=To:Subject:From:Message-Id:Date; b=nYZRklUzYufcrdOFy3HnZtydM0Pllo1OV4y+1CuC0NkqAh0bt6vfBF32FYSufHVgOZuMNCogDX1YJp4xktwshYJi36gd665xlDYXfkLGhosGK5fPkA0loDgME/D9eN6FtgUUk5Ps2XaGMr6wzK6U2Dqh3BUS/r5Q6DmQARtceR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cc56cYTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cc56cYTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A96C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777064253;
	bh=Wi+yeFhZFHAV4LJwl2q+Q0gV6BAciGfGjPv1YEvoptA=;
	h=To:Subject:From:Date:From;
	b=cc56cYTUoG5MXWQMJJC6SA7IluYPA+8vABfpN1mrhnWVwJVWnlFF5EgE9i/nY4cVy
	 ogMtfbG6p5R8aGMk2p/ZR15oDL8TIva1R5453qJ6b2eaeARj6Km+YZq5J9VUtVX7r8
	 sro9A9nHWsb+pBuq8IAOLwgyjeDe4WvkmM63SrNQLTfEuawJKmsZnc7hUDHuNfk47y
	 wF0hlSFTPWZaqtTaMZc6PqTMSwGusRRkA4WmtqoDqkgC314p1OFnSXN28BroeEm+SZ
	 9J8QH7l5nzHQ7ZyI4Cx4kzmoerZMvA8Plr7JfQk6HSHCE3dEY8t3GmzvuF8J/y8JWD
	 4o+r7B/xdjs+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A5FF8844
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706425368.10132.10217764890792210261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9386e637de21203ff80ebecd73c7484ac338c0df9fa6c4e68fb0872c34104729
Date: Fri, 24 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777064253
