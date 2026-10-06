Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EAE03C4542
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791276034; cv=none; b=LaQ56AsaKh0Tix/v8cDytgqroo0BWGm+ygFN9+XIB3qPt5Im7V9MX8Ob8Ihw5PD9yGA+sjjw/Vw7hkj/+G/u7HNNu1I9YhAhCx7bv5WhPy6oTeD4YmoBTJKUQtFikqtg6RupyMAyOw1c7xN2VRLmErk7TIT0r4AxUFqEfZd7IeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791276034; c=relaxed/simple;
	bh=qLQiRYTPIioTl5O/T0FwXkJkz4ijEkHT5XSkkMrL8sM=;
	h=To:Subject:From:Message-Id:Date; b=S60Krqz+rwkKnQoSAbMXzQPTko4Dj/0/pZEdvfqQJimdMxWDMIsW8hvb3chiI0bwAyjMgwF7ONhFDns5gsNj0Ahau1Ee69y9GOyFK0woMH/XFTnk35SM0S1hfiY1h/ZbWBcH8wiUYqeOJhRZ8T51Av4vmQUmYTl1IHZTPr6DTz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYVykoEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYVykoEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12A7C4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791276033;
	bh=qLQiRYTPIioTl5O/T0FwXkJkz4ijEkHT5XSkkMrL8sM=;
	h=To:Subject:From:Date:From;
	b=gYVykoEXtL/r5E1UI97p3uQZOGMTLCH52TCEMh1r4Z0suuE4dQphHo92w0o3O8Gvh
	 Vmy/kxVZkpjJPlMJVc/AH/50VOZHWNdSp+6MGYgbXmzY7Yy66tOXzgOPU42a/P468O
	 5okrH4okOPvroYqbnGo0ep9zP6AdQ1H4zOTtPs+H9AFgUG++eSdFp2OTcnro+39h7p
	 VQAq1W4IJxW2IoyPndQbvzlYEGcS393ZDzyy+lTCXRrwLfdxHvrLhUBOsrej8SnhGl
	 JHWcvi3JNA6FvfDc8nPErtaspzKEMswiLaigFb4wS/sKkTlFE7U+5ApwJjrQb3Khqe
	 nY6gGHJrWkW/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA6FCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127603368.5928.7520407169339519486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923ddc052524d5d7e685b9dd921bfb0cb37dd48845cdbbc6e83c047f1a9feb71
Date: Tue, 06 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791276033
