Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB41324C06A
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765425175; cv=none; b=W+ABAGj/SSQF2pTPeIfyiWFZJSXBeitpIm5YcGVWTNnc2In6cx/Vpcd+81t+JieCCTjmvjVU1NGSSZksiuQXkZyEPZzDqp5k1r6UTnoWiOuaXZCV4d54nsiMlInfvHzLavDqy1lBw4wZMHgDAH+bPAMSJf4ip+IB2OqfMitNKsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765425175; c=relaxed/simple;
	bh=cE69+8p5VFPO3G8l81UIhg77hvhh7pj/r/uc0kVzjS4=;
	h=To:Subject:From:Message-Id:Date; b=TO5zDlhmm7rlJvjcFuPt7k3L05I3cLwN5nJGL7LczcXYMTjkc3xiBX6p+NZGzre8QA+w1EM5/bdVIKWhXv7VKJLSSr0sRgBypfRW2SsSTrxUlcxPR7nsJt2ndLhf9D+zGNyQ3g/zQxXzeDncQJ/7u30WZD38XfrEFYhaOugP0jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIPQOvur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIPQOvur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B192DC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765425173;
	bh=cE69+8p5VFPO3G8l81UIhg77hvhh7pj/r/uc0kVzjS4=;
	h=To:Subject:From:Date:From;
	b=UIPQOvurjtaJhKSgz7KPNEx7vQw25LsILz3ATxPiRRkB7rpvFi/fSD37/mQiit1/Y
	 qYSjisbTDUm7dg37ddxVukAiLGheO7PVdpvRA9ywx5/ylJhcKb8LSYSeja2eo56HYV
	 ekkqBLRGCp2rFNR69c3JeC5RuEbwj6Otq+ofe9QVguA4HpvIQXLpqC5UVHcR+tATuw
	 Nd23oPvAe91wSoBPIuyiEJUuPTar0n0rXt42vmCaWNIAQ9KLc5zjI39HdB6IxsHc5f
	 1NWNKDkjahmte43q10myaUJWOhcUfGSpuwlxmedKJGfzHH2xaNXcVYh6dY9VeDbMRu
	 /Mehxu5a9fdUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEA0D3E78D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542517363.12115.13830278623065177758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b9ea887068d68180f98d39bf280f28ec213912ec23e1c49a79f98c848868f5
Date: Thu, 11 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765425173
