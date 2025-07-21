Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A52B2877F4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753107594; cv=none; b=TPkZp8u3XA2sFlmMywsOjWUueHY0CQ1SqIDwCssGh8+adDjFyvg/TTyBK54qrXpiH+VQvMCxUZA3AVOeF4IKyaIh/5wLx+hNGd5ulnraw4tOL/9oALmveSEEdOxsnH+wJr1iDRcS0lqOFgPCOzRasy9DcSD8d0JsshC0Z78clgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753107594; c=relaxed/simple;
	bh=yrLcJEExMVgSXk1iVGUDEej6i8QZTyNLfUGc7cMG5gQ=;
	h=To:Subject:From:Message-Id:Date; b=uuMuPYXuDNSdvNVVGTWBu69Paqq21B+dmr4+b9YR2fS0FKX9L9Q4ZCMR9GBbdeJPpXyMJJwjaObVUNVHoi2+txj/FTPOACLPFoSlc5Z6PViZHG9Vx1TwRsgaOvvGymAmufEA08utI7BEqzNCimzcFXeZoYdr3OfKBKwxnRQTi2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gViCVB1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gViCVB1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AB1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753107593;
	bh=yrLcJEExMVgSXk1iVGUDEej6i8QZTyNLfUGc7cMG5gQ=;
	h=To:Subject:From:Date:From;
	b=gViCVB1O1DL24LJl6unIRVh3K1yOgEz3LHb+X1IItr8/GBb80C8kujggehAN2RiaD
	 WKh1SMQ4bBf5e6U+waLT07ArBrl6TDdsuT/GdrwX/xG64GIKzyQPKrTFfSYETU2Y4r
	 gLvWzCjg7PZL3pXreR7P3Zb3pOQ6Z5zaZiKzUu5gtFOwDbflmn9H+IWFIukEk220tC
	 9bnmZ29fDG7o0Qv2p8Q3OAZH6rBRSXkVwBt+7wWIvT+rWa3OQ1heeyZv2cHbUTRpDQ
	 VjuhBq3sF87uc01PxCwSqv2mG0+kTa+0sQsUvrOz6lF3TSIviv07Ianzo9BPueSWcp
	 4GmfEddKhK29A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC65C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310759357.10464.3665009869573276021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b31ab8c401844628f30b615e34fdf6eec934de4eeef4cd9273dd0291f3bedb
Date: Mon, 21 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753107593
