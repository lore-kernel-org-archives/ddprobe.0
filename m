Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E39A1FD4
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767548634; cv=none; b=DcuayYn1kQlo0bRVhGkVplUMZ0XUq5Abpbmw6w4HA0FC8NgFcQ11EZzOhyXltPYcifVitE573YTxHN1nLY49SGtISEmK2iIGPpOcWIL3bYylEba903AeIJcaVfF1tSwsyI7MZBMjYUAxaZ45HuLPLj6Bb0TujBtX0dZuL2mJhvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767548634; c=relaxed/simple;
	bh=SZH8g6mkBDv/3ehgF9nnHK7uqzxOyx62ZdTnv2kWvYo=;
	h=To:Subject:From:Message-Id:Date; b=qwuxiDwo99vdu/ccITjGG55JlnDh0bq/AcZtsn730GsrpGoCP5Z2fg4gqVbhQ18mUlzfc0A67UrnlZgUDzORZLZ725fjjFksWWadUbYF9JBf2zfcyuGZIIhLIcevuBLRrjFTvoKM7XBRbx3N9iPPtdIW3M7M7BbFVSDTh0JGtP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEGNROXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEGNROXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17FCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767548633;
	bh=SZH8g6mkBDv/3ehgF9nnHK7uqzxOyx62ZdTnv2kWvYo=;
	h=To:Subject:From:Date:From;
	b=XEGNROXniUDBrel7YUAkYITaO6EY3viKjVK4txPm5wJjMUZO3/LL1xgx1pWUNK9Xp
	 lsjH91TCgw3zH0RckB18ZrNGRwFfMd90pqWCuG9n/zkNd5iF4QP2inssyN1uHuDoVN
	 sJcKlHYavJvCBwphdyMd0xBX//Ip9+NgzxOCzv0656H2tp4lFrt3xuhh7S6KVSI4Mz
	 S0bgd2nSyFMg5T+bD62iq42kYblPOZjM8AuHwQvygw7m59UGmMDrogZDaJi62Xsfao
	 5nf62/T9YPLslTcO375V1zHMGh+TM+ADiNkW07e6FBannXumaz34cR/211vEMZaCth
	 sYctd8YC6ajbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D1DC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754863357.19938.16296788560997230485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9326ec76be8caf165ee64a18828f81c8c4f008cf8cced538e6819503e38ecbd
Date: Sun, 04 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767548633
