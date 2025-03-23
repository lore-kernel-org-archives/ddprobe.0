Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495E72E337C
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742747395; cv=none; b=JJBjNN6Q2Avpc0hhPXMa0mRWnfE2IRfXMnbn6curEyql4p8MPXqmTv2FUudwIZ0LQ1vEize2mvMV2lB8WImheWkKWm7o/y2stuM9otLtGwibZ6LIPJwGw1SrAk7E04IZF/1Uboai53W1p74gKSp+c8bClIlB8fueN0FrkTEJvQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742747395; c=relaxed/simple;
	bh=fjTAAsc/U0naEgptq8v3s4rtjKrmSevGt6HS7NKqL+o=;
	h=To:Subject:From:Message-Id:Date; b=itJRthen4EgKLKLfZyhfmxQ5rw7h7d7byU4qE2T54gkWId7ej2mmv93LP3SjdL2ByzOrgyN77tUxLdVSBWzFAngzrWoh4fy2ZkPTQja6FwIGqfWKpbeaxTbPOOSmry5hczkxfemtemN/he2Rnp8AdQ9ix9aeaJuvYx2SvtfqiV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npw/LLd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npw/LLd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B972AC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742747393;
	bh=fjTAAsc/U0naEgptq8v3s4rtjKrmSevGt6HS7NKqL+o=;
	h=To:Subject:From:Date:From;
	b=npw/LLd8LIyN4/5GaUUU2X9G1Vp0u/l2/TMhDONTyvjTXHM3TX2035firPaPguBbC
	 sjMqRmusPLwnDgU4iMxotdtXqZ8YZLVOJIdo6J7NsdzWlxSzPvt14hIpR5AVod7QYZ
	 hkyWqIJC303Ja09P41q0uY6ALl3hg437NQANnRyXDaMl4anQiVWbCwuRR9z7OX8B8L
	 cfhIanDQckXkfCsMFDEg6+fTOvKuNLYS9P1ent1tx4b6lqsp44mEpU8q4RHWkhObF6
	 5m6BCTXsTD/4JsqwUQRlN041/nXljrqneFSY9Oy1e4jUkU+VRP1z6LEuEioXGJjfbJ
	 vDJinTzlGZIxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBB6C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274739360.18642.3271806927235216370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dfc89c7fa21b11eb822163f059d83d8f86fc545814182287fabb1ac7de1e089
Date: Sun, 23 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742747393
