Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC5B29CEB
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726019754; cv=none; b=gSbLxUqPJUw7oAXFfKJg8ZJRGy2GF/ttOHwAd/1KNuo0vUZ0DcA1zCvrkLSLMwJxuFmTdBVVoJ1Kq3XT8nagIDKdp/wGQOqKyVQxXcDrztoqL4BuD+/jVVnFYJgWQuooKjWMogV9+bu1VCjGk+MAYAOL5kPPCnF31RTtOGS3LNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726019754; c=relaxed/simple;
	bh=zJ/PVzasNXJ33hrZAejNYMi52z32zOIc5z/rCbPAivk=;
	h=To:Subject:From:Message-Id:Date; b=dMohrleYkECiaCvu8H704zM2wzwB6LCzQ5xXK3Y5aoxDJOn1J477GIXtSuJ7CMD4dzjDoNEitr5e7lzFy950hI+G9SMblF3iXdFD84CDDMJjE0Q+zqSS3EEroa+1nYPDfKGzbV9Q3OyhqkxPrHO4OwTutuofiHCxnX866G3tVhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODHg8a+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODHg8a+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECD8C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726019753;
	bh=zJ/PVzasNXJ33hrZAejNYMi52z32zOIc5z/rCbPAivk=;
	h=To:Subject:From:Date:From;
	b=ODHg8a+Ut3xgYK2nVHesKRF+Ae5pgKA/NebdGnGTq3fbvXb0kv9JoGCvXPx4N2lc0
	 XJ0Ai9uxcyfik1HW0Bpqu5lB/hf6vkpxwP7jk1TqnSm8ZZo8gqMrxekh3ubh0uOsNS
	 es3RtyvLtytlCz/O++Ib3cBrv8Nt7qlQlZN23Pykw0rizxgcg1d/MdGF70S+xL1cAF
	 ii4GakutE+OScRSJKq8H8iKgdPjHHxpffvo/wG7NWj4Wf4MwGyHDZSk52HHwC45vnH
	 23j0yhIBgsBtkhrTt+xq+voJOB3BkCCgFWk7E+Icncfd7wx7hjXQpauJOdoI80n8B5
	 MyvgHZlDm7Pfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991F4EE01FA
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172601975361.13990.11868365989795233839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9d0c8a62d7bc9d5b65e997f80fe831d1ac09275ea139adeff34909cfe25de2
Date: Wed, 11 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726019753
