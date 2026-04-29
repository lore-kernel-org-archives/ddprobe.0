Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB5CF9C0
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777423054; cv=none; b=ZhZyV79w05knP3kGPqblHNkPZjj6jAUiu6PoEisxaH//4t+Ch3gbE7gK2dt/vAjKImx5J7rnvn0OF042MZyBdHfA0YlzC8q7Q7MCaITB9hS6RdHl8p0fahnJYAUMtAAexvw7c4dSS9gx8QiMM9SxSGxaEELwhEBSL4Mzzze7r+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777423054; c=relaxed/simple;
	bh=fCp8xfbuyaeMZzGWsHwEzVVPT6nhmRs3u+gQa3tzMdE=;
	h=To:Subject:From:Message-Id:Date; b=RVgB5e6ptzPuo2RkHxWUe8BHl9aUcxUpb7jacoqBxgXopkBXyeH6S7K+LxD1aKgvxlCaWe0ifoU0oNLlLeB+NczPhd4oaDNTgu7oYP/O0JK/wB92jKyzx8iFPc6ukYDSSvIKrTB4O8oouwf0vAe8W+MyfB5tF6gt45kcWYnQZSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuosVTMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuosVTMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0693C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777423053;
	bh=fCp8xfbuyaeMZzGWsHwEzVVPT6nhmRs3u+gQa3tzMdE=;
	h=To:Subject:From:Date:From;
	b=iuosVTMwWEJKdSGVdvirUC4kuY6i5ilkT4QfHRTw/e9V4wNxWXOTgLPGriIE3SGwe
	 JZkns/nR/2rKnqGEB+w9mwr/lBTS6Ucy+HTTQFl0REF3q79eBIZrNdUe+3Py3h6d1/
	 Cm0vg3upoCqTalfGMxiyYEC8UEl+nMFbbylc7h/8aZZlfIFpMF+Y4Y7CZqPyhNiyVc
	 qldqFxIlpV/xeMYrqLac67lFwLXk+P7LhroByw9UuhBZL6jwGucn6pSV4iej5RfHxG
	 3Gz1lX62mgbBCi/ojs/ndj1tPlDm2x0NXfXUuVhbqNRwYYZlnwrY3iGG2Or7kUHAAc
	 ph0fQOBM083zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB886FF885A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742305368.20343.12661926708614141352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5770cbc6456b612dd73dbf15d16c85bc62f64706521aa315a408b2914f91c6
Date: Wed, 29 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777423053
