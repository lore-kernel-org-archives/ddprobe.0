Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA3E1CFA8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720358783; cv=none; b=FHUw1BkzSx8j/FPc/gENLMJqZTYkfXfUeibkplE/4H7A+T7USELFHnQnhdzRSNe6ka1srS+k9PXtWoveFIDU9K/sDpw5ro4pAt+UR0vhKm1mrmqVScRTlnJ61qseIRXySfIjKrUsGcFfzZdyxbTWG/ruSGvaGpJW+G+hSz1z92s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720358783; c=relaxed/simple;
	bh=FMD1XD/ny7kHvXGlEzTaswL2LRV+89oLzRkuAzzTo8g=;
	h=To:Subject:From:Message-Id:Date; b=cha5mvvU8GE9OH1v6QCqOX3FXe6/LL5MksZWTVmLNEZ6o6G+c2iIvBpX4bR2Z4WbHuvHJHkeoktxPB191kBxmzGKs43NSuRPJz2t5TGsMdLu4J8Nj7YgLWmGrbIi6j2VFr6uSoLpgHdhEC18B/tBmYQFqfEQiDoM/C7rKawbjlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kk0aI1hP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kk0aI1hP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF721C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720358782;
	bh=FMD1XD/ny7kHvXGlEzTaswL2LRV+89oLzRkuAzzTo8g=;
	h=To:Subject:From:Date:From;
	b=kk0aI1hPaAnMxFjXT/+EnqNPJCa/XeF8koyUmSALD+lJS2YSjARuq568155E162Ol
	 xFWKz0cH2ra2VbUsy3mn4CMeHMDDJ1Ongz7UvthZEZIWBNh/LMbgI++CHTf5B27Vy1
	 nzD3aO8AfIBWSAieczp2Mw5uBYKsby+c+lVjbhZKBSoMT7xXZwf7Xkqpo23TLa93ef
	 lc8DjzU4ImALfJXRn0XhhAN3GV5SChb/moqu16D1WG66+VkCCTMkYUvBUHEynK+9Qh
	 ol7GBk7Idpry8tfHt7cS9cs4TRJBh4lrfuYF4et7OSNWMtqTq7OvoSULmeY0mUqy1C
	 kB2b5umCXmk2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB73FC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035878276.10578.968912969988476265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11a2c55517f38b781ccd7e339f59ba2f4f66d2e44ad9261ad52e883a728103b
Date: Sun, 07 Jul 2024 13:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720358782
