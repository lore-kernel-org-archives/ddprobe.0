Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498DE253B60
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742382594; cv=none; b=uVLg3MD6FPobZGwN6i0ATmOTr07Qn11tPuCAgWgcaH+fDtIblzxyxjSd/dRvar7t59tVWaRNLhkPpmmmdOX1NRrvXiBzm5GAk+vp/afz6aDMVIwGZJZyNi8/74OtPISLbMsRJS17OtE14UU4Zgx8E5m4w+N+a81vlheVrOErC78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742382594; c=relaxed/simple;
	bh=kH4oS/XR8RwihEA2B2Wqx3RD3OrG1OV66oo1xxb/jrc=;
	h=To:Subject:From:Message-Id:Date; b=HJpbVZwEVemUmlVNpp7uZDusoiChhwaX8WXDt0of08qpOxSkYM2ctxAf8Xs7LZbEfzbVIhHJ0f7k9Q7hNlfnyZNJ3NCg8qMHXXuqfBmKbx3EpkhW25c1lM4gtZMBiiCFW+lsohiZueWuylZseGPtAbtNd8BayZsQNgw2Jz3eW50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3PkkZE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3PkkZE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6DAC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742382593;
	bh=kH4oS/XR8RwihEA2B2Wqx3RD3OrG1OV66oo1xxb/jrc=;
	h=To:Subject:From:Date:From;
	b=k3PkkZE/lYebn4qfazrLJEBJ4FVME39kurSri8jUSYLl0yL2G/H6dHN3YbIQLtBF+
	 nluJ16BBRpEf1n5ozIXB9W+ZiPMTC9T4G6sdfhsjfwVkXJ3L3zxnRsuvSkyCuu2+mD
	 FU0Uemez43LRVJ+FSPqUN6XxCFpSVSqq+wS3gBAbwaFM8DUDLdhyHxa5hCI1pvwNgr
	 U+5bS4/Fz5Vi/dl7HjvU5h/ScBQq8COVCTYp0LHCbo0fe3ugzdvTggnUL4+Dbr9072
	 ZgzKLtR6HZk9m0MXiTF4m3XL/v6kRutieY8YUGwRW3Y9GNe7T/bi9p5TkMnzonunOl
	 m3IBU0JVJpFDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B7EC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174238259360.8737.3874643536333789662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ffa1fdf87e748d7a0fd9f15edad21e4c665fc7fd5bba51b2ebc052717fe266
Date: Wed, 19 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742382593
