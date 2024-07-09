Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DF93987D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720494383; cv=none; b=tb9ThzoHGHwZWUFKNTEwsVeB0fS2g77vtKxsSZ8X3aJVVd4CEBUs5dDfi6AZ/xatUq5n13TjFWK9u2ox5+DbKr5wlVkfhbUhAtc3AMeaTdpyKmT8m0c5faG9fCiOk8layhuoAc8eD1tsXg6C027L3h9ab3IQusThE4I7atQxQJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720494383; c=relaxed/simple;
	bh=rW5zvgt1i0OZhuhTTxnorGKBZAwixNXUGEsANVfjMoI=;
	h=To:Subject:From:Message-Id:Date; b=tb0Eor0Q5ly7OmuQWb/EPvuYYbvm9d+77NsEdxQFsWxyVR7m1oK6IJlFWsJt38Gr9QjzfEOZyw49CVu4w+grjiul5FR/e8Y7FKovRa6k0oKhJoDs7uToDNpfhBqrdEkmeNZbyJ6qWG1ycw06ZOZl/fMKIAXv/BlaosQuWLKwRZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7gLM86C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7gLM86C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E39C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720494382;
	bh=rW5zvgt1i0OZhuhTTxnorGKBZAwixNXUGEsANVfjMoI=;
	h=To:Subject:From:Date:From;
	b=N7gLM86C6IjtjQubhImK7uadyPADVjeIeYXOMlgLDrzRC0Agsrw9yikYrqwewo3ck
	 TWO1eCJrDjkNgekMSzBGiABfOGfHVsLxFxRXVWk+irZFgZUbEmof+TwJUOSaAa5eG3
	 RVH4TmwIfjj26STqIzKphVlyLY4iNxfHQrSxin586fF00sClr89Mg26KkGTjl0f2l2
	 QPpKFBYaHoI76MT+q4BxroM0mviiGdNq/e4oAEMPl5F48vNCirxayZnm+wkeIAi8/o
	 urFRE1vYG/fxEkgS8kLgHq8kQ0i9mGoIuQs4VHjuKdPTcTs3BJddjCXu5C/WRTi4X6
	 AmM9eN1fK7mtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBD8C3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049438275.3985.10139763748566533927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74a8df7ac25436191495345cdf58271dae8adf02563f7fc0cf6220de4fb97fd
Date: Tue, 09 Jul 2024 03:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720494382
