Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA4A84A3E
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750129194; cv=none; b=JYS6sX2CgWU6nDV/mY8zp79guodPkqXnntF7rK1pZd7aUXLLOyjKBBxoRDBq6uy2h0Oqv9q1m4N0ZduiNH4/4P2hBL4YJ4akm4ZFUhkTjwGaD+fQH3Cx2ef0v+Ar6lhgZQXg5FsX6zlsft/n5CCX02l0AztnAKrdMDaLrfZby+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750129194; c=relaxed/simple;
	bh=X/xzcnALIE1w/nN+PczfeyajLie0bjGiw35PCCy3Tho=;
	h=To:Subject:From:Message-Id:Date; b=qzlJ/qNmcEiWo+sfXly6KrMwgZTmTz1xhVW1YKnHQH8CmDfZLTATac6hftpvDWH8UGJW8kPsGzy0QZDNA2OR0KT0Hyi+Z44mSgatrIQ9+dijHo2t7tIL7Rba0S3bfgtZeTSp3VBrkF4fThFvurx0ahyPoEiFmaf402mubGJonH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwPw0XWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwPw0XWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA633C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750129193;
	bh=X/xzcnALIE1w/nN+PczfeyajLie0bjGiw35PCCy3Tho=;
	h=To:Subject:From:Date:From;
	b=VwPw0XWN/BB+f++jTt4dqH5irfDmu0UJwn59p21o+kFLvuwqW++wW/pSwMN525Z3+
	 OMshAiZCTuczuD9WboI2OfNospLuNJKq4xF+T8FDV8qJ54ef4rq3Y2MAzPUFkn9h4c
	 uNcom7luDuoMwH9exo82XKRpTxYZhHgLm/nFFUpoLVa0nVaXSN5A3YSeEFKPHkn+HU
	 yZAPHKf/u7JKquC/o9SZ7T49sekuWkODPv8Zw0+PrUpX03dlkZheVCcD/PuZgZSMi+
	 JxotMjcfpBzDuAk9jP5rDRoApGtrCb9o07QgsvhxdnKWbkyV17M8RB6kQL05B/gD02
	 t5PAdXU6FlezA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969F5C71159
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012919358.22248.8451945471130882158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0c37af2928d1be1ebb55b943210473cdb19d572b530d2ea5ba5f6d2b444701
Date: Tue, 17 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750129193
