Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C5125634
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749085194; cv=none; b=je7MKZUdE2Kp+jwrtW1I9umpnpBNiIdfHyB4W3lJNYX0eXfScTo7C9ZT/R1vEvzm6lfegslkLOewslL5sLU6DTlsNMGEmReAQ/i0jLtchveQAstB9ZL7aSgqr8TGx0Fq71TZXZ7nMYwxvoXMdidVy7WJ/S4MoOFFFNJDoNdYFNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749085194; c=relaxed/simple;
	bh=ZWQ2ejOlbABkeMGHiqT+RFZ3bqEBSktVLjeWAiMMWRo=;
	h=To:Subject:From:Message-Id:Date; b=WGfxSsYyOZVLf09Mf0LN8OXD5XgW5m5ITYsELry9mGpEjH5mzmZdP3zP05fem2IM4yelKd/6gaFtCxF1TrcBdGomho4XWHTC/ahSzXrVuxb3u4mL+o2nlrXLNYYdJkC2AIsRiiF8RvYZg11Xpknq7S+ET0FXDqD+k63NzdyTXL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n64ae33a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n64ae33a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8553C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749085193;
	bh=ZWQ2ejOlbABkeMGHiqT+RFZ3bqEBSktVLjeWAiMMWRo=;
	h=To:Subject:From:Date:From;
	b=n64ae33aa4e1MGCs3MBLiIMIqK4ou6/TGc7oFS1nqGTA/87Fm3fw+Fpv5Rvi3F4zC
	 bJtTEupIXOW1YJMSv965nwoJV7IR3QpRjyK1unFdKwXAOdsogJiOi/55hbs/7aUK9o
	 K/7ncxSTxMXE8nAl5twbXELr4plCw09js3qosxCWJKMa/Iw4KPawkHdRG9QcJcgkDY
	 RhNtrdLL8r48ouJkzHkPA5ZudT+20x0T2lD4mE+YHLyUGSwmmrv0rHudhjQpRWiu6t
	 do6+ljFNXs91NwpKcYklBt2+O7OgN0LGyOOuG8q+nEgYIO8ww/Wj2FiGOvXp99+aaz
	 f2FDRnqv9adMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9495DC5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908519357.25689.13328766689712113178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6c38f40ad7abf2be6a9961536315604ebee5d15b00a885a806e9908abb0921
Date: Thu, 05 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749085193
