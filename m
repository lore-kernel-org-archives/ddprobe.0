Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3110B1411EE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719577463; cv=none; b=Saw4bSV3tjXaAejAoEeVICRn+mLoiK+KX4H/27ijXz8rc1hxgqpMWv2NexBAktqr/DznGrpKQXLj42H8iIHldiD9YMmLOOQ6JzwuPOINE1kkDTpYsEEQJu3ddnHMpWR7e5sXkzbUynpEQERpGC2i2VOg42NZpQfCR1CAT3Y4UG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719577463; c=relaxed/simple;
	bh=yNzyAXfN7ynBdWAlOfbB8fT8qVrL+t6qYU/lthgzcOw=;
	h=To:Subject:From:Message-Id:Date; b=MtxK33aWjoQyqPDyd+h6A0YFUlYnuSdqGXY3FCaeqp2sZy8oFmR35cagfdIL6WzpiGYQPUoikWKRKmlWiauXhnRIJziTPylLipkkYXybOhMqhOYT0EvOXf+AXt8oblDKjRUBYZF95S0lKkAnBRIkLrAcepgqY/+5TR0fsQ6rRMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxbihKqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxbihKqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE48DC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719577462;
	bh=yNzyAXfN7ynBdWAlOfbB8fT8qVrL+t6qYU/lthgzcOw=;
	h=To:Subject:From:Date:From;
	b=PxbihKqGtkgzYSYdlFMu/2JbWWXYgtxdPrguXc4skRewmrwxc+DvJNM/eKyHz+UPo
	 ylM0rsdCOlF/sLAdlzdf3TXK+5x945L5eaE8p4fstyhwVGFZCq7f8Tk+IJWaI+k+Ps
	 dWByrkVQESPrMr80nYG8+GzWNXxdqSPF6vQTV6uvIDv+L9vtFEm8XTIWu7uZwiOmcN
	 rD4u+czVOcuxSOqL6fJZsRvJdGDHHQCZtXOPwI8FpNv2hJlzoEEZhIVCwah2jRVx/j
	 N2PVfFN+6rd2h1arT5H7/K+MDhISiGka7Ok7HL20oq6EsTuuF1Imw9UNmKssBQfvxJ
	 yongLiHjofUtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC7CC3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957746277.12695.1140481053962475130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf24d64adb523f76369f03b9b192113550fe2364c1ba4bb1edb3265b5dc7a3b
Date: Fri, 28 Jun 2024 12:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719577462
