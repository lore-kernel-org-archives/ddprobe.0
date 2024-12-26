Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E61317758
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735227954; cv=none; b=HVB0063ZMpCshgl2BhvtMXiqxjv2DnmlzU9C/rVsw25Qk4xVgyoh3lHhIbaO84E1hHpr28dVggrFiu496p1sIw5SDZFkytVPUPPFMEvU6XOLtuVRm3Q5n5vYwyNvh669bmpxu2flwS/dHm9n+URi16hqF7hIRAh6gB7r3Wz/CXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735227954; c=relaxed/simple;
	bh=NoUMnEz4l6O/VBVoiuFKjlUZ8wkgL3lefqasEerw8xE=;
	h=To:Subject:From:Message-Id:Date; b=cn/r4WoZ8faLKAV9P2NmUPnWGTin0ewh4cJUN7pgYt/l3TfHJDqB1yEM/WQ/LJatCGeVBX9DvK4ik6i96BE5UJhEuKBxMIntnug3U5nUC6eeBVBZtYDXeTtri5BvkHPAaocJ2FzFZfe5UZw8Upr079I3weN+W5cK6mnl54Odz3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCg95ds2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCg95ds2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64E7C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735227953;
	bh=NoUMnEz4l6O/VBVoiuFKjlUZ8wkgL3lefqasEerw8xE=;
	h=To:Subject:From:Date:From;
	b=cCg95ds2qpfxxOuluCsIFNHYs63X/TuS1l/HZxih81L/NsT4aRQZu0oi2guSyt5yZ
	 wdCm6Hyh5HYYKQMJ7kw0vvwRAYX+ivkF9AxePkyBSdmLRFF+KWje8wGeDW+KB6s5nV
	 +ugW55hPm301w01OVVDL0Ox7I94lzpz2WOG811E68Bg70mPiBfh9ZAzghsgQ3+AcvQ
	 TRs4pq/COTxCkmftxY4D2BT4jj+kvcYquSzSbv531sUIH0H3NtFIS4kFGTF0gU/jgE
	 59U2upJ+PW6XbmjI1J/fZpM9vqIv33ad8x1/s5WbKFNAwOq68u7VG00c8qfUFLFLPM
	 98KqtXgTI2cVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B8E7718E
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173522795359.16262.1650816405754672805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405cfaa647aac41496a7bf3e1f5d4ce7b2104ed786a1dda79fdc2c35247d01ad
Date: Thu, 26 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735227953
