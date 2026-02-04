Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262BA3358C4
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770249234; cv=none; b=gWXBV244zxIunsVFgQ7cJhzRbOmxNxob6NRlwQblSf3glzNykAau9aVsUlJk91VSoWEhw1yAgHW0BvQydceU1cJVQOi/msU1MeeFEaSYDCYC0t54s0HOn/ovaOAbzSRsAIk5VbHBhevocYFeRW8/o1nWar6WdvgQIrbYDZf6gvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770249234; c=relaxed/simple;
	bh=9YQiWmWzBn0LOKjyoVuoMGYujbxLBIi+n8tbfo+xGZ8=;
	h=To:Subject:From:Message-Id:Date; b=RepTN5r5gIXcAJ6f6nSoeWEOzGUOz8Og+yZ2rqG4LivrIJt/wxuVMDfqzx/B2r7T7DhKQTaJxs1UgLlo4/HvcnSgOsQZLQOKVdpKWWjnXnk0MtFo9+RQx4RfDzfeRaQn9KsPSfahSmR/mVn6sbBizBtarwmx+ERnU1b9jJxPjo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xn6n6DIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xn6n6DIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3CBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770249233;
	bh=9YQiWmWzBn0LOKjyoVuoMGYujbxLBIi+n8tbfo+xGZ8=;
	h=To:Subject:From:Date:From;
	b=Xn6n6DImV5CRJpDD+miqDJ+lehj0LMa/6BmCNTtGN+AOq/RarR9wOWvhYyU+3v19/
	 1OonWzTZfSs7g4VU9SxCQ80vfLDkjWnipe80lj8DZO6NLyelkuBomujg1UkyZCORuH
	 Z5FlNsPdM1mJYyabnqHOB0Rju8tXf/gkETzLwoOgKC6hLxaB9qKTmxL0QdDkFiIB7/
	 HeGQ8B43Lnm41/iL7/UfuT24fHMJxr432iHX0tLCyVmZeGC1Jc/c5Q686REO1o8Ny/
	 bev7nxoHuTPr3YEhc8jW5GSGuYVY3ZfaHDoQ7c20KtRX0g/+2yHeHcgYMi2T+ZM3Un
	 t8TJMfXLo89hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FC1EA794A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024923361.17674.3855040406515232317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b42574b61cfb8739c783e00e7221f005398f5be335515767a18b5958d73d158
Date: Wed, 04 Feb 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770249233
