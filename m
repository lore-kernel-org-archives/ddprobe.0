Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B75E2BD0B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769353434; cv=none; b=pHIQaD9EdPtlfJa6h66g5zLB9cky7NHfCGVRflYBZVuaIRpqGG0v1dQnWDAui/yAPeQwnA+lQSYX0ecoXhXQBekm7J88CK1oupPCwZAuj0BoiZBWadGkiZSKl2CbyVBv517282VtMrZ34swbpcr9fl4Br3tWk3heV37FxW0bem4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769353434; c=relaxed/simple;
	bh=zPWV6mphYSdPHjtk4hrjd4RD2bCDCsuckukMtmL3xG4=;
	h=To:Subject:From:Message-Id:Date; b=HEIVELqSIad0RhyzB7We0Bp8+H5kUebNRQhLzbEwlooCIS2ePxzx1Nv1gxvkH1pEl+sF/FQ0WrK4j29w5BDnJutrhlt3RMUjLV2syNjTRQiQ6YKpnxnyVO1BAS7rpdyssUdWiTlQlMQsDRF04TLrSdVyCsJL8N1WJmScviAxPVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nrotb6cJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nrotb6cJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82F2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769353433;
	bh=zPWV6mphYSdPHjtk4hrjd4RD2bCDCsuckukMtmL3xG4=;
	h=To:Subject:From:Date:From;
	b=Nrotb6cJ2QJ1ggPv4eAy+++YX6C/fzXb7dUvnZ/SRBrP7ug51Fv6H+anvTPXkShNc
	 YlHBWtn+8T7OgXPfVkVBIbWLBhkon6kAkqFfJ5vnJfA4T/yNwy5IvSWCzWuO5u0U0z
	 O5xjxt6NowhxSmMubxA7BbCdS5jjzUjapLwlMzLYCzAnRoKPolVdq6eEced/wsHmV5
	 KlNLHZ2dwM3zo8IeMvkV8u741nMO32SQyjFHi0lGzDjQTiLiP8q5gaEV+QSvR0qtO/
	 Z+FxC22SaNYmfOEEff3pIPE1rdnLJtOt8oE0I3n29qN98c8wdZswHkHZBIA1+3DMIp
	 /9/eBn5LNm4Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E0E63CA2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935343358.21583.6463813796498945242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ab964d640333060dd6d0e61070946c05003c79ca70590a1c65df59f2b52752
Date: Sun, 25 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769353433
