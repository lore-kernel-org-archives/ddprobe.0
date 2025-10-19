Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6DA3F9FB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760907595; cv=none; b=J3da6xCGz9ZvYy5yAC4Bdd49WMNfuDZ8LP1gtuyMCZMcyiaybvljxiu0O2QXGV0mfQAtF2hCxOgVvCAt/flbDMFIDjM24xDQlrhsjSOD1zWYXC9gjVBsBvVGaf34xKnt+FM8ymLvOnAbdXj7/Gx4wrA5LZq+AFbxE0aFxmViaGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760907595; c=relaxed/simple;
	bh=nBYY4KsU6bQFWsZ38s/NY+QOMNQizKwWugoSAG9pMA8=;
	h=To:Subject:From:Message-Id:Date; b=nhWsphU6zBZt8MTOsjBC9xIEUcuoqgiJsKolml4BM+QzTEooqGejaEINXgFJc76vH5Q1St7j/9/O3K1El1LZj7CIiHree0sVwGb8LJC7WNN/5Hn/9yLCsOjsRtquJBotFHrBTCmBFWbvrBbwkjOQ7/ir7Y8D5n485feSuckHbMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIrzqu8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIrzqu8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45BEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760907593;
	bh=nBYY4KsU6bQFWsZ38s/NY+QOMNQizKwWugoSAG9pMA8=;
	h=To:Subject:From:Date:From;
	b=OIrzqu8ZZCx6ZzAvgOqarvVwkaR8uSwgjmuw1Lumkxe4ErxsFGpMMYpWncWH+IHLe
	 Twjhvvei1vcXdTdNpDiNsNBoNHlOyGP2PM/H9IvgcXnIKVw08rIg0EL+WzIQWSsoSL
	 pccqlGZx2ylYE0eESNOkKf2SvoUEj5O11m7gXtUakvKwZhck556qfkRE/F66XkgTtu
	 XRtPnelM/8wzy2a78/4+hU9yDr+f+RQjfv7SMhJDG3+8aFCBIjSEYb+FBmG26XMa+k
	 GhK6SqZWlNCkeeb78mThFD9EKH5dCIZKhNvoEpEZvNwrezHJuuI7ISvBZyJcs2LBTI
	 tT6Uuck2OTW1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8BBCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090759357.10174.9149285108184720145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f076f8684efd0e97f413f031c2b6cab3a3be776decf7875cf83b6929d5c336
Date: Sun, 19 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760907593
