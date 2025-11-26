Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2288A331A6C
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764172974; cv=none; b=Cp/FstBqgl11CV22MMB5iN7vu0VaFftNiCeT0MiAfTU3t8+gGWQWoxsCsOtacqeaGSJEDgMpn1SWzULFI0tbIeTRFPx5oCfi3LTX9f9tVZ2pQQNaPThK6xJQgVTeyhnSVhq7jammOkzibw6BklkjCeU+s1VjTStHty1WsJc+ITM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764172974; c=relaxed/simple;
	bh=ejGhpPK24xtMeknE2qTXByH0DH9wGrBV2XnPs+wlzhM=;
	h=To:Subject:From:Message-Id:Date; b=pP12/+kzOkQFhduKfkiP+gEotFoPIf0knLoR0j8hDkh9SQSkCU6T6r5pWnlcWUhqXfbMdd4jsbAho4Zpulg9F8jvriXPLcYHLHZ4JFqAgrJQLTGg4R9EFmWGHJzQroMLSU6/Jl5O+RjPSV89TCh/Sjggv/hbAvwJa5fLQfDr2YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YM8zcerX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YM8zcerX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BDEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764172973;
	bh=ejGhpPK24xtMeknE2qTXByH0DH9wGrBV2XnPs+wlzhM=;
	h=To:Subject:From:Date:From;
	b=YM8zcerXcN5qDFlzOxizX3QDvZ6lh9457CNF/uyaTyek8IJRnMH2XsqR4ekGxdhQD
	 u6Y94AMF1R6b3ucNWfSEf2OXeTg6cvW/0ZlUvJdoL7jNzSAdc7sz/nwkDozLaUUnvF
	 UnIo/Q3kAM4wgpI2fIZ0VcRja0ywZXz+ga18DnZaL6Dty5EW87xHjtjDMS/o+ZarMN
	 OsKDi5wED6UoMLiveaeAXr52CfXwCMcJuSxJCNGdJE/mE6QXfpzw3rTE/F57af8Vca
	 efxQ6a8Cf74a6m9d3SmKuKPo6Pt8OD+fWpzIS8QUQAO/FXGsjngBkJMPWFr6yvDm6n
	 7ccMQlfhyRu1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E0D11181
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417297360.6216.1994325736229122421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1ba21a1c84c51236cc9dcf70ecf7a09af9f48ebd5a03698494f4fa9d850763
Date: Wed, 26 Nov 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764172973
