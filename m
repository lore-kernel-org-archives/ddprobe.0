Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D8F1367
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757135995; cv=none; b=XRXuoWwNg5JjL+R6flOtpdztQysLNTqRZKtGn+6XSt6m80XO3ajTMxw/0EJ6DjT1FCQPWaZTnN7kVhrmhy9E1St+c74NVIRRplBMKrbcIWo/y7DwgWi6IflfE4KnW5wxKnRKR95dNEPytKTFOwNRhZthPAeNa9PYqwe+B+SD+KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757135995; c=relaxed/simple;
	bh=LcJOo0/ADSsUQDt5yIuNLJtl6FGDBbw/QKJaCTSSBRg=;
	h=To:Subject:From:Message-Id:Date; b=T/SnUS4q1+BTfwx/oXGbMxf3Swy+V6aWf7oxGLX0pXK1UpgbEGFiV2MfcpTbLfZ84hSiprvZVAsVRGv+Vwq5Ekos0XT18fN5Btw44Y91KRvxTgNlKipMX1zqEPaSuSgs4jDWf5LbtfHzcu+aLcgAj01nnE9yD3H4lZR6NpS9tvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJ4QN66t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJ4QN66t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757135993;
	bh=LcJOo0/ADSsUQDt5yIuNLJtl6FGDBbw/QKJaCTSSBRg=;
	h=To:Subject:From:Date:From;
	b=RJ4QN66tnG/bEqY6Ikfdi7xRHi+i4msSYKCTBEtzbRUboTvmj3w8BqlXSNijY1qDj
	 90LLpY4+J9P6O4MssFPEEm4s6gv4TnfZGeIuSBGPuxPmhH9EjD5JKy5U5LyRvyu//f
	 H/QxHSbY4DdCuFrBhyXB0bFONv/JPcWRbl6x52rn55hv6LUYDoyUliJqj02i8xRUVu
	 sVewrvAYt6piukmVf9EqA7V16sHP7uEe9IENS64TRj6R7lF5X8uBI8QryscyEux3HP
	 yEa36dJEhOvHZmt+kTktu7ID+oZ+EbGuDOFsF0IRIaL0vIs5POjsbqBrUfPU4RrY8e
	 oe2kTab7liuuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169FCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713599357.30562.28085963598406927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6922f0eff529e942f1088370c76b4b702c0970d3a825b450729af31fb5f248c0
Date: Sat, 06 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757135993
