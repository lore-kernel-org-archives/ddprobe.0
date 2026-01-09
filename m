Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFE92DB7BE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941034; cv=none; b=VaWYgBiB0ekPAaEpyGhDWEYpvcCwXpDYCfFJLY25XS980uUU9pa2zvX3/Zw6tGIwhrPX4ohnRFDpSN9xzFfI9J5OivSqSD4oFDjJqnFQuNXfAIbfxf7v+1F4eYyEzzt/Sw9OM1CmzwRpdm44Sh/myy8MXAqwTn8J8QuNGC7rcMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941034; c=relaxed/simple;
	bh=NIoGqhlNrio3HG7/CX3K5/B2+AoZ6ci4Vd1n+F8GWd0=;
	h=To:Subject:From:Message-Id:Date; b=WQ7eFrDFnRE52GNm9+mAUgdEKpFZjpU6RkUdXvM/ffgoCZeZ587XpSJmvEHMT7p0O6zwCmne4zvg/JSRdRliHmWQWgel/oPGApnaudr+nxtrmx32IRriLbQgGKCJy9gshKH0/VQKqjFcxVfpS4y8usyUyN+gpS4qZ/sY4PWop1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ludF+Zzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ludF+Zzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3281C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767941033;
	bh=NIoGqhlNrio3HG7/CX3K5/B2+AoZ6ci4Vd1n+F8GWd0=;
	h=To:Subject:From:Date:From;
	b=ludF+ZzvqlVsmKHoijhTXbsyh88Zbg/x/EZ2mXURau27OzfDU7PoSQNw36nmCZpgo
	 JLDJNsnm+IMkooaVex81kCxqOKDJ5WSgp45LwFz3neqBP2PIBp3+6PK3iCeWFQv/dA
	 PumFaJm0iTHaBxaQwTfvXR5eAI5CtAhlAsVDOpR53tztlX2itE2vlWFzPiYqo/YIqQ
	 VX9Hw8k8ZoAO7zLHXMnaiOVPWZ0GC34+w7blHvny0D0eQMkIvrIxt+a/NXn75x/jRW
	 S9GyaVIpVTO37IIc8ioxHDteK4ftWx5XCtm8Yb/kAeQvh3bYGN5AnmCmj9LtO3RLKZ
	 trtPXDhs+/E8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFEED232E2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794103357.11066.7769407530185513280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad498f65986d8a2770f5e8a9ad22ca23c433a86a633215388e4c120b0cf1fa4
Date: Fri, 09 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767941033
