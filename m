Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587D714900E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719306803; cv=none; b=VbCLmCrD+pwhMjDt4VxOQQInqlDS6xmJYvpnJE6LjUEyvaGmJ+YyIL329JSnTpg/zf5SNRWAy0yugckJ4wnrh1BBotxq6aC1jFAKGyMr4EtWkH5QQv2SY1yk6amiMGs0ZAkU+zfiFPNaFwfk6eZlpseoUiupg2j4LvZ0JJpAVi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719306803; c=relaxed/simple;
	bh=ZK3EzKeF0/DHPaYgs7D6Vs8srL8m0a+BD2nLFwUcPQo=;
	h=To:Subject:From:Message-Id:Date; b=WJjwqUh1/vlcnnn4lhfYJbgKiGG5F9UoWveZ/AujymEwmYWXM/XvSJZX0fPBUAmEcJ6TR4/2SsO/DlRKSMMwOx9jQxA/pPbIE7B294XYzPmG76VjAIWfZrjGsX8tXXg8zYW/elav8uJSjHbeuRtTNXgWd1f2OWN4BL4GEv1f9XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHuk57si; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHuk57si"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D4DC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719306802;
	bh=ZK3EzKeF0/DHPaYgs7D6Vs8srL8m0a+BD2nLFwUcPQo=;
	h=To:Subject:From:Date:From;
	b=mHuk57siK7r7Z0FNKuxRH3Ttm6GL6mRZTbzK9xxHzdZLldEn6Xf2SbSQNh3LAJu/j
	 nLoRSEhJ5eDyq1MRfZBt/k8hCUmLcDEa5P8pCfPso+MjVZoRAzshktyZone7LQdDA2
	 8bSC9t/cx0wlgpQctpKzWVdPgG2LNUDz1DOJbU4R6EI4ZaKehI8D/qPL40EkfliFFy
	 XDaFOOYJMGoKy4X90KyXusB2qY/WeRW9kw1HbsidSGIpg77VIWFpWpKuzvUNy1L7Kb
	 IE3TEF1PUevNUK6uCt3RJXSzn8zxkObXe3JEp9jtd8Nqu/EPxwUUgWVWcj5V0rddgV
	 J4H4JDtojsmzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C301CC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930680278.13362.6759738266589847115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2feec697619c33082235cf38a96b0ae06fce155c91f157e3aa66db1b64f8ba2a
Date: Tue, 25 Jun 2024 09:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719306802
