Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728A2145B0D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720774043; cv=none; b=Vz/ZFl3kxrzGCM+NaIrF2oQxVohG9qhrf3OG7u/apAwW0RDHdGBEAIr6txPteTTU81nFBcLifrhz2zzEBkzZynmCSaady4xyd2bE7+9t0hXxOein+Oplc+n6TUvPLL3g1U3ogd0v8vn5MZ6c1+QK7aXp6fIS4m3t7OJ/pmj1iT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720774043; c=relaxed/simple;
	bh=dvMb4borGQgZZVxGMDFWHdiHre9Y+/hjx0uu0RWw+yw=;
	h=To:Subject:From:Message-Id:Date; b=dLi9j17shD3sBRweMrWsrqmnAjBf7NIanVDLjasUkhDldF12F/eIT+gYxheJ2b3WqYTYPEzi9VDhUJUI92cDNimsRa+l34/MTzDtYthRk4W+0BF6njPaASEYEEnU6bNq7XnK2ahL/jZjPKJfI8ddANv9Ldnymqmt1xhPU7cwmZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heRZ1eQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heRZ1eQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E199BC4AF12
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720774042;
	bh=dvMb4borGQgZZVxGMDFWHdiHre9Y+/hjx0uu0RWw+yw=;
	h=To:Subject:From:Date:From;
	b=heRZ1eQIfItfO+p2dnB5FWHAd5RyD91/WsBSbgeYawQ15miJbrEt7ABGRMUM4bno1
	 Q4fbJoF7om8KjUl9oP4nFoXwH9+dEeJkFsJaF33vmH8Gjw6ZO21EvqbUXWaPBGkBUG
	 6c1KS1w1+DvHj3mqoysIn5iNzVtwiqxOGqvpj9MpHKEP+oqP2a0FrKy2fo8a2Dhv+E
	 Z36ZmqZPJS4y2/FK14NkyqlrqjX3vhqBzTI3Q+9B+FVmyAakbQQSFFBq6gvDnCoaZu
	 rRXlxm6dL02aMPP6LhvW7QHlpHBU5r72xFXYnAYOHiKUn3STKl1XSTyYxWxzOOEnn9
	 TJnCtS2f81rcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC69AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077404282.22136.15528337641776338800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23836431a1507f9e7e94e7a417725810d74cfaa358977205c73e3f6e865a87a9
Date: Fri, 12 Jul 2024 08:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720774042
