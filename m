Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0832827BF7D
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768480434; cv=none; b=cVcIwObWVZbaNVkQtXQH0S3LRHlp09rMVe7b7iLtXleVh0sqW6gSKGstnha5ho8DmFokItuTVTE/f+carLc/9XqcLC7u8E+8E5tiwbXVJ4R1S6rF43nwr1BOVxPeQa1Y4m3uzmLux8P/JMaL5NzoasM61SS7mCvj0aB8k59qSG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768480434; c=relaxed/simple;
	bh=othGHzN4/dvlnuKqmQ/kiw59j79X7fAiuq4+dmRzaq8=;
	h=To:Subject:From:Message-Id:Date; b=e4Osc9BtQlw+qDMADnK37Ye+Jgimnp2fXTMSDzMgsZ15X7MiCThCDhf0MjpYrXJbUTtqDkFZVJEGCYWBEieCf3yYHMI5z8NM8h88WKm9UBvZ6BZfFTxGO07jCvCX0VNxhjdTu20HgMn6TjTg4OgczThIzfmyQPnCizlt+rPnWsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqcNMoIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqcNMoIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6B0C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768480433;
	bh=othGHzN4/dvlnuKqmQ/kiw59j79X7fAiuq4+dmRzaq8=;
	h=To:Subject:From:Date:From;
	b=HqcNMoINgoBnVFrKDr1/u4hfHq5r1QUoDxsOdQ+2VYIHfB5rZ8QbRC7GFKRNsoXCO
	 YndOhh84EDz784vRcO/NW0OGfgPggG/gzjIRTnNrnAj7ssKlXW3bYbnr6voHme7EpX
	 VL4DHtqzHVg/z/jjbu3Ra0+da9KP8eU18GAH2JmWldlTrqa5kaFrLTNR/NzFLEWNpU
	 pAFBzmgeUo4C+IJRxV3FqWRNXPZLES3sNW0LzjzyDYSxCtL0ZtjSqAXCPdmxg+OFHw
	 Hq1zADzwd9fKEXVwrec4Z57V0fY6QJoO5cZKIJaiWvIZqjUNCvmT2AlXgVejCO7156
	 CiIt2ZPf4O7Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBBAD4117A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848043358.20887.5527024543908657627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081508190d3ada206c41e9abbc99366a703710fc0bec919e805df7a950658ae9
Date: Thu, 15 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768480433
