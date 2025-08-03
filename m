Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270441C860A
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754246394; cv=none; b=tt1Y+PXED/FjuAnlYyQwg9TSWLg5K9k7vRLyKJSvYerxG0eII9rWa+VyJd7SUYfJQU2yjWv4evXhtio18ajKMrfRezUxpvv3imU4q5XtG9Ny8K32tmBwDpv3ar8i8Rwn+2Majoje37Ev6TifgFpJBe3EP8B0ZTiExO5pUSwMT80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754246394; c=relaxed/simple;
	bh=/1wO4JWfvCGsw48E8GEo7gsUut4fkZQwWiIcfVtagoI=;
	h=To:Subject:From:Message-Id:Date; b=cxZrc6nBL1+uTq0Hmv4MHjykYsQfE4xyLfd8uFCCdr2PvXUjO9KTcwq4sq7ygC+WxQMxsMvYOEvCa6rnayEzmgwwPYiBj3d8Z19gw8Y0mD+MlCYrCDcBbbvMvV5U3O21O5g7EXIl39q8+eTPTJAc65MIOkfKh1KX7Bao8aQMLM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bp80fZb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bp80fZb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E64C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754246393;
	bh=/1wO4JWfvCGsw48E8GEo7gsUut4fkZQwWiIcfVtagoI=;
	h=To:Subject:From:Date:From;
	b=bp80fZb6NSmioZC00LbWAt2ETg04T+eJf5ZVeM4buDXJAxqbKRsOlMonBrNpfUK7v
	 7FKT20B9oZ2JYebNetcXYbRe3b9f9LIOIlupShWHD3Nc0Rwia+tQ7NMV8Yd+etkS4Y
	 bUMU7MhLMJaSdl4fgHiIWzi2wTz5gsybKA4qo+hUu1j9y7YRgHt3zDKjyrGp3r2132
	 fHRDcBJHiQ3lJt2rPfiREaHq7X7mj08NjoPzcl1nI+m2fOws0ne/nLNa4BfOeoiS+j
	 mjmZ2Cqxi9M7yxeqUter0uikXMH+XFU//SoW9ttlU4VvC0WKFfUHvhvYiw9Hh3+Jsx
	 Oy8xc7nUaYmuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9593FC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424639357.25167.13560212762114738477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dac85655a0ee5d25a7dba9c8adb3aa38504b0077f1eaabc8529e1b4d28a2f78
Date: Sun, 03 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754246393
