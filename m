Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7F83446C5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773768293; cv=none; b=bUVGANMnB8Om3VjGCxdvw1NyllMUth8GqgBjiA3EOmaPldDBcKdw3VD4bVrQ/GyG9FFVYDUQIwO44gr3dgOe9OLKAUMNUkbesUoVT7n2a3gPR4w9ctv+uFZKX26oOEKc31t2lm4o+5r7HB5qoL7Ys7rjGLyliwNERzIOpyXRrjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773768293; c=relaxed/simple;
	bh=teIUAmeR71r9Lb2LXKgiw6dFFRvUzV9a5rV1ADCHEWA=;
	h=To:Subject:From:Message-Id:Date; b=oxmAyZuwPDQTj88P7UVgK8kEvltnz5XeQmogZ4DH/RzXNxgkBZkyvmZwwRI5aF/qj8to4iDT7jggfvWKipaJHbLYLHK9Czy4gxKwCH9++mLQAkkB+tNVNsW1O9i6p1ewDSRHVJsoViVrMbLgmNTbnuQ5RIrIak5T9B88TdGG3so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=le7NLQvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="le7NLQvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C26AC19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773768293;
	bh=teIUAmeR71r9Lb2LXKgiw6dFFRvUzV9a5rV1ADCHEWA=;
	h=To:Subject:From:Date:From;
	b=le7NLQvCdSHR5gcgR26VTtJPN7G+liO9r0mQJSs/31wdt16B1RU5kNSvDLQwxn6bo
	 YJ8Gjf9Ckz0WzICEVfzpx6anVcmekI2Q1Avn8uxdxFjkzyMwYHITWJL3Nr/Jnuq+CJ
	 1f/2DbgPyGg0cs0y82234HvkKG9+ElvrVuLQNbBp5FPxICudg5VOQH0ag9ThgiRRHd
	 onh4DViCdr9CXMZU6vdNjLAljG2+GzslTcLnUSRlPR0YRE4NlyOlscBHQQA1qkxO1n
	 ZFKY7v5F75vWSrTn9WTrqBM3auSkUkKywWu6fT5xbV48Oe/ltJvqmvcFtOsXw6qkbT
	 vKh8I/gMZE2Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F011FED9F8
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376829357.705.16645467351402047941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4fce475a3f4c35fc6a5fd041be2f026f408a4370bd0b0d05e49e216a8ba8e0e
Date: Tue, 17 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773768293
