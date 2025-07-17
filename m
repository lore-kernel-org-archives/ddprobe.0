Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3259B1DE4E1
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752787194; cv=none; b=cfx7oXY/XrqPTDEEg9EQ5reBOFA/PDaqSjr3BIjGxTvOT8cwPNYLkgPVqSvsBuAO5878y7YhMA3fEpCar+Es7UK7JRAsfNMzFhlhFsBv5NFOx6XKPmRCriLjFm8pwxmgghcvACPvlxd1zGkMxKpPruHI+fYYQ79hYhfJIOaq7t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752787194; c=relaxed/simple;
	bh=IPQMxn+yfUf+RqEi5HOwxWUIP2AJtxa5mW1Pay5cjEU=;
	h=To:Subject:From:Message-Id:Date; b=OhnW4J3Frtjm71pe9LEgchl+Bc8dbaC7Uuu2KlB6xlBAR0JN9HiuxIySy2qKyNfHXV3/65jHyiK1w9Nok2fqGQCi+nIOC8SmKT+MrT9It0oijWPfw4/8ti4L7xJZoPKD9jQ9HLN3DMdOlv1FnRaiHGStrJJerNOHY9U5M7ERJuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVmBmMbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVmBmMbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2C9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752787193;
	bh=IPQMxn+yfUf+RqEi5HOwxWUIP2AJtxa5mW1Pay5cjEU=;
	h=To:Subject:From:Date:From;
	b=EVmBmMbb7yEbMFH5yGFctMRgMWuMZnv32XfzCYImMJIG71hsCga9dW3I9aV33mCeL
	 65hPPq1u4Y/lOamt1a/chMsjTIrn/R/Y7FpiONf4MeZef9+eGXddYbv5VJohgq7VL0
	 rofSIBLOXdRGM4Mms4MyWeQ2fGWZcsGWUOZ8ctuXCoVqfOL3wP+tLnzkv14bp7IAl1
	 sK61uDAfHCTzVzUid8PiA4F+JMRPHqGV8bR7g+uxN6G+g6WIomMPRCT+GuqPYE8KEC
	 2MdDielYYtHe2A/rPOp1RcfPB+Cb4j5CriVbSjXqQ/1d5IOymLbmepG6OPI0eQREpu
	 KuxTvLI+rIGZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCEDC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278719358.20542.5382653920633680790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623f37032b5a7b9461ecf63d84915776884685dc8320ae9c618dfc60f1f75e78
Date: Thu, 17 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752787193
