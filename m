Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238721BC5C
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756434594; cv=none; b=SehR+i/5pomsKyvPnFZY1yCHFruY4ik5E6Lk6OMPfjZo4tJHUm/5qQNHIdTakVg3pB4IlRrfMM7oAkDGNoOopDkf3s4ctc4Z+OAPs70q3WDmZnNXQRXZIj34EH04ptD7M9aaMV4w03IGP0IKVkBQy1V7izUHpjCSQNL91XU/mXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756434594; c=relaxed/simple;
	bh=hzSunAJbEjPGmWtQKKBnxwnGgWfMRUJg67EGpSGJTjM=;
	h=To:Subject:From:Message-Id:Date; b=JUFc5RrNnlvEY6bSAUQCsUUoc3hm/An4T1sVfL9HEtNuwUHOaQo6+dSzl4yg4/Fq0rDqHnEmPiQ2iNK6Lg/yN3HV7fCqL7uNLSIQnTyUg/S0/m5ev/s3vDucVu5xm2YacJH5l0s44wnBxpwmTtZucTPkWjPsCwR6AkXSwJdD170=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWuv3SCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWuv3SCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FCEC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756434593;
	bh=hzSunAJbEjPGmWtQKKBnxwnGgWfMRUJg67EGpSGJTjM=;
	h=To:Subject:From:Date:From;
	b=ZWuv3SCTkdZnykrm1BPEXurkYu7l/+T2Fgf6bAlPtK6Irmjp9EBnqiaNOHbesvso6
	 /TQ+uFxg7ttWbC5XbtySZ/9zLa7us+kvVJaE+sUQDB2ruLBlEnvpy5P6at7i2z+bPQ
	 xtf11T1PFum3v8xwuYhZk2jA/UssKBUlkM6jk9JwKclTTBHyWTWU64yEXVIUGXEAfA
	 4zBVj2DJ8dOPeyQhCNoMMCoN12kRXEntP5BfIyochrxIZlMyNgYGKYQt3mRIFxt3QJ
	 sIYUPx8mH8ZbicngEJN3MzII/5bhOKvJhBSnbK5uJ7piTaGn6xGcEDIw9509AtbM/Q
	 r3GnVo1DGqUjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F605CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643459357.14970.9001206392898598837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea6363167817b22681fbf8203e43fb12b71d2c8812c82fe803a958b4198ef18
Date: Fri, 29 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756434593
