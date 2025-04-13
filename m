Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71EF663CB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 00:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744502994; cv=none; b=ZQGLkz3yaGHMVjNsEg3r0MMy1qm7j7v6+79SkG+/Q8CjVTQCOVsDZrY2UQh+go5vdaVIwmtxgzCw0ubYhTftv5/DqTraNwr4Iu1Q80tgutDL7hkyNsTWjFC3ncwmbxwbSuIrNlYQvHmZOlr2LJRbnu3yt5isy2Rwi7O70Z2Xxic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744502994; c=relaxed/simple;
	bh=3TcD6C2nhD066zGL+2LeqZP4H+Q94qudyzcb6z+9Qq0=;
	h=To:Subject:From:Message-Id:Date; b=k14HIZ0TDhtiYfShFtOcDODoVH9k1KgVgYxKNudtfL4pTJ5UVSpkwkHzk2ukEuE/etOSSKni2aIRozq7VFwMOSw2CK8qSnrSXoL15PvEFZPfiGgLGU39k7ABf6GcyfW/CNm+Dxd4aNnmsmZ36D8DDS72rt8qIBqllfgeHDbj1XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvtsitwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvtsitwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCF5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744502993;
	bh=3TcD6C2nhD066zGL+2LeqZP4H+Q94qudyzcb6z+9Qq0=;
	h=To:Subject:From:Date:From;
	b=QvtsitwZSjEvy548/FVxVtaYRFfT9oDFDC4nePj47KawzOD8HJalAcCliJ4wu0hpk
	 txDaLAhgAGrhUrUwwaFfgkpowyBum0WeSYJ8yCqjUxlVInjBVsBjVky41d52r0WZlQ
	 Jq3CH4Bm3gEd0Kw2oKuR1YUizFN2sjHrTsJOX6p79sphatu2Ro5oAWn6nrnJ1BUkRi
	 9Oqw10lJ3cb2pQlgU/yXOkIaf233wRvXvfmLiviwer/oZS0HkjAKYSS/kd9aX/bZsZ
	 viV1w0tkcpOR9rTPUCoZSbGYbjCdypyoGOTlrT6iFSD/P9pT4US7n/zk5Bg2Jkurn/
	 q99pzVbrt97+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B2AC369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450299362.17435.11848010484385749484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9029a603eb196803ef3cbc568897e65db9e565c0e42baa5ddbfb01a8e3f5883
Date: Sun, 13 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744502993
