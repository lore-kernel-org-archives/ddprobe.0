Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3261D1FDD
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759608594; cv=none; b=FM2//gSpgsgDtxDMRoGxenNBWZ/sEn9+SOYQ7RdduR8qd02X/1l09TO2SVECf3+0Gsl7nYjIme45yBe1Vyw0cGKH+XBMATbo8Rtc7caiaYSxWDbucNaARZoKgtMjJNdwpHF5pMr6rzeJ7j0rD87HabA/QGcK/s1J16+hhCMloGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759608594; c=relaxed/simple;
	bh=GxlId4jpjSdCRrhpnuVGVdD5bk4k44fpYmuoIYICFt8=;
	h=To:Subject:From:Message-Id:Date; b=Dsv5M7/SZSfrywdQt4lf8MxxoLa4XJrH3r4oabUUbRDLhc28lT6nXd7cagd4qMsylR3jzwUE8SGhEsob4l7JRGKc3jSXnxYa9pPwvybirNdSv//HOjBRY0tRgxfQtzvlO3Yl7AdFsAbwSNWa8PhIRmoPqY/WSrmxWO0QcpLNPwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ig9PexN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ig9PexN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C48C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759608593;
	bh=GxlId4jpjSdCRrhpnuVGVdD5bk4k44fpYmuoIYICFt8=;
	h=To:Subject:From:Date:From;
	b=Ig9PexN9IbpwxkWF1GXpus/QA4SloVUhsCbR8/Oz7X9097f1ShD2NUGKM9C//OXg/
	 fcPp0yy7I4dKR6x8NInuo2nkj1NBai0gVboy/Q+sPOlJfYcfsmiAYIXHm7DIHwJrrh
	 cjiKBFR5lJ0jSZ94CA2rcaymeVgTC6RGYz6T7aFzJgpepPNs7nCwQD5RdCkEJaASjV
	 ARl1Qm2Fv2AGOig/BEdEIyIa5ekkXZV8rj58FD63AEGptdeMS1n99uLFsNKlFLrjI/
	 FgZJ++dpQC+c8HZ58KkF8XCR9wxnv0ECb1B4BCH9g50gnA0KySTNVRxrrAGp5yCKLL
	 x6IW1Ic9Yb5+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C59CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960859357.23007.2550962940399898133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28136b795da27b0f862b8cc11d1488425aee9e465a98edc7db406663da4e3cb
Date: Sat, 04 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759608593
