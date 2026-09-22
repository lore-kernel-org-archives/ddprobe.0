Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEBD3A2E3F
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790087434; cv=none; b=falFFOYhiRntV6lXsKtt0dP8XAZLfxRsmd1aNMopm2OP5PN2GwekEA1qnOJvKdQ9YQoAHjQVyPqsoBAb/N3rAP5eSDgolL2Wfv+Uf6w206XUI72q78PGtHon3P/HjIMBkikKg9W01dS70xkQRAo3IvMX4h/ttYWGowoaLO+iCWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790087434; c=relaxed/simple;
	bh=gWCGLQFpHo2jqUcoJg37/fe67mXnAx5lnYA4tsG8jUk=;
	h=To:Subject:From:Message-Id:Date; b=A5MNK98HkuqatLx2OHFwG8sRItc2Gkz81a51f6YG7r8EDpVbbGqfmyQR67DmQmotV++4hGIZDGiRKRVfzGKZxBbjiB14lJ040/D2XFs1hKO+d2TZT2EQQWxpUxrHtocT6WId4WIKRpw3/TvSqw2jV+ScbXFNVlFrEYOqb242o9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hiMeJPmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hiMeJPmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3170C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790087433;
	bh=gWCGLQFpHo2jqUcoJg37/fe67mXnAx5lnYA4tsG8jUk=;
	h=To:Subject:From:Date:From;
	b=hiMeJPmbaDE4NdDYhz8oUxJuC5ounqJfubzO8LoYkJxq/z+X7xyPTiNkVGN5+Wk7b
	 HaZORrPml2EOeU5BZ+0r21qNQEXbUcD5DAWg6A3cODCzPKPI0qYUP+tCui2rQtHI1I
	 vWs9pL+M5+Oc4rEv2q8wQqBzwQfm/WcQFhBOF3qbuND18abpxf8r6eJNfiU8ckJ/s0
	 sZiNPRcU4k8b6Db7oHNGNr9whH+rEDwbd6UexTi6+6DbWqBWrcwHVt+okrAP8Rxo2t
	 webP6cyhz2JVg1i7yklnSbR3EXCD4KlW59mk8jYlCPVA5LPEooDbBaBKSbySp8E53l
	 P2KIdIx+nsX7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84BDC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008743373.9528.8743044766738990738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ce05f93c93b20b2222ca00a3405980bbf8534fabe5bff323dfdd4100e19274
Date: Tue, 22 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790087433
