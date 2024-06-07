Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5748318C35E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717760843; cv=none; b=OacfWQurfhtkLcnqHjgasQECbtmSs88hmlgAtKsFBCJmPihOC8zvPJvmuCe1VIszs5rWpfq/J3cSpTshxM9Fw9q9uvuq8f+Tp8dsP4/n24XeTMXeefTOEFntYIlev9zQUxOtzihKhdX/vgVOMRUd22TeoFvuC9b4IkHzqNfx1Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717760843; c=relaxed/simple;
	bh=3bPsk6Pyg8ZQqgF1IPVukPktavR6uQHmUt+b3WtBQhk=;
	h=To:Subject:From:Message-Id:Date; b=Zo0YhzVnJtxy84qN/xZKKu4sXBsNSMgt6DeZljYKwFT5Laaunnn/dxTB5f1HrUK4A/9GrmvTf3PKV/5bYNg3g4NljpTMWzjEnl4oXxbdVo3Vb1JMeHfxo/spkCkEajOz8WeF99Si5dNLmXv3tf2/+xyh7voANI8jrHhjG/mInPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfMOAfEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfMOAfEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31F4C32786
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717760842;
	bh=3bPsk6Pyg8ZQqgF1IPVukPktavR6uQHmUt+b3WtBQhk=;
	h=To:Subject:From:Date:From;
	b=qfMOAfEzH1Q+cJ+lN0KLSCaDAVEHWGAUcb17X09koCVeG7wrJCXSMLVfDPFU5m5V0
	 D9ky+fpxbzT4kQRnlQ+Lz7l1E9jnIVUVXdvFZMmv+mhXOXfR80bMG4/KcWZSXdFQv1
	 HHCtmCJSZNI9XVANM+3QvG87K+I3cqEyuIKZYbtPuJ0rMq8XTyZzAsdPBOkOB5a4KG
	 9NF5HUkgHqnrmtNLXbnimgjBRzS+mjrVNNfjP8RxnKe1AUq2VSP7ADsIdeTp41bbSW
	 nv6DNKhgBMqeAnYiAjL21FbUw0qcRIwd5fiJ7QbA8c8CJfJZFSlFpjyg519Zt9FFKC
	 dTWk0gpoq/gDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA08C27C55
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776084277.26126.5379891481865703734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3667ee995ffe53c26f6af2ac3d7632f119ad74353aec6fcc48a6fff2411bce
Date: Fri, 07 Jun 2024 11:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717760842
