Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4119C242D6D
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746818994; cv=none; b=V7m+c12GthGP+N8EmqMZW50mxwlS9kRqy+JLWHHFOu1BuSzDw7wKWnBG5rylSQYiCtfGBheFjoOU1iPlsg6YRvQac9pHmI7QaYRS7FNOtRW+RI9q1f9PVNFQyE+hDdx0csvUrhKMejw+zCdKxrvEJ4YcL2ER260JiaiJKQZdL9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746818994; c=relaxed/simple;
	bh=p3f7LVVGco5wNCpIWJ/f0PsAUkmgz1qnt+Q4l6wdTU4=;
	h=To:Subject:From:Message-Id:Date; b=EFv4H6biBl40Mvf3zyKLKJQSavYfmoReuQgAESm5qvz0mUi/10gmWgWDEr6xY/SXd+VQ7c5qVlKJUKtvSbVj6sDaWQ8vgNhMUBTqLhCQac6JXVB5ptMUvU3uh04jWPFlW+BYYjIs0och2M3ZROHkVyYXigdA6MW39Gx1H7+N4lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiS3zYWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiS3zYWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17DFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746818993;
	bh=p3f7LVVGco5wNCpIWJ/f0PsAUkmgz1qnt+Q4l6wdTU4=;
	h=To:Subject:From:Date:From;
	b=kiS3zYWYIZOS/vTQuyUx1Z7QLyNFCynLgKmKFOi39l7Hh6VyoOdTQOc9RVciq7+hR
	 FLI3IaUNtqX0dBxZ3D3gDiGsBKUurjrMS7jVFKVIhnIcv4tjtvbBgA79c1N8u7hTRE
	 Z9fJLHjUZACKvOidRY7P/bxjJBKxWRE9cGqsCEeZyBhOcw7ooTB4iHzkTQGoIxQEyA
	 LU+rsa6Uwic7++qRxIIfFUD5erRD7CpIfOBWbV0ho0idwTjzp4FXY4oe036PNSnBZj
	 23XRbpg3D3h83kml6F/kBIZdSYsFf9b4Qjo1adGkDxGQTZhzh0J2PYXSpNWgB264Ni
	 Ht25Vi6GdVPTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC1BC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681899357.17214.16205391164273117815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e345a42149ecb7d0d678a0346ea5bd0a028ec0a8e380d4c8a4550ee1a6d2dc3f
Date: Fri, 09 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746818993
