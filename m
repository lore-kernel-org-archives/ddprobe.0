Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375B53F076A
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768905834; cv=none; b=jHbpSGeBedDkqR+8qY/p3/HD1YIPhT0/J86XGI+uIRBi+fzZUUl1Q6QSU/qGXA1AHVnSNWqyPT8wwLf4SbMLhyZld3UhkKPS2esgHSZjY1qrOCpAPSDxkazqN079Bag3iJBaPYKWVBTgZ08FCNn5SZprci7ctaJvlTvEtIKRaW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768905834; c=relaxed/simple;
	bh=fMO0HvJZbvlTiXWw+aHHUdTAIUdtvVSbW7jHlzG9EbE=;
	h=To:Subject:From:Message-Id:Date; b=iIibc3SSzI9l318mUmmFgxBD5iWdHbzECz1oxYi+E23y09MSvbX+7kAR8SyLwIkoMRWfmCRdq50xoCjq5vK7eaI4ZwGh/7eFD5U5OZQVmHty2aY/r4WUTOES5ctiamWzIS3IxmRVUB32uX3rs1fshgaEA818UiyNV/wQXzHzegM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CROKeH98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CROKeH98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2500C19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768905833;
	bh=fMO0HvJZbvlTiXWw+aHHUdTAIUdtvVSbW7jHlzG9EbE=;
	h=To:Subject:From:Date:From;
	b=CROKeH98WXfgXuJEPyO2B9uaeoTiA0eQ6cAGtlYw4q4buZ6/8szuZTSmJSQaNFHoT
	 kCvzF2nBPNvbrGbTSYp5pM2ySqznVfEzx0eKRQu97Jn+uqY3U6iHzjbevRkjd9WgZI
	 ejgBTdOAWZp96wVz+nF7imT/sBEHWY8C+eN88x96jCoHXCZdcv7njHR5zphAKMJvgE
	 UAtFYolVo0HKJDIyjq6EdRpC8Jgb3GRq4g8T2yHoVJNtPp9eg8eboZ6JpGMsJOzJQe
	 dkWPvbP7yBfa+fS4MYlvSnYUWOAHPHqRnQFpjNTlMjwXTeoVCqne8C8u3tD5cdoEEA
	 OznDIPOTu8gKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E94D2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890583363.2987.11559561715143288245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d059a5b8530254e365593539acf07dbfd039b03c4337bd09455526b6b941f8cf
Date: Tue, 20 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768905833
