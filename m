Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198C38C1F
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771016694; cv=none; b=dnLqm8pHTpuH5RK2DaK+cHjD3Y1cY3kMdqq/E0sQFMLRTteyZcUCW7VHtn2Zj/Ktb68AB/kd58Kn0Iwa3yvt9JJZKlU908dzcVCS9f6OgCsb7Xl53L4+hU1UcmIC9pDgMyxra0w9/RJW0aT2XgL1P/b/uNDwKF/pN7kFqfgeBvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771016694; c=relaxed/simple;
	bh=+1Zl7/cXCYyOg3fS0uyOS2hgoSVkqLurJ2XU6jKWpOc=;
	h=To:Subject:From:Message-Id:Date; b=nB2d6b8lcxvSFGdOAx/G1V/YGMdqCxjqGSXyr2ye1/1wbRjQY5EMf3U29XO9MVC9Vy9F5JV+kvN72k4dBc0DsPkODizkGlmJP3M4xK/992fFkVRYCj2xOBHVwStQtPpSDWgYWxIIlLQKxzh2SM/7aOkPs5cR3CBWQ3FhAP26yog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RY3LPGlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RY3LPGlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDA0C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771016693;
	bh=+1Zl7/cXCYyOg3fS0uyOS2hgoSVkqLurJ2XU6jKWpOc=;
	h=To:Subject:From:Date:From;
	b=RY3LPGlKJnOSxeDG4YZXYsDGnRPyhjFXlKuwqsxHWKHghQWyyR5oAVumjaQOJZzkR
	 oo1GKaRiZG0HSbi2PK3+lTCf99pkjp3CDw75nMC80x1URSg3PYbqo0T0Gb+11MdAz4
	 3fs7vr9jQO/NJVeetbxXTjoWE+xxPApR+Jd3n7FVlqhsxolat+X3xOTVtigKbhj91T
	 jd7MQOy/grljWIfWpcMp5E5fH1C04SvSSkk4LiLO7NWTWvivf+AHdUhQJ9mO99+8cK
	 32NYHoJecfW5M1RHEwQaKFgX4dr5DdeN8JvKZhgC6k9UobGH9qAJ8ZteODqEZ6g8oY
	 9WsYIVid+qgTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A50EF99D3
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101669361.23719.9749833909118711323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e9e8264a437d94ab72965c724d29702783e1f39fd77522e09cb0b65a67d547
Date: Fri, 13 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771016693
