Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372774CCDFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788291034; cv=none; b=asE0Kjg2ghM9XNS7BiG7/D9Knowi/KrF7CVxTPhW5qsZdLcLHIgN6Y1vsFQ8jlr5kR6laAZmp0k66rxI4dAeBoEWlDhaA7IM5TdX91pxCcn27a3XRmofqMk14aLLjlRa6aqN2U0zSYi/r3i2dIlIJnZ8bN1hKlt0AvforoEvdWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788291034; c=relaxed/simple;
	bh=4AQXkAnAmssYFLBXXOukE4KbL4hlJKyFpngawdoNm6A=;
	h=To:Subject:From:Message-Id:Date; b=ftQ7TPFQX3bGIVeGTayQpLvdAHd0OaiMOoNHVqQaLxbU/7Q85+w2K637NBx7ItA7gNu8He2Srvn60exdjL1C3gIhdLQc5qpjDXt6a2ts/Pzp5nSOJDGNyyHExhPid/+CqS8YI2ua5z4wbap0RFkZ54LfcdDAY6QZQC4BwELrM5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pT8imcdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pT8imcdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3CDC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788291033;
	bh=4AQXkAnAmssYFLBXXOukE4KbL4hlJKyFpngawdoNm6A=;
	h=To:Subject:From:Date:From;
	b=pT8imcdbVZfzxMfe2TwZIGrfhID5ZCp1NYkIuUoRnnxKlvp8yBPFa/+qQmqwXgwmC
	 zBfRqMzj5Tev2hxSBaz0CLrxzgfkhTkW/U3+MRwb7HDGTsRXM5GcIJ1Ve7xQsvih3C
	 aLoN2pJP9e6F/WjFL1KAAnWz2gFwD+2qxk46cdp4pagThO4aMCMQXRAWt8iwWEbT8v
	 rnljGP2KLYz5TDBoqYyOLtKYluRGKXON4jq6INK7UiX3+w+PFfb7VRnAoFni+Ff8z7
	 au0yYiv065D8Tdf7Y4aHX/uScUpRYkCj96RK+jcS4lYKeMyul/lV6VMaI9SGtm+Rew
	 ibAn/1iouRuwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF0DC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829103369.14521.8039842864847421957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0d9e7054297460272c249792919c7ecd426bae761a45ff8fb24ae6ab48cc53
Date: Tue, 01 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788291033
