Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F063CF95E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784581114; cv=none; b=BN0aQ0y6w4v+oW9TCFSA63hg2OsS3scvzey4JfuUqNTMTAx7HsTBY9w7cxddnxh8ZB3srt5Y8X1WPwHgh6c4kxIVbQ9dO5QdLtQJhoObL2vSfO5rFEFBkWy6Zwn4tt5iB9x+RSFEX/93eAxiB9Zr7YabTL6a4WW1dJPf5FHceqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784581114; c=relaxed/simple;
	bh=eBdZEiqeyfmEsbZtkw/X8I4zF4fyjqfcoHKbd+hwhYQ=;
	h=To:Subject:From:Message-Id:Date; b=QMtjX0PbGxyK0VIv1X2ePnXzKo9fllPywwCVtZmJkATshOCZsQegTMrQZoLEDOn5u1YKhrBKpB0VDv0Xwb92jAFXmekEV+sSY1jusHOSYYdBo+hUMoFwVD9iyBqL0vHEB2+DyauOUttMnbCXOTmbt/vCV9So51HtaETPfdCmQXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4Q0zHt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4Q0zHt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8501C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784581113;
	bh=eBdZEiqeyfmEsbZtkw/X8I4zF4fyjqfcoHKbd+hwhYQ=;
	h=To:Subject:From:Date:From;
	b=f4Q0zHt/PGI5LJbrMb95Y0rbjB5v3ssY47i6WiODFydd8dXCRoQNBG30zWpdTr/Gt
	 HxcYxo2QV7K+HDjS2i5oXmf8VcQaDOI4iQc5yjon++PrrbKpLOclQVPEK7etUF8ELi
	 d+qUL+Cn8jyNBRSeAuFNeKoeLuOFnCaGkhNxm47igFA1PwFSYMPmNSpdcGHOxSTUMe
	 Xq3QApS7uqHHSNy9afMp5vom2biWEpmNqhj9EUp+YsTBOIVhAsnBC5kl91nJxfIXgn
	 E6TRoZ6MDQaDTEBkxpRRl2yMJqlBM1XhcKgClFUJKa7d9jOv/DheclhFomv3vKbLU7
	 JAQRff81yCsIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBDCC44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458111369.14662.2968802682622267842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce384d09a71befb4ab5003b2522cc44fc090184f199583f9f400efb6c4c431ab
Date: Mon, 20 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784581113
