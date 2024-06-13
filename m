Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DDC179AF
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718246903; cv=none; b=rYLAm67xocK6Nrk8vzWXIBwrzV3cVe5OfeBQ7DnymORlhEkoiw/lpmD63M5nM+Ho7cvOSRzL0A++VniyztbmKxdhuSqOQsLM+XeLp5D5ivm4x/nAj9rVL6a+fi0JSzAQB5C4gmSYJrR9fvBfoTw8bF+ypQ2mXW6t61+l9G/jhgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718246903; c=relaxed/simple;
	bh=ztd+nxfdq/lmWWjl0/NoXwlK16ap06JApfbIu2/9qG4=;
	h=To:Subject:From:Message-Id:Date; b=nO59dtOpILv3R0acjhgNvhUZuFouYHq+SNbdlfzgq4mCs4vK+fXQ8J76hoAoal9aTu7LZy9s1GT0m0VUI1IoffmcqCUF5Sa4HSg4uGNV0wzBcCH/XIIKrZt24vUikKb/BDkN6RKAb0AsJXJJImgZYHmKXw0pwX5klLW7SJve0vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk6bKmtL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk6bKmtL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A37C116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718246902;
	bh=ztd+nxfdq/lmWWjl0/NoXwlK16ap06JApfbIu2/9qG4=;
	h=To:Subject:From:Date:From;
	b=Kk6bKmtLNOyk+iA9MDTEo4ssYPd/AALNqMhImBoWYvgWWS2vdJdTEdioQ2MUQ4kkX
	 yRTDblFJRyGmVIIUp6QsldfyY7lBJJs3WoDfnG4sHMeOSMU6+9Sssa281YA2bs42Qj
	 j9pJSFe/PtwHu9dF9FSAZJ8Xzd9nVMlsrG+NbgPdqZp8Z59QPuBmgZOPLhvVerKVxg
	 9eLUlEAbCtITxYrgCU4Lr/CVUL4u4ZXj6mSHAIjrxTd/cqAHvqXoJIGW+5wxSptEmo
	 dtbDDFiWJhzYPok6vg9tI8qcglyGKFrijPnjHKqrATq42C8lJHxQEtdLiM0RtjzNFh
	 rFqUwc75q59jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC74CC27C53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171824690282.16325.14218474678126975112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6843d3d77387ef9c3b0bd85d5b669ba19bf9ae5ab84da26b37d0bce9ad55c33e
Date: Thu, 13 Jun 2024 02:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718246902
