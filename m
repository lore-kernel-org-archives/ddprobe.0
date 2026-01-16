Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0203414A4F9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768607034; cv=none; b=p+OohUQ+FiSuJMrJVEv9CkyTureUcpCeH9vqvf2lXSuIq8LHcup8Y+E+E6cYoniOK9dy6IDWba9VIEo0hqJg1rkoudNTMOfwtmzy6ZqPnC8d0VGbE+7jG8RTXrw4U1/RC1/pePrFIBNZuSPxe9LR14vI8UuByv+oDj9X5/aHNao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768607034; c=relaxed/simple;
	bh=kH3+AGFZ0OB+TQ/9ryFWqmFZPmGYL5Ob+rWYa+plZwY=;
	h=To:Subject:From:Message-Id:Date; b=GXca4AgGAIGAn3P24bagk6DNk5bUpNnPjlHkX0/l02mKJ0+syerl6dwHKJzNgwtlQhsNhBwlBcz2Z54g7jGM4EAOdMt3qRTsCTGcEOc5d2adu0SWPjfMzjiNXRrzzProAavL8oGZY7ztj+B68kJCe0g5QZULU2JKnh7rmf4LU/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3CTv7g4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3CTv7g4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1A5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768607033;
	bh=kH3+AGFZ0OB+TQ/9ryFWqmFZPmGYL5Ob+rWYa+plZwY=;
	h=To:Subject:From:Date:From;
	b=m3CTv7g4m9sOshw06qxphC+/lkRAyF3VHXQshKujluenAl8wx+BUnzS3Ifvo4wSWK
	 eafh6ctYYq5o7WJOAoz2U3yB6szS0EuOPlsWePq/j+jokprao4xuV+ssY3tf0ZcHmj
	 W1nNEenxdoKD5GCJPH3a1sn7yj3SsKEfmHIQ6CaNBF846qe1gEmcPDEF/YTcV1eA1/
	 Fvjy/NOxmpLDTuzuRSJ0e3up+/xm01a6vEMLTQZ7ktugb2PMP08bE2KXHhYxkHqzmv
	 cKUs9H80q84z9vwII6Ozl8k1WZQ2uPFj+SljA5RPZN7x4AtjqBSAe3oCAzvSy4Q/2X
	 mswjjEHyiSgpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9915DC9830B
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860703359.20219.14483971177196341508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e5f76429b5df6e11984c9dff920ff17879a7fd007fdd384fa2f2ac63478b12
Date: Fri, 16 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768607033
