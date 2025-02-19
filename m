Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4337633E7
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739940534; cv=none; b=caZYK8zY3wgGYFFXWZLLYzY892Nwd67xTqX7iZTW228eaR5U/0tZ2DLru4V2dM8dik/5Ezuaf4WDLnawQW0OgjmwZaLM0fKQgAOPVIfsBUQfpaFTE3jqVg7jxD7EUh8fK7ljvrYd5sFb3/O+pwxlIi2jB64EXkUjPcF7KfMmxuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739940534; c=relaxed/simple;
	bh=CWHLwLYHXyCfqpXNOnt/9n5jaG92wgJIeXBW4hy6egE=;
	h=To:Subject:From:Message-Id:Date; b=Q7E7P9uUIt+S8QSW8e28PlE+MmBcrzYUo28xxHBMrmz/vjed7EiZLvY0JYrm2fgQ3kwLR1wpNHgm5Dd57OqAl4WA2BJJag9TliI27FZT3xD8WFQsAZfS8AgTSrx208DTRuLbDr5rAdsipGNxdSGj5MtnXdxIeimrbgQgSajbFp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoIYnFFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoIYnFFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3169C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739940533;
	bh=CWHLwLYHXyCfqpXNOnt/9n5jaG92wgJIeXBW4hy6egE=;
	h=To:Subject:From:Date:From;
	b=FoIYnFFCaWL/VsYPKOTuwzogyrXifSNkV33aeFxIVUje+u6yYB9LRheqg31ciQ+33
	 Rt3xiUY7ZuMRSryypD0ChHYrr1MODNWbdumo3isa/0l/dfif/Sp4RcKqH8qdgCnapY
	 d/8DtLvHiwotObSS7sEHR75NbNxBKcwHar0h7qXIWDOUlK87eRdWAFnWVI33kLkNpe
	 cCeDQoDCJt1cQI7tl6RIgqCEOTskYTQf9LWk6LTp9kBwbNjqaknKXSYOOVJIypGrdn
	 /nH7i0RYQ+kD8r1RnRwPYphGbmCPQT0ctdirZWDKbQfekFsIxMkoBsVvZqv8L6ErjT
	 G+Or8tfGHEo9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B57AC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173994053362.4062.14551185548449734825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b094a1ec8afff4eb1a64b962adb2b8ff0f298b675db029e4dea6697165a7afe
Date: Wed, 19 Feb 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739940533
