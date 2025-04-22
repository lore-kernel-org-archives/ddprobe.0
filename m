Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD661E51FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745329794; cv=none; b=g4tJ4groFrbgYfDikLsGSCOX43dyXXPYLAJDdQ0oZ8YLQyCgVDZLWFQ/NIRkm3wOwTdbLkuVyO6rnNx9DWYRl4OQLTz7kGfMQ4FYvp4vJZmtDim2AWs5OiVd2D/HKo/Ujo69bxntCfwBxJ1Q/leHXjWrkwMpLS0rok9avdtiTnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745329794; c=relaxed/simple;
	bh=9aAwvqpeFXzmp8hzbP4AEYiz63OXHc8NxhBbhtT8bII=;
	h=To:Subject:From:Message-Id:Date; b=o9X6RKO2OZdxBFO1CTClye/Sn26dJv5aDpgyU2fsCwGYmoKsrY/OdHhAv0ApA0RXGuOex2M+lErs3ZMZGB7A0cI11aDEebedH5gqKL9lJaFaNCB1fgIyhi1Ym2+Z8npQiLpaECtjPImSsuw3QOLazRACj6/L64JS9aIcQHOsyYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BH8azoJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BH8azoJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0766C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745329793;
	bh=9aAwvqpeFXzmp8hzbP4AEYiz63OXHc8NxhBbhtT8bII=;
	h=To:Subject:From:Date:From;
	b=BH8azoJVG3ElwJ1dFTwpvQ2/MMvgxXCAaPpJm76MFSyYkuapZT/lakQD/NGwTXNub
	 3kciQ1UYxFamw3ykhZhK7mzRfFY81gknb8/Ls9Sznkr4SBfAHGJXIhxBM/TYoX/UXL
	 mHZriSKLz27w9ytdXF5P3Tsxr439qasqRA0qLLsWeNRn1GNvjlbp8lT9zTOtjVJ77B
	 ZCUUp5ybT6nE3MbIFm0vBuyhyK/oIDEsolkz09l+RzOCSibLms/cCe/+wO/d8nhPgn
	 0VGkmYRpAX1aHEOACNNWdZF8ElW/yyOJzt1lxHp6ZYWU2KSxW+60Ec6RudMSt906gN
	 1E5bSpJmNUM4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BDC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532979358.21062.990657237606421536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b6263a2aa103be63d6606320883e173c76cfd2bb5b3b98d5a5182c2719b9a7
Date: Tue, 22 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745329793
