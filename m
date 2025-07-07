Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F74218E99
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751879394; cv=none; b=A3cKG+lG1PxfPNgLZO3lm9XspZ5RmiZclJBeS6pcuVrOliqlym/xH+aI/3qSZ//9PQIVluZM0DzclQMHFRRGZOGBJK+e9gIwhElc6sC8cDUk0K0X9NzcwOaUoTC2AgL1DSzmfTfJfMVJESE9zt2UYdda22QsmFFW7MfewR2cuXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751879394; c=relaxed/simple;
	bh=heHIdBu8dp9J0VhPZKgWOEozEoDk2wY2IRaqcBtmGRQ=;
	h=To:Subject:From:Message-Id:Date; b=lWQCS4VluRWp7r1xUNBaKEr8cwYWRfM7lr5kLt8XdBwoKzVYblr+Dbu3q9838TLISRGCkJNGurPD3zf++VKG3zuVyaBu8TpiXQ0jp2CI1WABpS/MTNnlpw5XUm7jv9Q6Q4+JTZiv8K+2AaHMhnfGQRJmA0wE+n4sfemHWPEjY54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUsywWxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUsywWxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AE4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751879393;
	bh=heHIdBu8dp9J0VhPZKgWOEozEoDk2wY2IRaqcBtmGRQ=;
	h=To:Subject:From:Date:From;
	b=LUsywWxjk38N8NqhOGYIjw/Z5Xag+jHg/y2eykh++3CcKPbBv1fTegqzTcSYFhXCx
	 2c7NfinyOeb/yh5lwl5tRMc2lVl8ZbLXPinPYQcTpFDEYK9BcDYlYuk6dQHOgMWG4p
	 w8EWT2o6GjSJcgVLyDqeWzJSRNU5MJLFlUmzkHLJe9ABSoD16XkQLc3qNj4vLirKDQ
	 oOGW/aI+CRQGwAUrVxUNrIqdp3mUBuXYfarkHAE8eIKS6wJL+v7IhXuyKz/5YfipLk
	 WG8hH+yhYJOVWNhYgnxOQGijE+BF3b79nvM4MBZjq5YUBe8RxjtMVld+VL98FS9nWP
	 06WbInsMjphwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95491C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187939360.28531.13081828030087636009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2ff18285dcee31f5bda128a140565a0447b403828bf152593167107a55b8e6
Date: Mon, 07 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751879393
