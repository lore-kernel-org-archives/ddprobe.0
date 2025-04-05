Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFB5DDC1
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743817194; cv=none; b=Nrn1rmtwT2d8+bvsSrWUHtMLWFOq0MWJmg+zIN+pQRdhkvCtmgDm0DEujO8oFRXGCFlSsHUbc9yf4Y9x5qvQLhAp2wjFgxKsfjh6II1JKZ/3nppJkrS9KH7kEPjE5xQB86B3nStBnK8USmH21D/G2Mqtom6dnNDZf3nMElKjl2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743817194; c=relaxed/simple;
	bh=LpbIyto48bB5d8uhuN3xwJs/zohR2lagD411jmFcoIM=;
	h=To:Subject:From:Message-Id:Date; b=muS/sf7vuNZxPPGGwNHDQ1piiing0z5Nfy3pFPyRkMuGXzfI4g3V+rDiguwGy23YPwfLg8PPSHcGCiNU8eg5F0KWHJiliHqFPPt7zozaiR2a5snKDaqZuDl8nsYXsqXS4J6gCvhYUS0yf2wHF7n5WH1Kv5YfQ5za9UGN/rULgGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlBYinab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlBYinab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EDDC4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743817193;
	bh=LpbIyto48bB5d8uhuN3xwJs/zohR2lagD411jmFcoIM=;
	h=To:Subject:From:Date:From;
	b=QlBYinab7wy4P/Nadur7RIS4R4pJUCpvl1gm5AqzHNhfjcctTcs1CE0cyIz5ZgiZ3
	 SqPtI9gUBUhDY4UGSfjvtMCqe4coo1lTXVcYcJZZbTS/opBGjRl4yHsyMO8V/XLvCf
	 jpta9ivyzTCN8uEdwPzqEpWQvBz01rP+cqJmLzbKy0/+BJkfreWL2mA0ycmreNoveV
	 2/NEz67hILpIb/KIG7Wx9u6K7VoCdPWQbfBtSFbb3z1aTalYUvvc/4CpKORRpSc5fX
	 PBGDwyR9DHYFdfGWSEKPPGx837VHlzvEI0M7uewlbq9Yseq/6NXbdNPDAaLkyEJqtz
	 hB4pWKxwArqVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E366C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381719361.12167.7783048442649144930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4982b5fa6bd462ebe3731bcc8236daec4474b4078b98147fbabba50535dba5
Date: Sat, 05 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743817193
