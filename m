Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333322405ED
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754218794; cv=none; b=WL+n+xnwBgYHkiTF3Rr6yr9Z31FJ/ebGKeoh2cU5NKR4ELBJ1Gg3rTjBkSktRvOn/U8Bw7UOuTM4JB8Uf4s+bTcFJBTnViJJPoiP+iy3/Gry3yD765mlwlz7Go4qrB/A1ywyGPi0KHsvwCAx1a1GeVVvSsRwhntW+SQWAovHb3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754218794; c=relaxed/simple;
	bh=SCU6/kMBTynCyjzsjRT66A1QUGcmasrb95ApqfIAn1s=;
	h=To:Subject:From:Message-Id:Date; b=b6OvQL3vkCC7nElVa9PUrSzGwZIWHWvbB4rbI6aFJ6kqoyRTq+FptgV2s85t5b58454P8vOQ+Y+na89zelICXmUtIBNv9jVKSht8AHYvPVR5kfZJB4qcjuAjnN2hkW6yJue5pUqFHNvnilAGtkLC1NLbcWQtVIgqehZdBcUxwqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwxSeKxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwxSeKxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4108C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754218793;
	bh=SCU6/kMBTynCyjzsjRT66A1QUGcmasrb95ApqfIAn1s=;
	h=To:Subject:From:Date:From;
	b=KwxSeKxGI/Ic0fN531mLx8ZdhCB51Y5UGInEFU4cFCA+1nlvuYW4etNB3oQm+U0yF
	 KDvAbHSXfyIYrgu/QnCYaIOM0XH2CWAjlTC3m1hulfCjvAqpVaojZJuAojMVT2LNc4
	 d28i7HRmfIW4wTCtOWjs/H+o44tWOG6kToa+TpprTftSapMBVlUTO/ni35unaXkITq
	 r1PqhZ/h8Xp8+1qORsRNx2FSo0FDf1RWM2YB807Ddo5LgEt+X+6fd6vym5+HfKoVd6
	 B6qDTNJvHvUBcmR1Hi3qDOTOIO/qCKDx37HGhqb/WBlNy5nnm71g+ujOz41P0+5k22
	 keigQohac7UcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2ED9C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421879364.6312.1456695696619337889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89e77bb6d6d0b862b24e16b26d6da711d55efff2ccc51ff2be776ea5867284c
Date: Sun, 03 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754218793
