Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3B36F06B
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753287594; cv=none; b=KepgJyAPIzuFsWuunPoPZ5OuriZmNonjTGucwVcRDJVrBCF2qnV3BJ9Q83mmqbuUP2YOXkSqOYWFfFfUJ7V+Zq4tZW/gok+bIoNEcIujyO30EAza5PXP8Gx1p6VO9ftkN0/x8bukBnPWX7B4vF10apLquyhOiseA1gTJwm2yiN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753287594; c=relaxed/simple;
	bh=JIchzBL4+ex4RG2WROXU/bT2cRCDKQFpzw1XuBzD4cQ=;
	h=To:Subject:From:Message-Id:Date; b=sgj9h/mtxpHfZNykvriU3PJpg8TCgevtoEc5qFNVdOOoWakngM9KvsxeUhTaLGZtZls+A86IG8XwbuLpwPrBKMbwDdeTQKLEyYhnSDatp43WjI5g2sN1+7ijvFjPB75qVI35toXkq79wqNwl+FyasI5IyGGkx/lsIHV3xG6KeqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMAf39mK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMAf39mK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D59BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753287593;
	bh=JIchzBL4+ex4RG2WROXU/bT2cRCDKQFpzw1XuBzD4cQ=;
	h=To:Subject:From:Date:From;
	b=LMAf39mKcmd4Gv3aRVICq6cgQNEVMT+MSuDKqo+RgOFkAKCUbb/Lbmo7g6dg0f1Zt
	 YhjqlpzzfdfJmmVWFDMv74QSnfF17ssxRjnZqGRiCFS1ASaLqxl2p4zHexdaxjACiy
	 Yx+lPHMoGRWVN/RukL8dzwlcmWSB5yQpLaalEfvVvXsLE2hZprdtXb15r6sBqg/puZ
	 hn1zt1l42k+DMG2WMUK94p61alxw67FpXIQzLOpzQcOr/jlV9kowtkRPexYBgQZzWW
	 8enYAq+xfdIrlnxDtb6f2DPm+O3IPMfq3GZl/nQJQJ2Z7LLZDTNRPcAegbppZVfcME
	 9pxi9w/G4DkYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FFC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328759357.17441.9810398443451457023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f326303ad0d902d86f7f5ef63003a070efecf8d7ca76492b187bae955e21bbf7
Date: Wed, 23 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753287593
