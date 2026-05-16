Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEAE34CFCA
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778959834; cv=none; b=KtIQzuBz5icPfCCX0H59niPIovjztkekecZp9GvaEg+jdJSGcjS4aVHrblyTB0tml+cZRucak87sqBgsSGounh6cDJxWmrDa++Xay3Q3EefBWFHLyJm9GyO8tnMXYaxV3toEatr/ttjk8r567m5UWT85p9SmuDBdoSZ/CFpfjRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778959834; c=relaxed/simple;
	bh=PUCT6oBH6cNlu0yxxOEwqxmAd0CKBRH3LzxvyPRyGFI=;
	h=To:Subject:From:Message-Id:Date; b=V4p0ipDgoTCslrPvZ7Cq1ZXVXYjvlSqqGG5rdI9LeqPTDzq4u7wCtTRA7erEJ9/NPIIOzrcQmHIp2O8eA0HwuVB8CbhXMhS/8nPGBRxwo7qgZnXurznubKXzZwQ2UH/aujVj0m1QBNbcF9OQHSOEe/Jqu+FqvGNX1SMjcNVGgY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WONXqZgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WONXqZgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E4EC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778959833;
	bh=PUCT6oBH6cNlu0yxxOEwqxmAd0CKBRH3LzxvyPRyGFI=;
	h=To:Subject:From:Date:From;
	b=WONXqZghCbR50neJGSZBEfeQfQyTv2sNaReFZs73CQajz7rQ5jYEDa9roUJ189S6r
	 vjf6QQ6L8YuPlEaumQ3oV1YXTLA0+phh2z+u4wX3g3bvsbKawYMnbWW69ZoHiXvx8F
	 2jz2xFSdRXGKo0VS7IVpq2YkUac8uHfJOzi5NeN/AK6MGZFRJRZK9EIYS0r4dYmH12
	 H0ER7KH11X9pnNzuK2oCtyhZUhNrVDZvItrEKc27JIWK2OwbeRa//3wyQ2M4vWceG/
	 /c0C/0dfVp70b5i1J3PgErXP53307XSn4ShQPFRHxIVd5UgxbCyHF5Hv4BjHf5tbDV
	 iD2K9hyoZLrMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA384CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895983368.28263.4090185282908572902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b477f6bdcd0e0b9e13526a7fc7acb7a3d1f32cd27b3f31d4bce47b769f496608
Date: Sat, 16 May 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778959833
