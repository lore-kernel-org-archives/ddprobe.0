Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433A743C055
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787823634; cv=none; b=CSCwUYdcP2O99Jpyi53wICWbudTjfTgAon84T17oXGtGgsy5L2R0fgw/zSH5YxJOWtz6zjIyXEbLiMxfKoLLJfkcSAZv8CNEikbNkpPgnNQg6B84z9toIP2vyMm78YwChROfAtB3eLWWjrlsqRq0Yxzt9hCuHAcF4eADVvkqb3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787823634; c=relaxed/simple;
	bh=PKMSJvFpxWtw51gaRMmz0TD9I366yDQibiGPtTYpQFQ=;
	h=To:Subject:From:Message-Id:Date; b=m2FukDLh2Ip0ZenH5hWW2mo2vPjXDCXDDDX0/CgO6BiUJCkviM0MIXuHmEJXnO0p4WWYI9dnm+lFppLFbdHjOOt8dtpvwQgisfcyN1GtaUf3neIPVA1ZspHpL21M+nlLCTfsA7n66hs7yQjL0D/fpdf5z1kFHOlaNJXgu3VgQo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eA2mhxdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eA2mhxdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2491C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787823633;
	bh=PKMSJvFpxWtw51gaRMmz0TD9I366yDQibiGPtTYpQFQ=;
	h=To:Subject:From:Date:From;
	b=eA2mhxdnrSrZEslQenBcaLPA8OlxcpIpBra0X9P1zKn/NIJpWjF2gmQLqJZxBDXMa
	 Z1auqwQPmnHgz3HVjJX7CMEaDSgq+7jhtQK62j0t1W33tfjUUxNGc8bs7E8dYQi6o6
	 jL01euJ3PQ8zD9NR4qR8WCbYkjQ7P8+NL6Mpg9Vhz4OqWj6Y6psAeiHA5saSSehalX
	 UJSj7aizlR9tE18ugAoPkt5UkqID44UHBWABqr5BBc8ziIoipPAEfCrbLafjSCN4LG
	 yfyhGmWLxdBO6pTrnotrQ4AYFjZWhpYwekHcVI4PSGiNxYTqz/coB5fClV/kT/IJkQ
	 nGk9jYc8MB9/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC3FC61DC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782363370.16301.10724234049057082674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ed84b7406374b522b0272de4e1ee7a4076ed30cc1848528d4828793618812f
Date: Thu, 27 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787823633
