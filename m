Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6502905
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725034554; cv=none; b=lVxEy8DfKTa2yXikJRtI5QNGDb7d6KI4wdC5/e5PDACUY6wn8iaXmbzKSkPocWDOGzqZiZq0rbCTKRRJItgBSunFyKS8UXitiHNa2Z4KWWgk7QCVWWQgW1cIuIitzYHvYyffZvXFR6zY78lq4rmKcTjVjRAe8HgzYLxHCBsGS7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725034554; c=relaxed/simple;
	bh=9ib9SyDegDFBlUoRS8wEMINVyf+/cd2b2/300PQ3mv0=;
	h=To:Subject:From:Message-Id:Date; b=X03b+8j5/RjBwmnTaWN54u4mtI/+RL7gVXeOI7T8VJlgYfTanvkQFDAgTFHaauO7QNRA67xnRSIo/+Joyzq7yvNkTfTZw0c7Q9k38LH1ccgwaid9KSW7Ryw9LG0eSD6MjL+HDjhSU0Ju8mYCXTWo0aBZzfAcMhYFo36Xk3Cjah8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuvRET4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuvRET4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46EAC4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725034553;
	bh=9ib9SyDegDFBlUoRS8wEMINVyf+/cd2b2/300PQ3mv0=;
	h=To:Subject:From:Date:From;
	b=QuvRET4KLGg+H3fduHu/SwFelXQ2HO3IA8CxBTbLUs87w5mDfnIXU8l9Wpzz2Vsq7
	 /IS+xWfFyMolITqsqpWLZRW2S3QUAp0IcIz8r7L8hbGFnGL7w7ID5dSk2H53DJv7pH
	 RwkgyHG1b5Pup2GW2HpMviRc4Qf6fWO6u37W7UUUSpE3YYQ6YJQ+Zb/WZEVtqvt1er
	 NtVUjrNVdETjIOh7wObQ8O8cgpFMEpZ3gYu3yfBEg279FXz8zRmIhwLOAXloZ3QcY3
	 uho4y8VrZFnDKo69g1VqjbG+SrqPpgb2+Ag+q/nnHnCyyPDwArZl7M2cHfslaWmqdX
	 WPyjFLiSRHaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ED2CA1009
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172503455361.23702.17422023734936143792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a07e830c6f99c7e0583c1eb915a9c87f32de1d6777aeb5c5dea20883b9032a5
Date: Fri, 30 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725034553
