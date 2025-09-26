Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DCA1C861E
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758874794; cv=none; b=tFcmOq7EVTtSs1cMn6u1GHihLVQfNcXDcXoDo+2lQxDJsGps+BtnWQSokUOfI2zN9/r4F0n++5hMUOWhgNrdpBPFXg6HxgFxrqbKAkUXGpp78hC7O3L5jEj8rVKsSZRQzVv5L8I2wL6XA4p3wy1k8L5Hcqvh+DMnw5PMTWf0dT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758874794; c=relaxed/simple;
	bh=tiB+/E/KiBHsltmIMwBB1hRJOo6+mB5wWBsCUyl+rjI=;
	h=To:Subject:From:Message-Id:Date; b=gchBPX5K6v31dey2QUAob0I+fWzvAUEG61ELv2i5yPD9xbu1RSooQv5sRSg2244ihRBGWHuH+7DuwhcON/r8w6rrcaiYkRcHMUzkxLpnhTlVOPgj5pJcbFXKseA9AKr0trkSbLwc4rdJAKhgFUAc4uZEP/ULB9qaK0SFIiXo8+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pg8C0+dZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pg8C0+dZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5EDC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758874793;
	bh=tiB+/E/KiBHsltmIMwBB1hRJOo6+mB5wWBsCUyl+rjI=;
	h=To:Subject:From:Date:From;
	b=pg8C0+dZ/ZI2bIzTztolWlpy0LCShHKEHgJ4gWu6hWjW4ixDktDtGDmpgbFM6Bptv
	 gz3p6lGup9eq3Y7DAtCm44SNuT5AnzrBk+kbDn7ZS3vQFSNK9/wbYy01rSpFCmNBYm
	 BJQFutitrMQEROYP15HuzDQsdmmnf57QZ2gA8Fe/S/0DOLc5om/BpldjFYS0MWhTqQ
	 4jgPLmZbzFuPrTjaDvaRWp74m/vpEoei0b3RCwiCSi9sIiOAIPwCSlD50ycM6gdwjQ
	 G+fo6CRSMluS85cQJbhfrvuZjTsF9uCueddg6r+bzWilRNH7hpqMKkCJCQY0tIWedY
	 zAggyYgrVdf6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B5CCAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887479361.29146.3357434508069790702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf07c7be6abc757e2938aa300901ca8c7e9fc284fe02186fd1ec69898ec538eb
Date: Fri, 26 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758874793
