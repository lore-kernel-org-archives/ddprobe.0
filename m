Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BF21ABEC6
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722623754; cv=none; b=VZIW0h+9AlJ2Xf9I84NZp7Ywl/show1wVJW7ZYimSWdMgkNYSsYRgujcO4GLpWxVJ9RBHzdZ1lKmEQjYU+sGigdt7R9EC+nySv6QACQ9CuFDh0Sqnx74GZnjRqEX1EOY+02Wd+GnolJnInHClyztq+wzaiRIAgRVVTfRH7VaTu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722623754; c=relaxed/simple;
	bh=OAk4Vy8MUnYL5klK+HQgSpwqwwQGrA0xj8BycvKBiBs=;
	h=To:Subject:From:Message-Id:Date; b=eMncGlFf9iiw9WzvnK6B/w3s4+1EzuWsBLOI95ziWMdNCg8p9dsLtENujiPruophs74yFzHLSJiIwbVOv6qeMcCuh03LSW33OW/OtrtNpDOEJXHqkaN5BF7vak+ibcc5FTCCDCSdEDL102NFdZrqaIdZLHktu298GjLdEfr42Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/vL9qoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/vL9qoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD610C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722623753;
	bh=OAk4Vy8MUnYL5klK+HQgSpwqwwQGrA0xj8BycvKBiBs=;
	h=To:Subject:From:Date:From;
	b=G/vL9qoAqjhjq3G3Pt+mkfmIzZGoJzIlT8xXLxTStbeQG6ZVIzSovJKZiWqqvDm1z
	 zgzbRR1glWaazU4mbu5xx4nUOgkJZExhr61EW4v1KMrDwiIz1vLXw3mr9zc6xQN8gp
	 1ARYI1ZVGl7FdhJLHIny+4Ri1tAl7SQ2/v7yojjF1wRGS66M6vgpQZ77T4C1If7rnQ
	 gZCELKwEDI6IULCFIFN5IBBqX+nLfhE+NqO3r0ugdlPwkffKSJDTefdatdPNRzot50
	 8utfkhT1XDr4WND0jtEnOCBywUNSJfd4rq8b64r92qLrSCQZqcbJ656hRLe9V11lXa
	 2adz2hgv5IHHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC6C3DA7F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172262375360.6217.7870092610285552575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1af51407c6131e417ea03ba4843b123583724942a5ffabe75ecc10feeb5b03f
Date: Fri, 02 Aug 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722623753
