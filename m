Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F54B2561A2
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792042834; cv=none; b=gbkbPFaYdRssYuxLmN1IPam+OJENK42XaGRqTocfCMQp+WQbmRnN2xEnblekSB1G8Pjnzj+cGRw3Bm+BwO+jFCOWs0PPPy+aETow+TXVNdDAsXh9Lt7Hxv50cOkvxvAcznRVC5TOXYd0hs5ZsTdYkQpgRq0uFxvM7vWP5OlDr+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792042834; c=relaxed/simple;
	bh=kpYJR6b3UlG7ZSlwVgSwnD2BR4OND0xtiPBXxQ++JWg=;
	h=To:Subject:From:Message-Id:Date; b=OoupoAzdU44bgM/o4B3ikhbdC7Oe/lz8Ty1Z4wpFUBTCC8jyKaateFJhj+RS/yWI5/wd9JN/ZU5pBzNcNN9Yz+/BByDcW93HhYd98gcZBI9p2MZQ34LOC44DS8g5Ia98rIIf3sQmQM8tVvSZTNYyx1WqOEhExqGE7ZbO/kmRsts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPjI+p/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPjI+p/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD0DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792042833;
	bh=kpYJR6b3UlG7ZSlwVgSwnD2BR4OND0xtiPBXxQ++JWg=;
	h=To:Subject:From:Date:From;
	b=VPjI+p/8CvY2WmPyGaDpfDCKZLpEFH2KqX66AJ9IHbzZkQ+E0vqD1y+JgqhiIYTnA
	 3paSPbjjNzki2WcZakgZb99buDehUOJeTX+OR9LaChIUKjRX1QeBVZpC5UhmChsDiI
	 649C1voN0kjfyAwAiDBDdIAU+hW2JImEHOr5n2UyfpT+VNorCl2hQv8NfcXIISTUmD
	 Zy/6SAi8PBNnQ+e8HFGkalGnirFFZi9fXja9wjJmsAd1MSBn13tg9WUdGcd3xp4yUs
	 8serGxB/1OroGTwOI98TAD6NEEwr2ZWnn+SIWG4dpjZomHlhn1uPUYIZL5xJp5CNb/
	 AF49YtceXfw2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7BDCC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204283369.1213.3587645735479560737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c76e44c50bb0ac4288126e220bd2b62bdd776683e96f36035a914911d13976
Date: Thu, 15 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792042833
