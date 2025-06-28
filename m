Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC9413B5AE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751121595; cv=none; b=uBjKATZH6wsWVtykfzZCjCykcwwNsFrxt2fe5ZKqBmZkHRQGlwF1Cgs2+ttRPfDwGlggUeLSC6y9mBvIrd04vz6xSbe8djSunL83Ez8b0fyVq5S96esGOH1fMUqlXQe3b8/gjq/C259hbP14VFAP+zDkqqAVR3ngnKahRpo2/hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751121595; c=relaxed/simple;
	bh=fs5nqcpF5QzXkqu2h1ifK7UmMVYyRoXUZ3/h6FAYk6M=;
	h=To:Subject:From:Message-Id:Date; b=PMEL1BbuNU0/rDHLUt6KoHAD4XS1S6its2uN9Gnlz+s1MT4OlvIddWmatRrKcNNqOuHn80qjcmTa/0wnSovgR2Fnvn5sjrY8U9qv/gKWjaY6b/EvMzJiZW0QLHfZTqE/SxQhdYUCdbLafAuGbL/c9y1wbL/BKhEb1dBkH/aA4WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lASffAN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lASffAN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A59C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751121593;
	bh=fs5nqcpF5QzXkqu2h1ifK7UmMVYyRoXUZ3/h6FAYk6M=;
	h=To:Subject:From:Date:From;
	b=lASffAN/76MxAnO2LBsFRcb0QCucX/XSqMCWV4ltxhnEoMtuMM2oFyBEs0hUnjmGz
	 I5mMFFzv5QPBZpgXOYdpvssEMos673KEvlJ73cNWInuV4gGtrPJllZckufPG+EXZiV
	 Bu/VIOGqsODLp7rTRmUWOI0+Gf/a4SLlGB0oqHcwiCtmqiDpfnf3tIwqXtNm+xgBVS
	 wdQyx8dsY+D4ZKTjHWRtClx//BCGj2BPSjzavuqbt4n42S9kQhoK0P/97RInXKSV/3
	 7fInzpaA8emG5/gYOmfW+aqqpRnDSrHKhfb6ZSnEBsW3cfiOiKVcyavnAbtQFbrHvS
	 APKZmOs+epRfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F787C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112159357.1406.1269152062098973553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0a881d88120eb5c29188276f96161dc541fe9733506abdd999b61b552243dc
Date: Sat, 28 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751121593
