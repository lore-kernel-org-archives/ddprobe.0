Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D813317BCA
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779072633; cv=none; b=di1vnuq0ZbSlR0IwhyfvTfsunRXwb/pNOC+z964zmKXqAQh/mltq8Rvewl2zXvFoNY7KYVOIjEAVUU6q2T3ELwvKEztKS4cJM0s6KW1BQBYkzKT1Z9QJocDWVHypVVfoWcq7nXipmyf3zi+LQX54VsoNpQ242T9Mnnq982on7GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779072633; c=relaxed/simple;
	bh=CWhcoYfs2pAEt7QChcXDP56APtoE7e8sitPrRkhesCU=;
	h=To:Subject:From:Message-Id:Date; b=bH+Ur3nONHdolemAXOqBYIPw1BM0djRIh5BjbomKXc+XSb9U54LrkSFaqypdrCeRJwVXAmjJ3LEk180IyFyP9RQFSL3e0OaR8oVLi4SG+6ydJDkhk2gYr/SCNyBOmlca9luz1FsTyuDUNW1pkqcIF1znG6HPrRh8i1Q9ezutMlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZPejm0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZPejm0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE58C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779072633;
	bh=CWhcoYfs2pAEt7QChcXDP56APtoE7e8sitPrRkhesCU=;
	h=To:Subject:From:Date:From;
	b=CZPejm0eDxeIznQd7lOTLjqQLfUhSxOAEv/T8DHervqKhoTy7VK9sUh2O5MsGthBI
	 PfkymKwKAYB7B5QQerlR2F2kbG7RXYXIx/A5mOMSmJunvZ9eh5IaE5+eFs4yFoMgma
	 knXcwqk4o0g0Grc4yTDbBQlrflPrci2JnFHkp1K6WdInyYQFtEeV++nBj2pLZdqmxP
	 LFki+wlT3HHrN6pH8ASJuzPc5LS1wP463Ail07tFxoqkmEctWrbkuEoU9A1P7KXMp9
	 1QYIcRc22ooyAVTiNfEt/YpKV51cXcUi9jFpxGTL9s1NFIWjJF7LLDG/BA0fmCzWp0
	 M9Vz3nVViZ1GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3E1CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907263368.24527.3907504607266813529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc609670dcc8ad6ce428a52512a2930587e8ca16c0db0970d6dc3a994ca11eb3
Date: Mon, 18 May 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779072633
