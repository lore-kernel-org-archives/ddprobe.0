Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A33D37D13F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765967034; cv=none; b=Gw5n43F6h0TsVS+NtVMrkOh7FESsZn+73UY7hjlxtjirA3JS87qb0DY2Oax3YzdPHvfMdrQ1k+PHZiGlO1wPJS2IjDfgfkFW2nfo96nfP9ty71NVDr8bUm4SfOg6aYo4nM41s/sJ7QXqCm7koTkXxpNlMvQgMN4XTMNDlEaOGvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765967034; c=relaxed/simple;
	bh=lEW3Gj/cTfKBNCdPkwiwK1TKAF7m9BUi9PFDABWcAWA=;
	h=To:Subject:From:Message-Id:Date; b=eL46ouKL7AxmyiDvulZ3pkP71B2CryW+zYp6VZjFaqALKorVrLL71NqoT1Ezt4WEe//p4EJAK5srHQg/Xgzq/pKZQako7dupHvPeVjxgIhL7t64lg2U5CnC4tAUUo9u/3CKq8khEBNCpW2hOh+Ge8Y77XQo8+1JjPdo5beGqzn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKmXmoML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKmXmoML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A665AC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765967033;
	bh=lEW3Gj/cTfKBNCdPkwiwK1TKAF7m9BUi9PFDABWcAWA=;
	h=To:Subject:From:Date:From;
	b=VKmXmoMLWi/lRiyxF2cW/lV4E/mEo27A8+ZrXyiFveZEpuILzLiKgE7KUR3MlcjtX
	 DjXKKTlQr8/goFfWNJwCIuptwlQUWJucml4V8KZe0TicYs8QpxhKSEAE3DisjXlhiY
	 qT5EkU7IAKLD5OAPSUrAxhkD9DULhd7u7QuWjUbEmWY0mIki/b2+AOv1DOBV+XPk+4
	 L3rs9AWrom4uYcs+9kEOLnzfqeWi+ni+nwu6GHWPapDHx0x276PjZYk7BESBMDibZY
	 Ucwq+K2lvBeE2KeXmEr48sjmb/vtdgiMf0HjvasRnqQ41hp0E9cWIfyoLTUv7fbVGH
	 jwOO9fA2E6iOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958F4D6552F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596703358.3686.12307021080563625929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbb69052a9b7715649e7434447a14cf49f2d8e48ec14cbfe8f766d0f6b4ac97
Date: Wed, 17 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765967033
