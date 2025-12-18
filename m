Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194CA2147FB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766047434; cv=none; b=kr60xavregKloJkDfvmwiWkNsPwR2L79/nSn+cTtf8bknHwfIKRigSpXd5NGQLQwjH7//jKcVqgYKrWOWhR5+qstqhJQxm0rz7YzYJ7A9MqTIUY3o1HvBSl7ExP82ybPbFJ7yN3qcrF6hjrL6HShm29fO/q5zh6O1Zqgytzc/HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766047434; c=relaxed/simple;
	bh=mqLL+HNEykb4eTHEePUP6L34uw1cff89kY7weY8J2AU=;
	h=To:Subject:From:Message-Id:Date; b=Yadd/6Z6QCn6doM6u32Tso1ANnko9jdqcdovbz2SHxmb86gQI4po//q2w5qSzYLBkxYNjhudaW9ImKpxQiife6dM4kxDNYMnlLrIRnCdlNIGNGFOZiEUWR1qujv62E2DAdtn18gdHDkfVBgwD2s1M9kiOpKqFQJ+LP+WhCndogM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suFuUUVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suFuUUVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E44C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766047433;
	bh=mqLL+HNEykb4eTHEePUP6L34uw1cff89kY7weY8J2AU=;
	h=To:Subject:From:Date:From;
	b=suFuUUVaKToxVGSBgfSa52owTBZCARPIaQIKw36hv6C9ugB9xtMGZUPwIE9BP/mqk
	 qALmjEpfMjUU5vlXMjIO62nY2CYr7cofiYVy3Agxhe/ogarW8m7YHIUidnz0BwMBaH
	 tfeu2CooolgBSC2eSJrRGBeNS2QFScyQxo57cetx/43wpJgSzLPfiIBQJ8FXSsnsJl
	 dniIK5009ZFkwalL63bEcUHt5W5XFr79mCkzudStGYhEOARL70DsnfDwLQ5hT4tgF1
	 cCMMo6skwYay4GcjSRseF6YZItDJ3c90S/qhTZ30b8/Ud3qRoD0ewJWiDBN+vKeznY
	 RuRXgcj6xnFJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064DD68BEE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604743358.16809.12145000175846667055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf763e9f9eb7b7627d1dd7554901ad6ba5013473b4c8e8b150121260aec10e2
Date: Thu, 18 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766047433
