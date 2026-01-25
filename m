Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B5F335BA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769331834; cv=none; b=SJUV8m698tWERnKZMXBa+4KIuVW+jC5twxIUKbl2kgjaP9LUKwnnHUZwSOjzesv2IOql2GGhw/npYbNcm6NHpOGWcwPvpdXFltLetUogLLJJGcDUxdWLGTtqGkmpdXC+cphHwxWNMREyQjQeM8iuvsgVOhitjewNI7sO9OhmcIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769331834; c=relaxed/simple;
	bh=3bHfXvFetkxjZI8PL7EVcitdB1twGaFSN1Tvaz+Ha0g=;
	h=To:Subject:From:Message-Id:Date; b=VKVDFoG0DBC9/ZKgVCqg3ihIOKxvINPmDi68mYi1jXf/4DBsgln92/cqtnUCakkI2F1irqkRg/9Jg9P47+AiL1+tPkeX0tBBx93V678oKsq0aMPXd0J/h7XGA3idWHGpDQC6PjbToLGsJHkEVsdWUlmoqqNM+xN1S56me4XLZxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvzVYG5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvzVYG5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A728BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769331833;
	bh=3bHfXvFetkxjZI8PL7EVcitdB1twGaFSN1Tvaz+Ha0g=;
	h=To:Subject:From:Date:From;
	b=NvzVYG5f0G3NtzJxjOiMH6swjGiGkOYWEqqvV3gny+QgkmOzQVp5cxRs0+5epwmJ3
	 eesG4ILwOzUljtxybmaFEAnjoedzDFSD59s5CVj4SR7XhMs1xylK1RaMopW83ff+Or
	 rYU/LZlhgdBvKNFFzj3vPNyY90X1Kh5lmJfaUZRc+ttzFsVZAZRwa8zMnX9B9gBF2A
	 8NF9DW0C9eFiIuPDUrhZfhUR67/2/fFTADktKeOA0ZRkBazoJ0pkGi+YztUPOXpFzn
	 WjSnESul8P3FWgdygcrYeUsVIKi12c+EwM5AkwBzV5uk3ue2v19FCcyQ+1gLn7Amed
	 UjtpsxLVY1kaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9261CE63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933183357.31337.16107939096366603483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990e6c5e21b5e2d753ba00b6566560cd08c76c31f418cfa88e2bcc16bb397022
Date: Sun, 25 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769331833
