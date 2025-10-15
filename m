Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B53532548C
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760552994; cv=none; b=oCPIX7Gr9K/h1FFJ+wD0hZsA1gVCW5DTzFPJyx97u8MaflXsN7CFYJWcxC1nbscEyX9sxv/d3rKxTCpD53cSjfOp2PG1ZQpyZx2ctQYhfJUDHyl2oUdtJ6TtZKt0cnhj4FQzq/BkEq3TpHHLklTws+Dk2bfkkoRjxC5/j7y+zJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760552994; c=relaxed/simple;
	bh=ij/q9OPoZLDpOejIKk7mxYHzgw+FYmXM885Zq0BiiC0=;
	h=To:Subject:From:Message-Id:Date; b=PF01vLDea5K1OrvxXKQi7LtQ/WOvW+irZBkbwhzVZa9cBIPExcenhdVJN2oQmDGWRrn8VH786vXTD/VIcGtVpMa79QxO5CYiTmFUdc2eqUWTIpp3GX7SLg0az+3Smt7xoQL1d+4kPSD2E5S9rrKpfbUTuPJTG+q/Z0Qd2MPN41M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXcSvqeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXcSvqeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2697C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760552993;
	bh=ij/q9OPoZLDpOejIKk7mxYHzgw+FYmXM885Zq0BiiC0=;
	h=To:Subject:From:Date:From;
	b=RXcSvqeHB0skNVLtxvv4akzFdGHdocG0p87004VS3rxrYmgplkRrKNJ7mKblimQ07
	 pCJ7hWjDRnBS2n+YiIA3J80QzaW+bKhu/XFHqwQ1ghh8kee+LyQN7EzZHnzU8EB/+X
	 jQA8GAyw0uMnOGiqHjYoQT9BHPsdRTjktGx8x3dArL+AB7T8HcvweUTct2cMXb6ilm
	 q8q9rRmxvMr0UJcvWJvRPeLj6ryyLBtcDVKE5elmTrI/g0FQvjVKksU6fXBMnpBdvN
	 4Ur+GFrL+rWmLKUsiJlUBiQ5A07DRfvzPDQdJ9FSd9j0hzmTJ1S25JrdljTWt+kniw
	 MqjoUyhmEFJWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90203CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055299358.28487.15191885959182293890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f1eaf5c4532dcab9fcc36ee98bcb4577b56b931a78122053e1351c1b3ed283
Date: Wed, 15 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760552993
