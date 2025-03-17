Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439D221D3DF
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742213994; cv=none; b=njL/OQdXFrHiMzuSIPHg3LCQAdJabn6+mEO0/1sc38+wLEEN04EmSt+6n+H7KSIKwak/4ZbxmKvslXXyR5BtQxZriw6KjmaNYDymcEVZmzjeecu73I8z0pdOj4evYwhu90BKHuF6vml4Mv/T1Na9gQnfSTNlZk3L1OLw/mFePOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742213994; c=relaxed/simple;
	bh=DeKBrt7INUtKhZbJNrXmjjpwVcg6zKwdY77mRtpV5oY=;
	h=To:Subject:From:Message-Id:Date; b=ZEIaXsrI8vFrg7IYqOnxPCL8gYfkSDLrA49fG8bOos6sF1T1WuE72Jk/kBdS1Ep7KBHwmvB4v0FZN86gO3RkiALKrKVpYy4nGSAOo4DNmR8IQtAjn/n0GPR7Baq01v269MYV57MJ7NSfS22VJQU1wmVOHmdiUmhS5O7zkMmEVx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJTeuQHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJTeuQHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A913CC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742213993;
	bh=DeKBrt7INUtKhZbJNrXmjjpwVcg6zKwdY77mRtpV5oY=;
	h=To:Subject:From:Date:From;
	b=iJTeuQHpC7IkF7JWbHoMRPdfN0+DnetzbbrjHJ1V0XpJ7LqWxBXNqFkZox4cYYPD/
	 B+cEXd0i6+Ht9WurnkupGAMQaxGxF4f+GcCFspti4JSu3N51RlE2REPYol4oQ+btCi
	 nm4wAADwA0uIJFiXr4C+RuAK+uAIc1TgqduMv3cMviNkn3msEl3OoH1679Dw1baEJi
	 hSgAT7Af1FeFYBek0VpJmwSFVbUdX8Ncb2O8siaNFrPmOZCPZji1K1jkUIsjDRvJav
	 IZjCPSGe6i3u3p3BDz7SwKEJoxoSzMUqvi8Nomt9pC6G808nTPIKqJ5lEUKABZoiT1
	 Zi5jxZ4WU4R3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C21C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174221399358.27532.12148206126713438990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfe2d709080d5bb4b26f2c5b2e5fbac89d8a070af6c6da1aa342aae493eac39
Date: Mon, 17 Mar 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742213993
