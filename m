Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396B721171D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737548154; cv=none; b=T7GStLUoEkmv5ryOYGDQfj8ofCRa2EukQmylpHwSSvZm1WC//mzqX1Cluw+vUZAst8bOOefQzLOI1QZSNTWIikphLYZpV1PPBTYT3yt+jTdFr7Dm443os8lzSJK/yqgO7VCwl69kiYN+Hsb4dKxwmoPx7yQYZK3e7ouo0ZmuGTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737548154; c=relaxed/simple;
	bh=UWnCTa44AWqHhSFd8CCxKZ4+ZbayH0+8zsp3Kq8ttoQ=;
	h=To:Subject:From:Message-Id:Date; b=ridhAu8jnJ2UvHwVCAq9kKBP3OY7EdMMbegL5oyinYL9Rbc/7cVtxwWcnlAdxZoKGFK4Py7QCAl/hNN9BgY0Eg8OGYtTC29PTWabLQIpN5JAPR1PxfmZlmRIW2eRIxBpGujHIUcCWjsvWJJRPofTHPZggl78RravW0m/qYRoJzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrBI9HtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrBI9HtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA2AC4CEE0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737548153;
	bh=UWnCTa44AWqHhSFd8CCxKZ4+ZbayH0+8zsp3Kq8ttoQ=;
	h=To:Subject:From:Date:From;
	b=rrBI9HtJrjpnKbilhfsj0FIFcZuitNUIMFXC3wlIrhRChGEp7rNy4m6pil5j4EjU0
	 Rltovu0M9MUlZP6C4afus8tge6f8ssdiVhGahRXC3gIz7Z8TpLdhlomxVB3YYXMRFQ
	 qzQspgIYtfY7DbFNpJtzUJWlhisNkeeIO5bBbNV+iybPTYvE16awNrrWc4a+B9w0AD
	 JRbwuS7EkepLlrz3plqPm263BRBDbIH5dc4TkO4Oc1Xp6Qk+h1KJ0ZIXsqW7+DG+4O
	 aOPeF4gEJtJA5Ql+notI5VU3hEKcAdX+1ruvgvROI9PXZgn4/pV2CGV+mo9dgU3+r0
	 NC1TMZw4W7i0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9966EC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754815361.22243.8202948631755870080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a26683922a9e5fab28102dcec0f89339b66d97bb3322a5f3e3e24a1abe9fa81
Date: Wed, 22 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737548153
