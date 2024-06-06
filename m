Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA9D19923F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717696043; cv=none; b=pSBSAEct2h0A0vVd2JDu3daTolw5vLLYaOaJPDCVyMxfyyFe+osdfkINrhZ/dzx3rYvptmIhKrVl6FrPT22flyCk7MQBFWDvVJhXJFCEIcpmVIHMMv2x5P5NiaTmCP0oMnlYhBhOALiu6Lvn0hHzBUNTtZIYowO4KXqcrxjKFqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717696043; c=relaxed/simple;
	bh=rSIHghF3P+uSeW2ZnYPnWRPaydxfacdwxj2Anp1B63w=;
	h=To:Subject:From:Message-Id:Date; b=ZGsoMkT9blHmhTTPwaNYeiHXfKwi5NXCr3CWIb02It24WgkdHes3xMzKnCTAS/aAEs6ko+obR+0RffWUwSUBvDBAB0iiKZpAbsmThdAxAwgNC0nVzjmJep7d3UkHRJDj6+89ScHoW2WpPpb0yhdLy7SgDWoJp/P6KvIw7S+clhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1BnK6WE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1BnK6WE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 166E9C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717696043;
	bh=rSIHghF3P+uSeW2ZnYPnWRPaydxfacdwxj2Anp1B63w=;
	h=To:Subject:From:Date:From;
	b=V1BnK6WE7/d7BaS1ZuKFKJwnThGiTy4v7IXfjI+P2CIOXuhnnfBjm9sWgCEzQG2Xe
	 w6f3/twqbqq9OCRa9nxTRROO5Nty0voszmCgvhhloJ0UnToEGFC6v7DOHpjJieEZPC
	 T7T8Udmcl5hP1Jay/rIxnbe3UHa8Z7TbWhfRHWLKbDVxaBHQtD99tBLYa1GfpEOV6P
	 PgxH/+cPvEZzIvAGfhDSEwag+Q/wlJYKez5NMQFtfaglGR74t5LoNrhDL7ixr1sVH1
	 rT2D5Rpp6iQe4EAXTKHRCH/rsw13pALZy+HdqLdpwkc0Tf66TW6V93sWOHMn6OI3zU
	 ctdWq0PuEuAiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6C80C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171769604290.27167.13530006947332697412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6896861e19a1713c2f84e10a84a68eb43bb14735e56f0bf74e23613ed8cc66ee
Date: Thu, 06 Jun 2024 17:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717696042
