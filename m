Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4B1360
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722557154; cv=none; b=a9wiUa5CMlDXDgpehHADGR4FL9gUKhgmoFCGS9pVCRw1Gu9hFwMgIMFtg8APZ3e9TguHZajm+Lmo8ilOu/8lObFC+SMBOFR6MlhA7c+BJM0jqTrmaIFzx1PzzM2ef69kEnAtuaEcA3tGHMJVfMUw/dsX3RovhNrnrTkMDE1SrBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722557154; c=relaxed/simple;
	bh=RNgkPbKnlzW91LYR0U97u26w0EMs9MwVctPKw1bAGks=;
	h=To:Subject:From:Message-Id:Date; b=ATRFRrcWkQHoxB/AKZFtezXLTx4/OpHUl1L51hudeA4ehhBf+F0KS99k7Zpxz+x5TA1/ofykZ+KKLuuzPsPmYUXV6atZTKHy2KMfDvuXnR3AX0bexx/SibP8zclHWbj853NzUbCQtrwsCqQM0M7SvIuyO6wntbn5KAJ7kUPp0Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5xShXu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5xShXu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8857C32786
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722557153;
	bh=RNgkPbKnlzW91LYR0U97u26w0EMs9MwVctPKw1bAGks=;
	h=To:Subject:From:Date:From;
	b=P5xShXu+5/acKItRL/74qL9NJLUQHyMxIIURvy9oOQDZEsY/Gb6d4+HhbuIJWaLAL
	 0ZQwz5KhRBwDHh/SC1cfA8EBwhOYzq91HaMbrhSEimeLvuciEKINcY+IbLxTUKMV9f
	 FZ5ofyOpIeOZ6bHCkjT/fiMMMAMJUaOjFaylS7xITdG1NCB7NnVE2qZRvB+pvckiYO
	 egDOYk30np/IIIlYH0J0prfx7cuDVtQ2IyVYk/ViQPy/1gd6HNhgsmHhU+SjZ7mWKt
	 xWOhL91NPFVKzDHxYPfzJtVLtdpcCwFPUVRrkOnJqRTGshJYHtsGPUCk28UfRvBT9l
	 TclriVT5KibvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0505C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172255715362.20011.9592177575285706272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4869e8d1cdc4020f134cb07d2df0a62099fda07015f016dc37df004e9d54398
Date: Fri, 02 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722557153
