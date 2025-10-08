Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8BF23D7DA
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759961394; cv=none; b=VbnC9LrJa1wnmLhhh4yKOL775HjorjLEOk/qrI49m+BMSgT0kbT6sPGGB1SQS3JzpaDXN0aNvnhgS9ifnp4UZZSiAM50bE6KT3jhY8NB4/QN0+lGN1iy4C/s2jZH6Qr44dYFeTtn3qDCsbfsdZOY21TvrC+rFipkG/6erPxHzXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759961394; c=relaxed/simple;
	bh=kqp/sYa2gOFlHCM2JUw8uJRoj5ojIdx34tNwHzsOGSc=;
	h=To:Subject:From:Message-Id:Date; b=TcYLLplY7Px4onU5R2ntI/SDuwQiaSJVXVS/up60kAX/KYIUtC3MTj+uRngD2Xq6uRqEMCGB4jTFvk+XeCRYCKgsB7V6eqcS9DxsShXK1l0SyaAoUO8TandLlGjSqACPBvCzYLth9mLVuIDjWkwwZLPhwoKOCK3b+8ncOm3MqX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mICT0e1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mICT0e1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A365CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759961393;
	bh=kqp/sYa2gOFlHCM2JUw8uJRoj5ojIdx34tNwHzsOGSc=;
	h=To:Subject:From:Date:From;
	b=mICT0e1PnmEOqFWirq3P23GwVcvGXpjLAeSm+LU+STJ52d7+dN0Ey6Owg4IjPZsUj
	 cityayXYd0q8Xr7i7ZNEwpo61cJrPHJyzA4wGjEsA6GSM318UPJu9puXbgVtGHfkT4
	 ZAh18XorfE0twHRwbSM7bmjJjYiyC1CiArMIOcNwYe/K3inbDxU9DObT1bpwoXqB37
	 u128OVQUSj+ujkb9xCiG//zQeSVp8nocyOB050NCFVEoIrBal4Jr39gZdPlVJeyQEY
	 mAIq+F9Ydd0RmsQmxIPbpb39dLQnuARcwC+ny1d3pfBU4SjpJ0/9KMyYfsnjGeQR46
	 82R88vq9Ed2gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E1CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996139359.8115.5785431566092607056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5a3d63dbe087316880f3eac3513f7d0b5821632add239d4dde71bac1553d15
Date: Wed, 08 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759961393
