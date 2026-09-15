Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D56233372A
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789505434; cv=none; b=dpYkhgZgFgcg72WLjdBeZ4BLEEHoGL8h1wcOnCAwHuumtPXwX2uSGciGvNnFACLVNnZN1oi6u5S0QM4kZ8TqoQAt5HdzH6Qqh2i/HFWPmjLHDbgzSgFAgjsKvljZYWAd7vWNGUHcuTGVvj+4UWzWNbiESGTH4Nc6oWIl8As4/vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789505434; c=relaxed/simple;
	bh=QQCp41jBGoljoUzlYV7uZLahCmsZvsJ7ykUBuYI0+bc=;
	h=To:Subject:From:Message-Id:Date; b=NnhW6cPNSaoe6W3zZWDwTVSLYPbWcQzH6MnUk50i4RNb30cFnZ+EHQOfaOxbLFUs7/r/FDr+zYDOrmXtpXoeY7in6Hr/skFVX2qrZOuvSXmG8q7KYHbA7u5D9gX0ET66k1qnfKjtYd9/EbriTm9X83ijxWHu1crehRmYpJwwtYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l45gjDur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l45gjDur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE518C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789505433;
	bh=QQCp41jBGoljoUzlYV7uZLahCmsZvsJ7ykUBuYI0+bc=;
	h=To:Subject:From:Date:From;
	b=l45gjDurlo0s7fB5QgFGw+FpoAzrD38PmfujBX8mYhsFKe9B/2zcsP09y13LLkjso
	 wFNPf7PQ/vTlz6+by1c+XGvSzdlxuPsSzHo64eza/rg6D+fMPqmg4/MPwd002wZ9Q5
	 voS58Y9qn47rPiJ/Rek/wuE8LCF5YZSIXWZ5YEjpxB7J3yQTdY/CzGOWIkZ6JRTe5W
	 GaF7k7VtkV1JlW5bscgSD3RNxhPLfjxzOrnBKvPObBhkBPPRN75nTGwOENnJh4to/X
	 Q54v7dUlv+sCrHejM/qsNdss96+V8RPxGnPDgh1z7yakpDjMmM4JS3R9Jc5d9zm/IV
	 Fg3TfcFnhdsJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA982C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950543369.7526.12393745605765571705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b451aef99d98a69d3b49da16051a6f08b913ea00706a7425f109bade2a877fbf
Date: Tue, 15 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789505433
