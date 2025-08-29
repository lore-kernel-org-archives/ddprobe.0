Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3E72EDD6B
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756474194; cv=none; b=YSfsBLPiXDcHfcNSGMWAR8KXGUQdkvfa1x/a917cVl5mwmTGyK3LZ9G19p/TrfkWFKK2pwCapGdA0ynGBQNibiEcZTjvpEvPA/mi1u/65PUALi2OLzUT8F15DwNy/e3CnOJEB3Rbzx2S5/f6CS0FOmroRXak5bFktLtqgiOjCTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756474194; c=relaxed/simple;
	bh=L/iF3a9FE7pgb/UYmI3CkQGWQpEBOynSALLgb6trcqs=;
	h=To:Subject:From:Message-Id:Date; b=QJ8CihatZEVTISfG0x5KmZ4Hi4moW7qzJPzBT5C7vhFaSrfqNOymVjzo0yTzF7zIYase03wwm5EdBD6LGR+4hiQOJSdff11nJInf8WdWOEe0JDKP8fSc6tQEWJmBKDUdMYZTpG1EOJamxsp/+KTgJx7g4mD4IYuOhvRgH//6yy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqcFYbeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqcFYbeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E024C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756474193;
	bh=L/iF3a9FE7pgb/UYmI3CkQGWQpEBOynSALLgb6trcqs=;
	h=To:Subject:From:Date:From;
	b=WqcFYbeE4dHK11oqBU2rhzPdB7NXuYHROmwiVanQ3m5lFh1JzGWbC/RyRXOHNTCAw
	 lThVd3RO7WOdmzvodJJkyHOFckC+3scY25pRh6ESgyEOUCX1TyU1dIRh0lPAykcUKL
	 nK+RgN3kZzn9lrSqIKU/HmrlmiimmQ2psIIb8wJOG0IJtLkto6KIFX0JAE0UAAIK2j
	 rh9+bFnIH64N56qFMGBEd1Py2bEnyjHw2wpibsYXFznr0cBkamuVJKTQ7h3v+baEDc
	 Auo+bNF/IQ310PiBP35F24dy0ukUxDQVe3h9GgWSgDbyA3H4jS7LMPk8PdlUvTPohG
	 BYoFYUS59BLkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E836CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647419357.18169.11110568241819086308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3a939982e9b59d844f7d947808e5c67383a7d9cef7a43fe7eb5396fb1ee5f5
Date: Fri, 29 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756474193
