Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C771DE8BF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753336194; cv=none; b=dNidbKbmkxjAeefRml77oR80xr3qKI0I8JD+vlQKPGAk46ZFUQlMlfWFFtoEnwcF1lRkoJmLBHyar3v2BpgIY8LuxUaktCOvmlsyq4lXflWf8zTelnda/Jf9k76rQxSdr7cNevh04Aq58y2x1UkKXBB4paOiJ5yWbflK8OyWdk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753336194; c=relaxed/simple;
	bh=VkDG0j0WFC1x70hPuOWq71DiE37Uu3/i5PzFwsTGNwg=;
	h=To:Subject:From:Message-Id:Date; b=Tp6TDRcrgwf24UbXhLPjnQWz412zidR5+cSmruPjANbUuZyWpUg5s9rbEB0JtJKTuUyxyIjI6QfHAmc5gDmkS3hTG3lvouvQKZEE3aqYlDs4CuulEU40E5MAqF6iWZyk/pfYSX/pyf5IPzdULcuPTzn4+Xpscg9+xZBkNpZgFDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YujIgdni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YujIgdni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ACFC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753336193;
	bh=VkDG0j0WFC1x70hPuOWq71DiE37Uu3/i5PzFwsTGNwg=;
	h=To:Subject:From:Date:From;
	b=YujIgdnijOAy7n7FiWuuskwPrPhe+Fnu47+we1UX44ykn+NKtz8eFIVGvI6AFi5AO
	 n2vxdtwqylis0QQbrQ0x3Q5ePyD7JSNKAp29mcvdob5nwhzdSV42SkAiaRLHthi2l4
	 ZfghSH8y6dZCjVSh3oDbb0/eQZVtZXWT+KqsI8BxqGNbnaUMH/+a4ZukGtCr6QHgBY
	 m7pn/hk/cwY2LZzv+4BAV9Jn4gktD4/84cv0JMbrcb3/+CmFRIyjyghuqtlN4XhTPC
	 P6sNGwM2VOQZnwjJka5ui446ewxf04ZtxoFgt1VbS0yE7Gxp+2kMHWAWeiuBa+9N9n
	 rxJ/FC7GC1pLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16AAC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333619364.3503.15587625637615659530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e0e2097f29354e597aad017c35162fa73dd04bce3b15945e0ef44536e6f129
Date: Thu, 24 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753336193
