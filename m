Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1183D60
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 03:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718420903; cv=none; b=SmNVTk3FfQQbNHsxP8t4mbdicuNScfdDWH7b33+pctncREWxrOLTdurgKZNXK8fRQzFYeXYVZgiA8k1T3XaZvUMTr4gajAjaD0vou/7DIRxyKFDC0rZg/HOkJXxX2FzbbRwZJyqm966esbywOQX5puQjUWArnhHErL/lHequZJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718420903; c=relaxed/simple;
	bh=uO8t/A8FOdwsIKozTScCs62e/PiDpChqwcWvFz7L9ks=;
	h=To:Subject:From:Message-Id:Date; b=GGOZ4l805Oq98hLqCdke2OQms93RMqdKRQuWkNXb1TCPb36bb7ZYWEUFSYpTwABVxDjpJAIFLzNtLXEJlssm2TT9P3DPhHGf2hsx4j15CoT5sN0o6HE1Ya5JRt2dl8OI2mrQR7UMn9JduGvBgSJKkOCNosqyOmBkEGNZoyRjepU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZ+99cEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZ+99cEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0A7C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 03:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718420902;
	bh=uO8t/A8FOdwsIKozTScCs62e/PiDpChqwcWvFz7L9ks=;
	h=To:Subject:From:Date:From;
	b=MZ+99cEJU+NnVvrfRxTu8In7L9Wht4hnyB39R7vsNE2tib40lJRWMWpdu8MK+01Gw
	 Utxklpaki2mD2PYmuUi72+EymxhE6nferZMqq6IIxxbuBadmK/B5e+hm3M6LnZMRho
	 RmFL8hNYatbt7AEiEen3v9UhJCbHBJGpIeXetkXj/FpDrcyx2s4W5K/OEP8sjBmAP2
	 MkxWVh4bpB4PIECo+Hr4J4Ke3ngdWaBG9O8Xi58w2lDKjm8dophbiYs5Mh84BEDrkv
	 de0hS2YppMX/59vLm8Mbc3uIvXNKfGmAlWlzWrVWxCAgQVTu7kTrNMFhwHutjkfUZ2
	 WCLQe7dB5r6mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FE7C27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 03:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171842090278.31239.9614131973383808048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc0dc28b3e4066e14436734d76d106e56fde52e3fdc54eaf28ed2a2bff0eb99
Date: Sat, 15 Jun 2024 03:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718420902
