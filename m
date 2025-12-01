Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAFA19258E
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764556374; cv=none; b=TlDFyUddM+HOrRDDzzQQXhRcw8VDu0UWce2KWspHjsoZnU3wx2dkeJ+cO8QCJY7vnxFtoqbGqo8o3m4OI5z+dwSQNgZEmjyINqWpqJ9X2f1rdU2pPWQQ8m1aI6UmQGupWOiOavZCb/E1PqFF52LMe8weDewPlRxz7jvLgyp2kOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764556374; c=relaxed/simple;
	bh=HweR2YjcCv3WihfvPYKJG4NdIZlvAU08n8vePYGvpLY=;
	h=To:Subject:From:Message-Id:Date; b=ShXwX1L6PDuv+Mv5yviv/kUS9tWZ8MWFcPOW91VtPEzDeLzgwlzSrH3i9MrHK3l045Rqc+oHppOwkmTJu58ZOHjkxXm0uNeTVnvTp5Gk/SfNPexHHb/B0/LYNy0w+/Ump2HMrz/kbAksz47ek7+3JtBY1GcmXNKdDnAT7FdARBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKfQg6k7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKfQg6k7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAE0C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764556373;
	bh=HweR2YjcCv3WihfvPYKJG4NdIZlvAU08n8vePYGvpLY=;
	h=To:Subject:From:Date:From;
	b=EKfQg6k7iIk6jRKzci4tYBGZEKlXc6fx9NP6h3i+ynyOjKl3BEyoRrmbvw7ypQhxW
	 76auQZuiMTZ5ba6FZZVIp+kIkCFUW5uyVUK414yOBJ6e4LGT+vJr6A/xQrRJ07tV5/
	 dkIqam9VFbbjWvRpzzLf2VJy2xYkAlHsTnjiO6mONKKEHMRSyxC/AkJkEUOJTn/gu4
	 d1BZF9PcMcSnaiL+E+uvealMnoYDTCT7gdsSCitEjsKLrQdgo2874NjoxtshL/7APc
	 0fMkt8p7tmjeYc4WR0sPquon/zvJG/3EwqycJWy8buAsSIxZyehoPakBszw+BEl6ij
	 bopW/x18rh3tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986DDD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455637360.14015.17581292939721718627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8f2881aa887d3989becbbe2078b2c4c767ed70797f5eaf88a64f7c2ed53857
Date: Mon, 01 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764556373
