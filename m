Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B11233149
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772246694; cv=none; b=Gf/DvXY7DaCIXUbvxO972SZRjyBpfgcH80AExfHC2iTHekT5Hl2yanFP9td6mybyDgRXovvuEzlEs0PuOD6zv0G0fB0nISZtAQwpHEdTOvDT2P6AyBkWIt2T8y+ysQZoO125zGFJqiV6EkRJnT/XBn1Cmj4LmcoiHIS8XUNgFDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772246694; c=relaxed/simple;
	bh=jYMM/CGeWzk92sfD0KwCbJyQYD+JaSRRFLhXfnwBgk4=;
	h=To:Subject:From:Message-Id:Date; b=THPn3bFIy/4d0+nR1RTniAlxiFNoeXa5ecnnOz97rfZ5ftXXw9GeYJMgjE2CFwoI3Xpvx1TBI0vBW3j3SV5Q2KqiAFDcsDwFUzVBFOY6CooF4kNNEZ3Zp1hICF3M9mktmDgTrfXp1lZVx52CYDK9/fDE3gzS2L+rLBz0p13eCLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIOOSJ4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIOOSJ4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29F4C19422
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772246693;
	bh=jYMM/CGeWzk92sfD0KwCbJyQYD+JaSRRFLhXfnwBgk4=;
	h=To:Subject:From:Date:From;
	b=MIOOSJ4azL/xW27/jd1jPApofIfP4Cg2/tDybmH8CS/HqYY7k6dRUOWvGBU3I7G/k
	 531sOBO7FkXR9WOZzZDmqD3mIjntJTGlWC75ozhp6cqmTnYuoFOmIHYtI7BGF3DYB0
	 H4/sfxIKSmETahj/tTXH9DXNz3ve8+O3k7Ou8o9SA9Qok7FeRhUGoS9uPjuuomzvQP
	 4EqHZyjB2OZguyQeppUCWl+V5VcQ4qgaCsPFvHxZ9FcbYOnzWMBHM0NSd3UcdcJTII
	 rBSlq/1568pdibaOniZbphmbF0mTaiyJ2ticATyF36heedQLgzwY/zAhurzd9RpEss
	 fbrjqmZDOfy0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7CF104892C
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224669358.23865.48635551585354754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aaca99d8e4f8a8ca2cc4f3a857c120dc309e67e96138ace0ce39f267daf9d35
Date: Sat, 28 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772246693
