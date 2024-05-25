Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F6FB652
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716645263; cv=none; b=vFCdHfS+a10JdOSd0f/ttWpAOPnTbE4SvVK0r87Fn3YdvQGzmzC7xDC2VrM2yDO7hRtQVXOyWNIQFJ0m7ZS/g5BDmnXrZj1wXJ+l4EQ/4x0sYFbFP1e2txx3T7CkAwm1NzMkYFguPpCP4nfTIo1j5AVsiaUcBarOjvfwHmyF9vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716645263; c=relaxed/simple;
	bh=lK7jF2HcEj16b3yCro2un+4VErU0XY0uF9VKO5h1uL0=;
	h=To:Subject:From:Message-Id:Date; b=UNOLdfQbS3HJQXL34F7xkKJzIViDEUh8SbPZtQPtcuGrOQ9owCSB7qKb1cFaMY7o7JSVy5x4jeKUvwOhTZfGk05gfguuSzD/Dh9tb8QCCWO6Ce2FidGZC7NEtm6qxktovcK5GWg/DWxsocOvm8x3tLwU1s3a3rW836YYO/Lgq9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bT5YnJdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bT5YnJdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D443DC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716645262;
	bh=lK7jF2HcEj16b3yCro2un+4VErU0XY0uF9VKO5h1uL0=;
	h=To:Subject:From:Date:From;
	b=bT5YnJdUbGHMhjPgB/TzgYCYEbZ6q6Eq7+Db7S1C5uMTV6/R+JXpOPSa13/zsMx94
	 YjNb9U3YoydHyhTjlcA/Dk5u6AgY//SfLabbbjsVGk712S9fmAboh7GHtGTYebk7gy
	 08sRzif8sxKxTrc+B4SD0LrFrzV/lW7yGGfMZHBXsEAs6XYs8ye/4rGjTHVT8AibiF
	 YqIx3bydQFM0EH9rbXE4+4Lrd5y0ns2L7so3jxa236UjlVR3ip7Y51mUE488THYvz4
	 vzrLkNbvNZYCINU/D8zXWL76rBMjkJT7l5bSCj4abDLokFfkwOCVX5bnppWTvFacQw
	 GrkorgMkLRq1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A8BC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664526276.24248.12221596206843152955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de74ac41e462e802b29578e33069a1f5df61f4325e8573664ee4aa489c3656e
Date: Sat, 25 May 2024 13:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716645262
