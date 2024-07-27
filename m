Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEE617C
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722039954; cv=none; b=DcdWiuxZXol9+5qgQN7IbrMX9QsaK7uexTTNwa4X9lUc+UaUSk9AYOZZPhnC10GRqgoLS1tzhT2A6OdjOZS3jzZ82M4AixPOYwwCUIHOf7Ne6mWpXGHebLDVbbudo/mYZdb+xDaHaH/729o6hlInkaOsNICP4Gq+N1/rCTXUinU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722039954; c=relaxed/simple;
	bh=6DxR6cSGSEAKpcbAoAKR9BGMYgxFSWcbZ1NXp8jVaS0=;
	h=To:Subject:From:Message-Id:Date; b=PSFqMz0VL1DTQPyZNO0tdrlbdO/5VY5/kUq48fo0m+yQfxeAoluw31IU2kIrI9bxP9D56fvzGuxAlIe8xBlnLXOGJU6akagc4gzIz9IQ0faItIjMAiSUu6MX2ia2DumUq1b+kjbZP5ZY+IWuagv3JySGEekyzcGLNO3dhiDqyEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhnSCOhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhnSCOhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF549C32786
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722039953;
	bh=6DxR6cSGSEAKpcbAoAKR9BGMYgxFSWcbZ1NXp8jVaS0=;
	h=To:Subject:From:Date:From;
	b=fhnSCOhYQ/S3MhANpZfZyUwhmQCguehq2omaXs5TtLGWbk1pCWgcxo3lp72rcriXJ
	 T8B9H483MXmeMNmNYL4hT58w6ZidbMiSjY4hBGqWGA2L5jE3/zlBcV1PaCBFYR7usv
	 j9dexkmIUMBbHuU1lyWmBWlTQu/jgPW8CtHwtoFJ3p7RveM+DANfqjWR0fYWvRslTy
	 g741rZOfW9wWhh7KP8H5y+Ucf6xEsE2IXL++MFj1onV3m/rFneKkiDYAeFkYEsYdjp
	 cKKrPkmZJ86m5lzICfjhHpC4Fk1ClleGHdf/Mgj/eRLvD6yWuWY667rr3yA9shfNwx
	 TJrpvHWHPmUng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F67C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172203995360.11531.10385762805064945755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdef0299b638e61b693ef669b5e8a6564c5e15ccc18cb5f0d9679792aa5d5c23
Date: Sat, 27 Jul 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722039953
