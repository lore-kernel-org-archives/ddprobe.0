Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4282A17C21C
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751027394; cv=none; b=sjTV8PZZp0GYMj9yOMBmuI8TNZevoO4nKTXzqxGXZbhtyLvMQZWIBcoLneez11fcMcbk9A/dFk7wjTD7JJG+JTpEX5DBho4dz1eg0mooL7py5G513Z/Z/0Sk1SfHVm38uO3EcFJjC4F+1rE9UPnaiuavGgj14Ga+LJTySBHEadU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751027394; c=relaxed/simple;
	bh=/pggIb5Ie3TRqF7XlZT4FWxC3NPgVStcSlHDFlyyzo4=;
	h=To:Subject:From:Message-Id:Date; b=OZNi1yKOS3+JmX7Z3M+9ZZgZcj1usA0Ea798tD/frsRt9SoIZJdYxA6JRTn+9IuunNmjZEzxq7UCLLVKU84j6tbf2mKZ9aIafK2NYCLBqIyYFb9eLm2+9pwVQnR6oowKXM/9t/yqqum4Q6VqUkWdEM0bG3AETjoJn6qvLf3RNaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qajs1+xf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qajs1+xf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4569C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751027393;
	bh=/pggIb5Ie3TRqF7XlZT4FWxC3NPgVStcSlHDFlyyzo4=;
	h=To:Subject:From:Date:From;
	b=Qajs1+xfh60pI2bFIB3RLnGgn79h+SKCsMDipY5tCXqPKLji0b80mjIVPGhMxlAC5
	 1+/Kb+kWmZw0GFbC6SBUcYgx7N1rLGNYr5e7zlBq6+ss1OszTd7dXy6mDNnAYw9ctZ
	 8ludayFD26JqyOJIbtSLY7x086k0uMy5N13Y9Gu1U8tsiuuFFQwUH9OiOCqGCYW896
	 OxCSSY5RGL1UlwwBNJiCbK3yDsLYskHdfujqRTdd9rVVMyADWBPUGrP+HP1YjIFr0g
	 0AOmNyhBj/3+Bee4kOp71Yn1G30rD+6cq2jYSa+5lztSpdovpyqi/IQ5RDA2StDe3A
	 RE8y5c91j7pOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3054C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102739365.24818.12347000770285735188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71bb6e8a206c1305ff10ef8b3c88b52dfb13b5cf5e7eeedd07fbf116bfdbbdb
Date: Fri, 27 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751027393
