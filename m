Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED8C24C075
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 17:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741108134; cv=none; b=RVNeSp487rcz02i8hz2ugi1zT8B3PRk0C5h/DpEO8/sY3McazAvixWTXZMBOT3ruRrGhl+pJ6GUqK0tA/5d/iM8UIUdHQJ4d8+WDY5atuP8BdiML1eAyTE6qXB/UuKIIKuXiztdgoWTLxcNp3AaxvDHwaq7Xr0B9x/ByHcsbnHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741108134; c=relaxed/simple;
	bh=UW/lCilzuQpe8I8tmGHJzRMWMESTcMCE5JWrc5Opz94=;
	h=To:Subject:From:Message-Id:Date; b=KZbZzi9Phfb9x0blYrrt4nDdQQel+Y41RpDaO0m7cknoeDZYxrCNvZVGMJbcxJbpCtOxcltvLzfYeywjpXL71jZU1P0xcK962T1aFE8dRfwppqrnNP7oSgRInIhIs3lSqwkb3PRiFPq0YeOCTICxQfUyutiMJeFqjlFzyjXqO8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpvKWLYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpvKWLYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B20C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741108133;
	bh=UW/lCilzuQpe8I8tmGHJzRMWMESTcMCE5JWrc5Opz94=;
	h=To:Subject:From:Date:From;
	b=lpvKWLYB21V1x22sZ/aCnOC1/6PixcpvChPu/qXuC4gM9eBptwQJaT/atBN9cJd8O
	 Yg1sVlHbcHW12hCQNTGtrvpJacOkBqprHdCxkRZSXPcw1OZuF9MffcUPOs6ZUXh9NX
	 wkd56zj+ow3h7fN+IgnHvLxwp7S40BqkSLFZSV/J+v24cJXwhQqoI3134aQ9HxofDn
	 jL8D28Ye+RvK87i4FKQSyWZ7K1vlyg5nGI41Mtb0I0T2yJ4LqvuGKEXKug/USp6tiU
	 CeQhMiFXmXCbd8Q7s6pzTsafDf0WJYJVDkeFS/Rlz5ULR3GNJ/kPSsKzHAqPk8Je7U
	 9ckyd/0JlyBoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91503C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 17:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174110813358.32234.14496723241779597045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb738638fb65b4ae1b364715152aff7ea479d92bb50dce81bc3a10957cecc29
Date: Tue, 04 Mar 2025 17:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741108133
