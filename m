Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A25B27F163
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761078594; cv=none; b=PpBTFR34Oz/2QhzIOZbqIu/7C4onYjBwE+YfNBxohIy73iYTvvwvP/R+G2F9DLu0YhzX3Iy/O8KByEEOg89gpIp1Rpa5zxBzIIR/+9eAp3Zt/j96/+ZblWxow0ffd2IS+9+OMp9/QU0Zr1be2k7U8WKa+EUyLh06HHJDWJ8rmVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761078594; c=relaxed/simple;
	bh=TNDhNcbL/jDcm0LCWzWuwcGHOc6HeIJq2JqK8UkmMNM=;
	h=To:Subject:From:Message-Id:Date; b=eQuUN03MzVGc/9Yg1930MGuLYdg0dHjUSYWgaOOtOJusjTgF9QMuSIt6aVBfmhFy2boJ0s1A7VdFjpeUBLl1Jkx/ueldKNGPiSz+0Zov4N6jUK2vdsrqI6Ow+PA6fa+KW3g0Z+0yXi2utiI7XyMXP6ATTwKEIULf54RkKRYafkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlWR57fY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlWR57fY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14BDC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761078593;
	bh=TNDhNcbL/jDcm0LCWzWuwcGHOc6HeIJq2JqK8UkmMNM=;
	h=To:Subject:From:Date:From;
	b=XlWR57fYdiK1YdmCuD9QYRwOWsiK/alFK3CcQhw0p2PtxuGjI8fCnCow87osfaHsf
	 a2SVzUlNj7FnAYcDl/Kh+wIPkf32T8NkjzNOjGod1QvyBEXijHtnxjZUdhC6SKhs9+
	 p4sD/AyyXPf1ipCV6RAjxcml2fcQQzL9zR8+1F+zEpqV7FlKTvfXJIUZvgg9JnlMeL
	 MXd4nxWLgV2WEjxkst0Oo+0vrrkwQqsa5GoM0ATLvLrgGHzM3QZFU6R+dpE2lK7Lc2
	 H6gxXVXnVAuX7mbJ5yhlIqhtqLgzFVZEAu+jJY60beNlsNs9Zyg4yZJIsPfpZU4msF
	 dikzJLSaWgdQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91676CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107859358.7008.1320577608205675096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65bcca8615865747989571b5e7a7533922109913559644fa7ba8dd91da6d0be
Date: Tue, 21 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761078593
