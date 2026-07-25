Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0C65464D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784952634; cv=none; b=LLOeHxIiw7FSqVSKN3wi8anJ6CJShD6MTfL6+d2QnHeUQ85fuesBLHeb3oyeYqc2gk42wmeKriQVYaQHBXtYqrtNbUQWtplobp79xhcLlgEOf9aeHS+JXmB02+s57x4Pt2pZvqnrDX7HN6V+gN5Y2VuTDPpskAJ43bdcI3z0Xrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784952634; c=relaxed/simple;
	bh=6dHiTlAz9nW0bC7uxufk2ebFL3Z9jkvtAcczrtwrFZ0=;
	h=To:Subject:From:Message-Id:Date; b=dTKto9KmGWkwfx6b6O6CCvrkYX/zYlSjvfsbUE57b7RuK5vbLtgpDfH7SG+oY3hNuvPX9OuYVHNPFAb/RqAAF+5+H7P1DfiXZC3YC0z8MsJOLZPBKDT4Jv2F9DIrtKgFJgqjEOKmi0WjhrrGcuBLEaT+ccEQdIsdb5HlDtoHsrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4pzyFlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4pzyFlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5FCC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784952633;
	bh=6dHiTlAz9nW0bC7uxufk2ebFL3Z9jkvtAcczrtwrFZ0=;
	h=To:Subject:From:Date:From;
	b=c4pzyFlo4w/E0XYaPqNaLE4gwBPEfbw1bh98TJzrVB+y0N7Uqem0HU7NS5Rbpxw4E
	 0uJztmvsBAnhUU5UYhlNjlStgfkqyJgif0NFScC9vcAz8kBweFXzpzjRlz+Pdd8f9r
	 UY4b+dVi6/fhUOYFOWv9t9+I/tyO2wQhkreqknXDpdUnZ1B0BYC2QLLLG5VGZhNXkD
	 T/OSl9qkWuJaawfzd+rct4Svh5XdAbSbpVTX4wemgesGyiFRv3QuYGdx6u8v2uYSaW
	 RQAXVHkGTPCpNOgCrA2VBn4KVutbOHM8pyuFFGv6toXcAjYySrGy+FDePuCkEXI0Ej
	 pJ1E+OinFJdaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79D2C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495263371.11063.14102797253764778705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1958a15ca8ca9c5509aae75992944964057fdafd01daf95191fb7c1718e4a5a
Date: Sat, 25 Jul 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784952633
