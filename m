Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349CA46425
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727086554; cv=none; b=Hb/7K2gbJxA8r5HYEbKjmCllRIcDITRzlA8wkV+fxj7t0DChgb70JdD3Dal3I46Ex4AHxZj+TVEdMWGV8cj272MHBhJp8L9KQct06cc9rprRJmbzXHDTmbaLCu9OBUH7/VXuarpi1HpasNAwieJdNb+umj4SnTdQDwZ5waPoShw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727086554; c=relaxed/simple;
	bh=6EYSnGUTfPGhRq3PzzdVlbstZYFUwd5PGjDvUTtvZRw=;
	h=To:Subject:From:Message-Id:Date; b=K11ACIpXBcSRp/NsCsSsCUcXdNoaxoieu0OWXDaPxpXymw3atEwwLwamIRpf+Z6VsT/VU/EoivbWKeU5uYUPFm3fkwveE3AARc1qSwgWOCr6oBFfhUtkISFflKFPhpayKXiPj70xqMhkPhK/hUOh4NlSaOe1Efu2xYDRqOR/BG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8J2J0Jb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8J2J0Jb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1D3C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727086553;
	bh=6EYSnGUTfPGhRq3PzzdVlbstZYFUwd5PGjDvUTtvZRw=;
	h=To:Subject:From:Date:From;
	b=A8J2J0JbhG2SS59fn48PFMMhJ1JGc7aJfYLKWeZ8+znVkjKWsv1e7t/aI7Arz5eZv
	 +Ag4OWMk8yfw7iMvs+o1Gvz1lvSzH7cB1r7sESA3+CqRqiuQ9oBXkNGOl34ajrOe4l
	 6LBtUGtY2gpsBOHG5W8euuo8Yem7X/eoSpjbN6TAA7u3di8JWJT3i6vy8IROQ1OqP0
	 +I5PKl3i1lD0LNu8O/1RD0/D6dgvWEdc8hm1MoAdjpsUENoUbGZiOHB+MxTT/SwZQa
	 Anv3DNeN3+uxSC3XrSXgXdoy9JA8jIf9lzLcP8nMmELunM9hswxwxJ6NcX7jNdCEnr
	 SUoymyvGMOf3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964E7CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172708655360.31523.8136814793477990047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22352af14d6546b5f8223d8e2cf16e54ccb0b125470ff04ed4c16e20658d9c8
Date: Mon, 23 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727086553
