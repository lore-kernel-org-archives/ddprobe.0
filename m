Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB641A0BD0
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747006194; cv=none; b=gu3rcoErvQXvoPEON1SvGkDLlGEvjdkfZSRr89J7ZyMwWakbZrbGds6lfYkWIQ0mw4jTdX128z4wscrRc5wjcRneO3WJrRHtcR3Inz0pPd7ov8Ko//4+YOZz9aUfHbkrz8Fr9BB8MMpFx9jcHYHx3XSSOSqIQxMejnWXg3gEib0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747006194; c=relaxed/simple;
	bh=k3+0BuVHmRsI3voT1RFF1ojWyORntA7Vx+iwDrW6uqk=;
	h=To:Subject:From:Message-Id:Date; b=cbzsXUo7eNo2ZGQjgR4DdAdvHiBHV7AKu7d28CHcUAWZJGEvcnE8tP4GUzNXwZVSJu6ktuuqRwU8E6OSOfCI9SsLEJbMgeC2jEkpY3N+7ziwgICHNFpmd7VM8MCJC7baUDu21Tr17EiFHWS7q52Sd7P7Bdd5bnu+O/7T5jxj6Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBkzV7il; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBkzV7il"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AE3C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747006193;
	bh=k3+0BuVHmRsI3voT1RFF1ojWyORntA7Vx+iwDrW6uqk=;
	h=To:Subject:From:Date:From;
	b=EBkzV7il1ogFKXg7E7xykzxs+KqT+pOafHTdtpGZK4ZDfUHHHAoLRrNm6QWQ17vQA
	 rxMlEeQjSiXxrL7kzaPMw3vrt9sSWNFBx+3V77HeUrNoCT3z/OOKvBt/Qh197kLHtM
	 AtH85mrIa06hRhcixguQlz6pdQax37aOC8qlpw3N0EaVQ9jKo4v0h7kN4dPr3ommgq
	 OjspFs/7cYotLatS8yf8LqfHaeUicVpiLRmWwl2bNAYu2jEwVzS4wXTswJh9yCJv2S
	 NwwqcGxxA9fVOPTE82Zv+g19cNq/Ljjtc+sPeAfMPkLHij7oRxSpsKdH5iOhBlCsao
	 JrUzSnqIRJFWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EFFC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700619357.10314.12436777813293396646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f77b53f9b8f167acea120a2b12f961717ea5f456064a887aad89ef973a2c81e
Date: Sun, 11 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747006193
