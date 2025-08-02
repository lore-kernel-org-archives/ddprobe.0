Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D29118B12
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754094594; cv=none; b=Q2bu5OTbqsJNdTmhpZ/r1nFIPPsYHHjC0YlzLyOEGhmzKq3WEy7M11EKNK2PCxSsk080/yM+bzI1R3AgPj7b3yVYeQs/7ap8r3gVMWc+Q9VzVXn5X/CF1tQlbvHk1S7u/SMbAlt88KXC0etYk9xBmjLPAuO8BlEvF8gT3VZcWeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754094594; c=relaxed/simple;
	bh=583PfVsRrhvTRm5XO0bYMs73tZdk+MkOOgvbwGNtKcg=;
	h=To:Subject:From:Message-Id:Date; b=I6HZYCANEgQX2dhaAnk4eqYeWqL3hLZInBtuwcIlW5J3OLlB0jBRuBP5CjimBK7j44+pNXsprPXAHiGDdeN83riWjLNLdYHGllDBcf70p6XN8rMnkZphh5mGSbsFFRLbHZ6NUNkytXuTLzer43ntdCJsWiotFtRndQq19LnY+Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biR2pbXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biR2pbXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54CCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754094593;
	bh=583PfVsRrhvTRm5XO0bYMs73tZdk+MkOOgvbwGNtKcg=;
	h=To:Subject:From:Date:From;
	b=biR2pbXi8cEHJ5MKsxqgm9OS0aqdoJvTDwMDe3op/rGdht1xVvkBWfVSBzaed8bev
	 uvsTeWjBEO/mBPzJn6p4hjbITMT26YUWWvooaR6hbVZ0oPCEbXQ881WWEAk5Frk/Yk
	 a4l3zoKslXOCN+mA9PmR9sJ1letEr7mA675rSG155s/89/h2KEW18Q1xFZiJ2CeIwl
	 3JObkLIGKExAT1wRIJFNwUXD5edDkJYJcTpWHFr+CUJjvDVXC2WKPPjUpLrpp6TrqR
	 1dHsvg12XoiYBrEHraOhmAQWld05I/zEKGSYrIY7CoQ30v0rHsmpsXPnGqLDPIDFUB
	 VXte6tIJxug+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963D3C87FCA
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409459358.12133.15329002821868825818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df64e781b9ce33289c477c23d67f944dd1d4654877a4fc0c178f49a2343103b
Date: Sat, 02 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754094593
