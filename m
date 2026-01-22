Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61096361672
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769067834; cv=none; b=HyLLX2bPPTgPDAtiV6ncAfUhBS+61Uzpg/dQr1mQVQaNlIjKJYoeTufMb2nY/+752yVOhLqgr+h4WSvsTa7yPeMfV0ZSbDqvcJekk27CMxF6W5sklFKli6iGH5alfWQ+XPmaB17vOgLvYtfAoLxA4epMn8JiaTBLE456jT1bnc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769067834; c=relaxed/simple;
	bh=zxtyYQknC2sjNwBo0B1RJQb8cZz8op0rrZ6ulEH4s7g=;
	h=To:Subject:From:Message-Id:Date; b=MUGN3e2WDpITA6kbWXSHeOzgJH0l4nvO9cieMKNN8zXnui+WY/yUabFDAo7Ar6/5uBSjx8cvtDHfen9W16QnMm3BLtc3Cp9deTAqd8/bB/uRQ2HS1wm3vc/ccN9tVHt6dkBopg6EYfz6abwqWukfhRgxYnnsbyTyohYxhv4OXMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXsgWa3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXsgWa3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0370C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769067833;
	bh=zxtyYQknC2sjNwBo0B1RJQb8cZz8op0rrZ6ulEH4s7g=;
	h=To:Subject:From:Date:From;
	b=iXsgWa3XlEjEQCPQjjVfAU74q0SQmY8h+AkW+3gIJkZ3DyyaW56eqE+/mm9jCOsb+
	 KXfuij3rWlzCCkG737R2HVe5U8veV81bJGUg8jecCVKwqYFlPSwBSxGFAtggv6Z08Y
	 5NNVOEgorbQCk2Pe4fmImFQzh+KaqIj/GiYjTyEwTh50P4bRID9V7H+NnnL60U7lK/
	 vwlsp8KyN26r+QjDvgYWjoCagVtr+V5iClRs0hF1JKNWvKydKeMn/fl06DAHicKOsd
	 jrj66DBlQsjs5/KaUNki5UCwLkkVnRLnUN4AWVbLqpwvIbBBUzVrcRIGgOH5krBWFT
	 MTEQ8eXphKkqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B5C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906783358.2209.2619517283500635731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc1d2fad46e90edc6b8707786325ae2b39d3539fde13b905a85c98318e174e0
Date: Thu, 22 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769067833
