Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123D023BE
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747254594; cv=none; b=RoSCTbvJPOaSCVeDspLjyQiMqHHmHOT7QoAbELI+RZ8iyu3OVmGCho1hTsnZCupOm7HWxQl0H83d6SPrQMFWqgPeRdFgzeIo9hrBlV//dKWNWdQcwu/KWtR0djj17xLeKjfOG4PrUcxWVyue3FQsQuIlfVmbBOmHWO6OTYY21Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747254594; c=relaxed/simple;
	bh=AsLwy8lYdAJdujYpopaqmq/twTf/2O9GXB5LWZ9ZCEo=;
	h=To:Subject:From:Message-Id:Date; b=DYNqAHDMtWnWcJ9WXKVFNqQtw9cIwAHB5wW7CpcJKCZXSk4eQM2m4ZhRlJoKNqjuMZVJY4ibI5x+6wfw65/0pcjzxXoyA1nu6ny2LiH9lc3HvU/85TcKnNeR9dz3Q/pNTDm3ILKbOZR1O1/zM46b7/IGw7N2JRc8TLxFo9M8UXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1lLZG9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1lLZG9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEAAC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747254593;
	bh=AsLwy8lYdAJdujYpopaqmq/twTf/2O9GXB5LWZ9ZCEo=;
	h=To:Subject:From:Date:From;
	b=F1lLZG9D8SDIrpYO5kOmPyIfXCiQbk0BYWJvo9HJTYCk7mQjqEsss47It2Qb4iL/9
	 AQp8m194RBTHyBEjBTn/C5dqbvz41nSh+LuUwvU7dFieWEq5j/UPZBITrwEVceo1nw
	 gCQ/ZhpOb1Q5x6s2frlcs++fqbQ1Kqrkqtkt8KKxrgFE+ue9yzSSisI2Dzwh188bgk
	 CTqORgWj0PDA66ha/aS2o4mN4mQdZ4+lHJX5g3dZBomvjqUR3HiG/vkjFBdTD5uxbL
	 nMnE26DJAWYHYtKeYeHpMMW0+vl2RrM2AExW9VR5W0ov56PtT5bA/Mr1FnAY1dQa5L
	 63+XLZ+a2xIIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C7C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725459357.12893.8542760910526151734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a88cf187c76d75d64bdfbd08ecc3505214f55dd16672df5127182363608c1ef
Date: Wed, 14 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747254593
