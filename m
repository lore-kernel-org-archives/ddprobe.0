Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DE42765E2
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774469094; cv=none; b=W4j8a5qScs+xImhF9DZbgqsXhhs3zcrUk5/6+4fOCuO+PUbA9ZEz+jSMkulpQQjCDEoGPRVcuCI8Q2weTauMFKjkjjdfcplGqxm5J7bpnJurBEPkCwI2jYtd1myZjHehuMJJjiQYzCq/W3B4NqxLF68Jt3hQ70pWZLoEOFV29/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774469094; c=relaxed/simple;
	bh=W1D7knIQ1YL15EVCNbJXO1eLg5hDHBxnGk2B2f7GlS4=;
	h=To:Subject:From:Message-Id:Date; b=pVx3waNGVhh/QbfLkZExgqMI4/qdIoxOuruPANxqKKwIVinWoQtSAgyn/VqwBRDC46QTAKnLrgCF8RfsPTBeoWwCaleTmZD9A7WFwkb4nDWtct2CGHMDg6CiMTnvJechK2a9DjQh8T6lSTTTtmqZz4SBl93jrFd6v9wGlCscq0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saP9/w+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saP9/w+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC509C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774469093;
	bh=W1D7knIQ1YL15EVCNbJXO1eLg5hDHBxnGk2B2f7GlS4=;
	h=To:Subject:From:Date:From;
	b=saP9/w+cTpt/QqjVsR2rc/x0EbhWBoZfM+Bih09efAuJ93I/c+FkrnzouwA1AtfUm
	 53aVEgGwi8iZTEEG1HvxwdYuBljNQlJkz875kZw5Q1PzD1gm+tQXf/0dwm1Q2Bqoyq
	 DXmQklDBmEcf808iwnHWr3ntaufQzazg9G2/uzClf8npk0eOgHpDggZVDyrWTom+R1
	 KxAvOlovfIuJMc7Fm2JlsI4VXlQwmkKsyVuHxUaCz6EUVTSdiSt7b+BGtk2+fZ7hGa
	 TcpNwOELN/16qtpDSaWsbE2zlSex+QAXW5qzkxO89ox8KZCQLUNHBEU7x8DcwZeiGM
	 xKAurz96G1SIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5DE109C05B
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446909369.14076.7415124697405213971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9fda0580fae8afe9fb74150922a3c348d91cf6c9c7f45e2d69a6c478b0ec7ac
Date: Wed, 25 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774469093
