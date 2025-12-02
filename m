Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9ED21A23A6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764649973; cv=none; b=Teu3swtnapKuxda7f88DmKRr2dpAYuabRnqV7q8ena1Kssdzx94fix+eJFJ5lptWSvdoXbDiRwf05JIpIfKhv0PrQJAx1Y/HyTAIEnsZe7obxlDuChe9GhOWv6Gs558jQsSeWkVUQnRGmYzPnTUJ1qvvvEONhzfq5yt2qDIWJx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764649973; c=relaxed/simple;
	bh=wbaCwBMQHtmTpOvXDcv2B2flQqxnMPUWN1aK5q08ZhU=;
	h=To:Subject:From:Message-Id:Date; b=maODkR21kXrzLNauYi3nLpPNp/v++ZaCoMyTv6DTQEhqiJEHwBy9ZwrOwwofSq0kyHNnGg+OmQKkIqIXsPPki3avrWgEwfmG7hiwFWk78SiNyJOerKU1U7S0PvveQ+eg+KShD6KN1cASECTozMWjnSP1rNSDosUyrZ3P1oUEnjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q456SSLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q456SSLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAE9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764649973;
	bh=wbaCwBMQHtmTpOvXDcv2B2flQqxnMPUWN1aK5q08ZhU=;
	h=To:Subject:From:Date:From;
	b=Q456SSLpAoJ1QoCHNazK6WMPLv/USKMEymzTYbmMzrhfIYc4QIkg4aoVjkuY5xJ9L
	 CXj94sRNeeikS2QsqyRPTAfhCsfmi8dJAMJn/3k7O8EhtjqA7t/Ktlwg5l2kQoVfF7
	 pdRoUnbUCfze8/1oHlOw6KsJULTAVvGvdj36atpa+GBHe7o/j2aXSOd7oz0hFW9zBI
	 j2nCMnUgvY/se5ShfmAnTj1a2uH3D4NEhayVoUT0R9dirqpSOFSQ0vJYwjQefSb/Ga
	 MwMIxyZr2DFr6EhGtFonA3fAmFjNxtQjujC5623s2z7eysM651AMkzwxbHyheTyyeX
	 oEVt76Od7/NAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967BDCFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464997359.2458.2320848890235204642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbedb59ed5598c99a2048289e6d033d14b06110db6ffe7eb67a9a6fbd9cc802e
Date: Tue, 02 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764649973
