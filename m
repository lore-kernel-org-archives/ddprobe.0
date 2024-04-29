Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9E12C69C
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 13:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714396343; cv=none; b=h5P9BfVywJjurKXDqKXIHq5nxqes1erUpMAYXfJLwOha7/3ktK0DSPAVzSJCm+dw3EweM8tGcGPTbNiwJGjugZcQJIMD/X7AophiuluGA1RvXVfe1IBoe1fHhoOnSrwKwSrJ3Oy+AJasF/cDg9zkHypMYH7XJa0UdBrEaqtId4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714396343; c=relaxed/simple;
	bh=aSszzT73rGtqePTOOtB6x31bjdDo8ZerlN3TI2wjx0o=;
	h=To:Subject:From:Message-Id:Date; b=eI0LUkQae1VGRaFGGVbxy4KRzppT68jlV6p2kTSa+4cE7cGH9VAaJjv60meHOXYrFSXhrq3h0TZru8Ndk7BPD8C5Vw+nMkgZb9YwKi8Cglz2YwjhngBuWTTat3bHtPulzDn2fi5BKfpvSPyHujBoRU3ZOqkqg885YufmYm5r1qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+IgvroB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+IgvroB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49CAC116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714396342;
	bh=aSszzT73rGtqePTOOtB6x31bjdDo8ZerlN3TI2wjx0o=;
	h=To:Subject:From:Date:From;
	b=G+IgvroBrjTt9WLOZ9EFI5oOPZ/MVaSgYFEIIYYBrlE9BGaSKAnK2IGZLcdde5LKv
	 tU8jGe5Ry4kFG1Z8x9gV8dit2d52WvwhvV+KX1hYBVLdSI7HjHJKcFbqIwB8sQTVYa
	 TOO3Pi6Sp0CO0tSGgj7U2APUiLALL4mlTRnshOgRacEnAgS2Yg646banswbB41LHOg
	 cYxjclKob7IPbd5FJmaj8JFPurqt/ePtWJqdBjVdjF9jzeIbwi1o3U2i4I+9548eJG
	 OQ0Odt5ibQxa+0dsLNuAgPFa2n+lv3IuN4S/p2m6MP8nPisEPvk5tcHYj/kuyZdKCx
	 LdrstIPiuzytA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4069C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171439634279.32074.16238661138059818663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415144572d932dbf50c2c4c0bbb496c83ee5f802b1e58db6792075762b1882aa
Date: Mon, 29 Apr 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714396342
