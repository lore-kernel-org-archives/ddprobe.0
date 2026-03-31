Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103412F60CC
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775001294; cv=none; b=aUOmmZQKkxcmcSpAba2s6sCvzgBdK64lWhc5FVpevMStGYNl+wPtmC+CD2GfPM/mVHtCFbntc+fNr4p54zSiE6yDHOiNeld+z6ZMxmwgcb3EOEm9SpWeDPycDjRHMnFMK2HOP7nLv7KzsF/6lZZfwLfUD8nXNAF4O5yf3a9pTXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775001294; c=relaxed/simple;
	bh=7hmD3ldYBFFFEfeSchhWxtQkqArJ7Ai6gze0dB1YNds=;
	h=To:Subject:From:Message-Id:Date; b=FKzsT4FPcxlO1FeHiSr1IO639R0MTjwfL3HQ4CMKhe7DRyhAlM0b10X1MMJX7msoa8sktk7NemjzluAflzeOphGtNrLbyoPxcj1p0DJFsRdDfd3nqLof/nFD20OUfZiyZqFzbcBNN7ZnGY8mVuTczvQiKQZJxXkv9kcyxW7ZPeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cu4xxzDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cu4xxzDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9F4C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775001293;
	bh=7hmD3ldYBFFFEfeSchhWxtQkqArJ7Ai6gze0dB1YNds=;
	h=To:Subject:From:Date:From;
	b=Cu4xxzDcQ66zcRO1zNzUsfY9TZBAjfY8lHtphECJwb/FQjIJ1osZzMjnF9gdHU9+F
	 I+nDyhC49QkMzhaYoB3GkumWlC+nrc7hWth7klVY2mc5C54FeIc8EB5Y1PRsww1UeA
	 lpiLXXZduprhHtwrg1MxczLNAYBDtXLlE2ppov4MVw8MhJbx+LRJujI0jvTKaJNsMg
	 kuy5feHAVpRzZ2DtlfPPiMGB8hFLpgQOVCekrDb0rKzBALtdPPSFQ9cfVlGWwZoYa4
	 iKWc/I8shotVlgIB7gBZvv5g6I6iXfNaJwaBXXSkLk0MLUqdxOQJG4no6HYjnCXf00
	 F+iEMAwYDpw0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9558110F930B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500129358.18399.10643390803226163666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91b2aa3cf227f9b2e443ab06a253d0e49ad107e3b9267ad4ecf1c6882ee4c96
Date: Tue, 31 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775001293
