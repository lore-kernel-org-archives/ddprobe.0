Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4114A252904
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741790334; cv=none; b=I3wpnG9q0eSVJYZ6Km1+K73xFyWSsbXEerDF6okB6j4lcgufc+yz5irWNcTY+dha9LNBOzwm+rdjHpeVynGEHSnR4mFCzp4jVJgYXIa7pLffEpybfDje/KiX/Y0wc59LNvafe/iR4rkMK4I6orqEs9mA2jaxs7eI6rGt2H1TvJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741790334; c=relaxed/simple;
	bh=K3ay+i2iSzQNIoBcvyNp5f5SY68K6nyF+60KVX37XVo=;
	h=To:Subject:From:Message-Id:Date; b=pzLRCe7mWYjhmJE0miR96TYjBeVMv8QFCRUbG2433jxfPgAadGNbtOMITzuYPki4drmkJUCnLLVl9fkRExnbpiAejr2fcxI95I+xDZ0avcNvxIYbccw2s9hc3N2Ggfv46CBxpsVsZWjwPGx3ndxFdpN5u6sIa6fpdp3tSxKgaGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gq8/72nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gq8/72nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92D1C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741790333;
	bh=K3ay+i2iSzQNIoBcvyNp5f5SY68K6nyF+60KVX37XVo=;
	h=To:Subject:From:Date:From;
	b=Gq8/72nmzOMX0if41JKv7ddtERo5Qh3OIsyjGfO7HLD9Xqi1okzLoqSZVHRfCxyIN
	 a/aL2dW7mBgPZKSYUWU+IM+5vfXBBlMzce0I/65L0zfof74eClgs1g+EVGAtpEpt/Y
	 k+UaO4+lq/h+66tJQ8MxVNJw0FzMBzQp+sO2XLu41mpHim22o8AS8K+ibQqxRF4MVa
	 o4OsT46KID/yNh5nyBI6RQ2a71chDGA4N8OjATXKoombCB2uB8JLY9wlf201kD2fCN
	 q/nK9zGexlUmNnPEX9fdwJBH599sDHv8jZuKV+ZdVetuT7nWMNHkBqQ/lQ/SmkiuHS
	 bX+5+nFRVBR6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B7DC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179033361.32517.17039034915492935016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb4e5f95f64e9a6c128d6ae155fba3384458757f86b5f7517f38f204a02cd41
Date: Wed, 12 Mar 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741790333
