Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4641620310
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715620943; cv=none; b=aPT6SwSzqA7l6pUWDZoEiw8UvNZzuEF8REhhBvgyW00iC+OEJ/uON2xl9xO1kiPi8VYNwhO67Arhz+P+sz6NZYSABqV63U1qpRnuC1Fbcql6vlUcl3oQTMMFX0Ej6qzz9dJI33Ycs2cXfn/xC+Je5+KGzt2nIQyFZXXFCg7sYfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715620943; c=relaxed/simple;
	bh=b3ehewqtXgLgWj9xtX8SmEsbAQdCN+B0w+7C3APQMyU=;
	h=To:Subject:From:Message-Id:Date; b=oEzJ5ZkHENFwfuqY9q6ySFBmhU0T1BMg9fE74lDbNomse8devGvt0rCdJwyZe9oAL5D9s4wIDgZq7VkUapWwQHghS9jDZ0AjTy55Kze+XHh5hG+Z/Mqx71s+bjLXRqT+lv41kxwncdJibnzs71khUtjgLm5UayIBFRr7oXpiPZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9sTIsRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9sTIsRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2839C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715620942;
	bh=b3ehewqtXgLgWj9xtX8SmEsbAQdCN+B0w+7C3APQMyU=;
	h=To:Subject:From:Date:From;
	b=I9sTIsRj5LyqY0cvVGYsN90AhHf96FAXIgzvaBzQyOvZkEMAbEtaEcrajcKsw5RIB
	 JQ537b7fhFUz76raKn5q2vhTRLxpeHQEJDxiACuZPmrfjXKce1ThfamSGB5I/WysZG
	 rp3TrFOTvH8bXHGWQ7++7kP3TRrApHB+1jprSAlV30+n6sNA0ursMO1+AmQtrG6O1z
	 QFcXF/VeXMdA5WMBErk5TfBV7KRz0Gj7eVEOc05XlBdWpuF5DktvqMckSHO4PSJMTf
	 yBM61iWMGkEZIaqaNmtUM+8mfiU2Uz8kPeaGQN79LRbaf5a7nklLoAHvOXmS8Lk4YM
	 OqIYCtfBozmEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45BAC25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171562094279.2995.4283161122275866780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4917f9b339237223373d4928ca87bc130da8e69b2f87c88123dcc68921defb0e
Date: Mon, 13 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715620942
