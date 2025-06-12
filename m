Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3123A22E3F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749764395; cv=none; b=O0GL2Za4ghSRV2uXhzQD/LUQ3x2OUhjZQcYogGI6IXDTCPgUxzW/hFdpl6jmQ5AFpp73kdOT5bsyDx1T0CVz75AoB7cD9WR/3X7F4Z2v40z8ig7o5YhAnUZDxF4u7NMnw5cZnLTn8HnwTkoTOgg0tgT1AVR5x4GRqiQBUhHE+E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749764395; c=relaxed/simple;
	bh=1JpReKeQNd6fNJVEBgPDIZiGuJrzW1wnKJPAhbYBR0I=;
	h=To:Subject:From:Message-Id:Date; b=jJEObW3ZjPHu6X6voIuJQjvTBtCWOikEox7rpU5Nav81CoqA3igYNfa0uHjs3s6TeYpLaw9wCi5kyw0f+8kydHAq48JUI/B5Itl1JB3efK6jDYTN09R3s+chpLMYgTQhxN+gGwsbrzbLkEspfscGWbBpzYb8rS+3wCiE91qGFB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLORQweg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLORQweg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58C4C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749764393;
	bh=1JpReKeQNd6fNJVEBgPDIZiGuJrzW1wnKJPAhbYBR0I=;
	h=To:Subject:From:Date:From;
	b=mLORQweg12kTjdOYexngjs762T1jyoDD3vEC5tfujjGCvsU8QBIBX/PQMxu/8hkfG
	 iZpdAJ0DTtV6bgXg9PUefTGjqUWMW8A4J+66zWNIhOTS4c7bLxp4/t+p+fxwNK7Ddh
	 LLEM1iALKFBxkAfAdPhkpx9tfzQp2VJRk1siO4Wx7pGgtbXD8aGdawJCn+wefQJoZA
	 kUfODeHc0qm3jzCEZevPRB9J5lJ5lt1o4UaTIOKkSGuSXd4yzCNaflLUI0pIpImFqi
	 ClRibGyj5jfsGyOAgImlnfBVxnvEpebpgdm39AdvrLBAblp5hvHTrLMcf/IhZ5M3OG
	 wG7d4uFklE+Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90941C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976439358.30234.9729362999691912931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd3d337399d3dd4e8c9fdedd102d9b2fed3014445f7aeb1442c88def140f331
Date: Thu, 12 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749764393
