Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E07B24025F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736792154; cv=none; b=e7CYbkkVbTVQNbJEso02kTnq1B42fo6UwYNLjv3EScbTR6mY8zz1p/R8wqO7mSPaGBY3FNZJCKNRb2l69a2pA7ExgPJt84Wf9X2VMCFL+0Z0Kfw7xqu6nMz7ULKiP0RArAdIWHzLonKPTdgZ81SA0rOORAm3TwM5Y8Qa93VR4vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736792154; c=relaxed/simple;
	bh=n0M9D9DSWsff6kxP1JPPl2s04LGc0V9rjl137hA6UWo=;
	h=To:Subject:From:Message-Id:Date; b=q7Wu03RNTAoTUPovIhxM3b78vuZpegDGlz6bY9G8hVraHyq13zUvnmrtg5+COxO0A2bKWAwGMxbpQOqWkM6itE+hlpDbUc02EgyNr54+avqRKELW7TbPygIPxwge5Lc5aBxZX+9ictSemOnRCCsVnusRnWHjnXnb8ySrwSpltvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeqGTnor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeqGTnor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B000AC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736792153;
	bh=n0M9D9DSWsff6kxP1JPPl2s04LGc0V9rjl137hA6UWo=;
	h=To:Subject:From:Date:From;
	b=eeqGTnor8Nq+sSPRz+2m/MYAwkQDXmn+CdEUb4+Gf3X3RfcYkHk2rSLkCToHYKZlD
	 dYoDaAvKmjrxUCWCrGV3idR+Kp9YWk6onxZh86LOAXIV/wvWohhRgg7H8WKe6CMAKQ
	 I3uNjpEBURelYlSNMZmPMhem00kx0AOzNt5p846hHFXm5CjBs9c/wCeT9qlSXBicQT
	 r10nKOcOiSGr8gt5/vvxRj2Q1C0H3cTX9hkbSLhCW6M0+fum/oyRjCv7GWRh5O+8Gc
	 XTbaA7hG6ArL/Qs96moNQKnN6j5etYnvTqIpfMjkMxnTaKRh9Mm/SbuhE5N+t1P0ny
	 1c030grvcsYUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B59CC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679215362.4437.17248491359878541138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a123f3cde19e6e1d2a49f239c99b6adc71c1d6e96e735ba05e4e31e8364f8f99
Date: Mon, 13 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736792153
