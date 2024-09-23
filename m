Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261BA15D1
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727051154; cv=none; b=b0kf7Vp6cfJCPhsNTofytZ7doo5uVb0SMa5gloRjsoxVnEIO2GYAkOwqXfZ4JkTtRlqUUwtxwdwCQq9XPE2NMcj3LvvtYu/4PX2ClMafJjzxbSFIGNjg4lUnwDF7lXjDXNhOW4l/bISQVheMR5E4n/MvMLJP/e/Qwib6UmkOgqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727051154; c=relaxed/simple;
	bh=QBEjHsfsmHg3PPZVQJcTJMghf7Pq5buDtReKRhT9H0U=;
	h=To:Subject:From:Message-Id:Date; b=jd/UQUZ3b04ooJvD54+V6jFb4/5AoK1MKE9lc/mFt06ifVfqEWSjcS2TUl2cJlLWJhhc5HXn81ixR9LdQb5tWgCtjOA5NjqVO7qNSKG0zeCXGmsKT7EI54yLBeANk2Wt8ThxjrHdTvsmiAJo5fstJH0mgTkMdI/73LLRURXowU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hk/Hv67+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hk/Hv67+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A6FC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727051153;
	bh=QBEjHsfsmHg3PPZVQJcTJMghf7Pq5buDtReKRhT9H0U=;
	h=To:Subject:From:Date:From;
	b=Hk/Hv67+Axm1I6kDOhEQ2OwChjSdVekDCWLrndqfxNLwWSDfVnFXSQrJF6+gcwcCn
	 5E7311U+VWW2lruMolPek+QHQudMDfR7aoXoDott+O2fx5S3ioKs/1jp4o6uugKVK7
	 LU/E4U53xuZTQWxDlKwZIZ57QtXirjscxcBzg4loxuoeBx8KOl3XLw/1p0t26RZbgn
	 Sx5GZ4kzoZwVXQeQTyjP8p3kUuL+EURqEFsHR5p39yV7E43VVx1ETRlK0ufxGQ4nIP
	 A9sf0R/qd1x6aM7WBAEbJaKrxffUDy5by04IWBciDi7QJdqbYflHrgqIGHCO2ch5vk
	 zHsCLL2DW/QPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCF1CF9C68
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172705115362.28479.364524060477922127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a446aa326bcef54cf8f0ae46b1839d649f3055e170c5be1fdf8557f1ff6b86e0
Date: Mon, 23 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727051153
