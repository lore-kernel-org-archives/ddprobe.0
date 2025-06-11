Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407C420C489
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749665994; cv=none; b=NIRXRsHQnD6H69DxeFSiQ1apFq2hooQh9qx5GGkHmIZ+syaJBSOqbeoEdqUZQhSUkeU0u8YVSE4hZ8WRakOPRCfdo8eTDj90l9sz47InxuE1eSKO6fnJ7G3MBOQ/822izIMlIqDUx4t76YlCfpY6b28nPM9l5HQ+yhm55QyuE1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749665994; c=relaxed/simple;
	bh=SLw9URBgZdYlROHLn4goqaej6yk6C7uaJicNxbaEx8Q=;
	h=To:Subject:From:Message-Id:Date; b=JYQgggtBXrQ1vKkfzm3Hl7A/eSpBfBcNoPT5CnFQnHU95wwIMdq3wNCRW0um5satOAjexat9zqJAIsU3NDHttUu1Qd2HS21akKCjLPNr07NX4lXZjRzYGtnJaBnG97vgWandNDCxmp0+AxQfqZx5wJrxSxpbqtvo0L5ypMPWDOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoqWwnFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoqWwnFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BCFC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749665993;
	bh=SLw9URBgZdYlROHLn4goqaej6yk6C7uaJicNxbaEx8Q=;
	h=To:Subject:From:Date:From;
	b=AoqWwnFlIqAFcgmf3BoNSCTf3uH8zvonV169Rx92JtOsyTdaFR5YLM9MUl+3/HalA
	 8dbh1WBj/1XrHNggSUPcTuNbV/8s58p5iyhZ9liA+RUznFa9U1zKGAq5mui4efFUs5
	 IloVPIYcJJrFtY0b8HEmU+xGpR3oOIDPlkEczL+D+rtUh3K9yS3UHPhFuCvdjJbduL
	 s1tsM5BYRZ3lfHoHoMpiKFNfkxttSzaqF0YVlM7tssem7MLDhuuDPtvIrHkZWjXO2m
	 TpEMMuhdimFZ0d4iUTESPT+X2YVaLATLBBlB6N1C+bWWh92ydYW2FPecnhraBUynV2
	 MZLaat/+BCKTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F534C71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966599357.3130.1879355219661448233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0abb5b69befcb8f23d1e41d2742ae4ba4d02ddb0ee28bf3cc60b4d300bd92d1a
Date: Wed, 11 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749665993
