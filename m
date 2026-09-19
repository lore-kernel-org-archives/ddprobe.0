Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526E41F938
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789821034; cv=none; b=aZMSv2X9ODN+SjLd2ruC0MsxHjNS5hWOmBJv+f8QMa6BEjznzI2fp4TaVqFsgR+lmVCFInuFyIhyfKo+KqOeSpD5/yEc2UUwsK6TDaQTWABDsPjr8txjsf0p+/uxpbzcr6FG0dVuKm5RApzJP29DlnL8ef9iFWJ2Ah7kfG4YXSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789821034; c=relaxed/simple;
	bh=dbWbdIj0mIO6lJxPiNTwk+S7PaiyvTx4871TvTts/E8=;
	h=To:Subject:From:Message-Id:Date; b=rycnMHQFcTqK9aDp32dISanHkgzPBe+AFLx4ZLr1UG2+KIR5qFXkZoHsgb5SlnoSzn1Fy+4kDJmniTwjK4yMLVvugDpLLETE0xRCy14+ymfNx6Q8DOooWF8ggsffXrw9kx2TA2zuBym+XQkVLa8x/05NnvnbCtLFiNrakqrjx9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAfbJGaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAfbJGaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D729CC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789821033;
	bh=dbWbdIj0mIO6lJxPiNTwk+S7PaiyvTx4871TvTts/E8=;
	h=To:Subject:From:Date:From;
	b=kAfbJGaYsUgTZEmMW5SljOVclWYp0OjuAF1kjziGSgwurOBa3o6JXjkxs09KFD2xl
	 NqOp1xjeQckRjAf6F5RTlDV8sd2ky4dkbZa9YgxwwC1KhgHhN/ieyFJBOye4MqI91K
	 ctHpth8sk4NaAS5Wx7dPlWBo4swp+mlKdgYN11cdNCSD2TEuieCQjUzDU0Vk2G/A9I
	 RAmO3RV521gwQhjBPKqZxKLQyiXOqMwqNlkZ6eAG0iBSYMQ6jc1Zbx6Petz+Ktv6Gu
	 nNzeTulbZzbsrHjtEKhdKYM82rdxL/oLM5v/DOoYUuW5OisIwaD4ANuv5ee6R4frnw
	 Hq84XU82Vjo0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB351C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982103369.21168.11810942759212995205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a28744bbb5be2c8c212b9050ac07c332d4b47eee8ab81b2f81432dd948588fe
Date: Sat, 19 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789821033
