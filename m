Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449A5197A67
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737368154; cv=none; b=uc0PRF3JMYCavsxvWKtv44JA9oNoB3gqLZlzxfI8H6dP0zHjocEk9xH1n2MUer/7uokVfuSO2z1yu9yvyM6R4UpHAgCr49Ghl3pxrMvj4dtlNO4mIdejjdKCx7e+q7T4oehYUgQ3bX4wr5KTS9fc3ioEr6vKWC4zbR8n4zZSSAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737368154; c=relaxed/simple;
	bh=Pd9zJ5cKUAnzy3MZOQZANci+Ypna/qtuJBl7GJIUvK4=;
	h=To:Subject:From:Message-Id:Date; b=EmX1f878HQCjDLOjSkjbsJCQzYl4hPKWLmzEiJL9psaeiQNGRNiVS7pmuCIhxnyEkGNAQQtQGsX1mX2xW8BKTRjZNEeLq3gvQv0GvSWei+tUZl3J/fAccyYYYyrimT7ndQweRIjp0WqRULRzMQnJD8X8bPreaUqsx7c3mmTdhdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knfQg66w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knfQg66w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FF6C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737368153;
	bh=Pd9zJ5cKUAnzy3MZOQZANci+Ypna/qtuJBl7GJIUvK4=;
	h=To:Subject:From:Date:From;
	b=knfQg66wzEQTnNBnqdgrAmXKs9gdpPLEKU3WZNhizlUgPOBuN7F5FkmQhxwAGIArX
	 rbcG4q6LkOSkMWNtjTToDAQz7oJmyIMEi16iwfa2sN6CR9Nd4WTmknkvmQ2naAZ2T/
	 QbQYM0jV8W+8qKPWl5AafaWBvwGsQsFXSPpjBZDi9tfIXAqpymws+9g3od/f1HFbyA
	 PeSbZjMnoJV94VEyG+5jidqiwpPy+DIIxmdLSLgcTB+vMbeDBdD/uIEIbgox6b+zGO
	 G5kGUV87h7S9DaTrYHjQCgtScaT0n5cs0XU9UJOr5v82jKNq01Fgug85cgy06lW3xq
	 uqvTPIT6t3CuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E17C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736815364.15022.3172924446673925217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b784e135ea6ac0e235b296b931c40ff6d9a4b97b35828b24ddb5f0eca854766
Date: Mon, 20 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737368153
