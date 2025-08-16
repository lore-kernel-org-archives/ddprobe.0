Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFEB27453
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755328795; cv=none; b=r/DHF0D/xZjng/E2A2v2wDT5oeQNAIHNq87ilAIqrA5/lu3nmtZNpEoTrlYG+7TI8wWtForEFYXZIgsWQdyej4o2BUm3MF/zE2PE0kyIYBdQgPapDB5tzymKHuGmBwELVzi/KosNY8Ae9kqxDGD7hRyAbnTkxsofVWBsC1Jz2Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755328795; c=relaxed/simple;
	bh=g/mufMnjyF6tPtWXBAtYMw/uwDIVlHp9gG5oEhamw2I=;
	h=To:Subject:From:Message-Id:Date; b=h3dX1Q1rsr9jLQS+WeLcBRjPIhSS7qPFa4qdqq78c5YQ/2etw5siIaI3MiFIvip1Uf04sdA9usHPsN5/VQLpxjIjpmFW03D6NzJcH37y2B11aI6c/z1GU5Ln8gstPP7Ihrr5CX4gmlhps+Gg6kBhAo1FAp06UT7z0zd7qvtXIEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5lm/bn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5lm/bn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED5BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755328793;
	bh=g/mufMnjyF6tPtWXBAtYMw/uwDIVlHp9gG5oEhamw2I=;
	h=To:Subject:From:Date:From;
	b=i5lm/bn85x3w8lGVZmfNuIFmGFgTpxIHumNMcfZVp2DZH0JRekltsJu5RLYEoShVS
	 LtQ0vOx2uoztr83d+A3UvuQg352H3HtRAA5/Knu0Has8E98kUhXc4WaTxssB2/UZvB
	 /0YoInv7Xmw/cjrfMO0SMSsIlgX/OgQN14r4TbIUjN0zVSX5q1V6ldNplkBqwcBAxn
	 ASegVwEh8HDGWi/asTt2+kk+cSepWAZpuFHNYRGaKaahZqFqOCHG6UxrxM8PoAH3l1
	 OJ2utHbIFg0gdfDKIFZLzbxVV/Nc713YMhzvJly6MapbTJTJVm4gMl8yIWMaUJSqHT
	 nrPSZz2r1ZtmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E863CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532879357.22836.52759704962813386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6872bb664be217f173a395a9e0d6d6a22deeff184b7cf57022a9a52b65ce4b61
Date: Sat, 16 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755328793
