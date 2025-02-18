Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36130267384
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739904535; cv=none; b=gd+iEdn29c4a3Ab9uAyFtuKPK2dWDMCAsK0JR0a/Qofe3h0Urw74h5YJjt9arqScboAfVNdUeJPVwAlSXXDJO6a5Hw4JX6/Zkh3wdd4kNVmraFcB/SOjPD5gNwINpjvYqPkpQELe6tIoBMeJPUijbPwYs0HlWuWVZ/9ew3lMHvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739904535; c=relaxed/simple;
	bh=hm2+b3ym2msVWEF+K26KjOJN6IVE7L0x1SFhf/WT3A0=;
	h=To:Subject:From:Message-Id:Date; b=QSorLLqOaeGUx2gsrBxsHYlPwTyuD2GSk1HX17HvVQC9J0lf+4+k6hW5fzcT/NBzgpQ6ksxWn0WFE2a7vJNJijLV9lhj6WrbCJa9ZCvXRuQUHSHNbQbuD2xzue7YSOzb+/h56d5aHno0Zo1rjR2Gdf82i70btkWJYumCRcPspOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/xEKGX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/xEKGX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0541C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739904533;
	bh=hm2+b3ym2msVWEF+K26KjOJN6IVE7L0x1SFhf/WT3A0=;
	h=To:Subject:From:Date:From;
	b=p/xEKGX8WPSG0Rfw+E9Y53N1MBc4vM4uAfJpioF6+BenbW7lDlJB8iqvfKR8UtNRq
	 fWz41gQx0HgwhC/YZfScEmFNsYVTcMkd9u1WTnneDRLUzFmt/R/2vBnk05ZGyO+Pza
	 nFzY/No4KQ1B3LKK4BgmEhpQSTkTID5pzoGTgNsoYuBjNu0875CzLLJWldZPz4BzUw
	 Q9Z/6ETmo1d3TGRn11uGS88dt9QFWfKDg+OwU1yyOwjZQN4q03WBeJHr+meCD+vE63
	 vm/tJYAK7bgTmnOZUh+8Cp3b/xhmNpaVyZRf+k/+0+Rr7DV0KOwWpufitGoet66yo6
	 aeDEvMi/Ld5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908EEC021AA
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 18:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173990453358.16941.2565824689308502288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094e2cab9b1b4c19183edd3bc5f8636b861d9a1d732c03b4e79409d39e82674c
Date: Tue, 18 Feb 2025 18:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739904533
