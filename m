Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F0C81ACA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748801994; cv=none; b=oAeVeYKiA0dWBjrlCSlMZRremDfAjjdonc/4BKrvHHhQi2d7KoPwe3xwyHqH/kBIxjnPqZabiH+Ib8g4XV9EJfdXuKuEQM3W1b7J9HtXI/q1B/V6+T/2s5g3hKvXFMo/QVc4wXelrgexYNTi/dDh9Gnj0jypLRdJea9SlHMkea8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748801994; c=relaxed/simple;
	bh=FaDeZDryNycFf2AgJ75afFbKRlKQ+6otdM5ZpLzLxFA=;
	h=To:Subject:From:Message-Id:Date; b=W8R7gOVKtwkVgQ5rzPzfbnT/0lElyaOdyRPWP43+LqsKpAunotTIk2fhF0z7df6QqO7zdEBPFl+sGf81awJ0V2Z6NV7Vgy1rq/3a6ULlQYRgm8+zUNVtb2Cziw73Ja7j7ITJ8u8vRkLoF/ozDlLU0+qAdXxeNPvqm/c8BXbyzpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffUa4COe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffUa4COe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6FCC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748801993;
	bh=FaDeZDryNycFf2AgJ75afFbKRlKQ+6otdM5ZpLzLxFA=;
	h=To:Subject:From:Date:From;
	b=ffUa4COetV1XSKtHU/kKgpU9nRTGXXQIkAlntur762XN40r+DeOUtMj460EFqlH8+
	 3XIQovn7A3VD8obfiEFw1toZrmWg7fZMDAeJK/4J5pqcqzmQaNB+9li2hjsWqu76+2
	 uMAf9hqGJjbBpZtd5L1NGeBSrNkG+EP2ZVaDD+PxHC/HxuX15ykP/mb3VARBqBf7rs
	 RqAbRlYuSrqWbWUrkcltGNBu2rI7RG8e9Cg6AMPb/dRBP4wQddHZlYakm8PcDI07T7
	 +FK8ZKkcJ/FH4XHJI5MxYWIM5c0Capwe/WzcMMUXwBjSDsjRK/VdJhZ27l/mrjGsHs
	 0Ftq3tmCmXT0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47CC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880199357.1365.8949051978606431399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb0127d6055dc3e78b81747b6c6462910fb0f29a7806d150b7c33e898afa769
Date: Sun, 01 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748801993
