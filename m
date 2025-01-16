Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F86B1DE4C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737033954; cv=none; b=AGBYQ9X+vAWXSEgNc7AC380oWbaGy9b+BQTTBOc5IlprxCXNDhr8DhbAGV4N0XrIRe4IwPDJr9+UbAPzUQm9Vw6mkx6VNqcn76J0IUNPP36eLcfr1647wxs2gsPRxW+mKcYN/64antmqOgKmuCrcZsd/a2YKWNW8nPk/yeAUi1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737033954; c=relaxed/simple;
	bh=f8pFFlivb9cbpdfqrrgbbxFTr50BAHfiy7L49qzYF1A=;
	h=To:Subject:From:Message-Id:Date; b=QtxGP9w9qCv+ut+KL65L5ByyCSK6uYwCnqM3g2zDjWBd5OYgA/j/2AQapIkHpYQvR5cRMhQfLRF6A5im0n5Y12dLuw7YfPAvJ6+qDGWYXv/rNsV5GfIPPFpdckA4HQZYQVdUuYGowM1BjA1aE1mPvlMB8qc1yigCxoO1phb2p7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xs0c/saE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xs0c/saE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96ADC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737033953;
	bh=f8pFFlivb9cbpdfqrrgbbxFTr50BAHfiy7L49qzYF1A=;
	h=To:Subject:From:Date:From;
	b=Xs0c/saEAGHeQ2PJNXraw8tXrMFpJsIo2Q3vYHwrlEfQFUJ7SCtRNPU6/8i2OVlyf
	 pPIpMa606EAI5Fh4c64O8syOQuD7oRgFivMwcc1YHMFDUjlghVY00lXERQhd5SY85n
	 TSv3F2MsYPJAqWL6OmSviCnllONpgxTaOIjBSQpVGrDetzCFoggJRj4t5WXggKo1ib
	 BxZn9addWb9jDY7qUcpBx86jh/WpyAk7PhVYuP2663XgrnWhjG+rqXZxdImG7hV0Gd
	 9/Mu4wIrp42Z5259N8soTuuIEGCJ9hYhEBUNJ5ktVPcyV6wbavTVs/EnOQd2+Fs/Ya
	 WVD72W6uF2eMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96349C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173703395357.12293.13988027939203216736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a75ffc04d2f18c2bb63e0de9be5b67f7b2cf6ccfc92e322783e424edd37c31
Date: Thu, 16 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737033953
