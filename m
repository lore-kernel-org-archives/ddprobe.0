Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5498BFC
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711807697; cv=none; b=iHcAO9dMrA1fgMWHPeqVlWE+k1nKHdUJVRoi3Jkt2If6o2Sxk2ZCvaPkJHt9KxAVkSJ6aFJsPYxXJbMaWat1C97giXGTBew3EklguNB6kBB5DqfaJ+D4YLka/rD12ln031/B94GPjv7+8mGJypCrvzNz8dO6mfacCODJpF6VO5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711807697; c=relaxed/simple;
	bh=LrN1xiebqdOoOM7/5hHYfQuzugM8yfNW7zGb6DnQWMk=;
	h=To:Subject:From:Message-Id:Date; b=WtdI8BRzCl8L11uVSsTlImqP2SmT6+4K2CG801xGk1W0KUK/cWZw9NDCe0xFYOyE7OXP1u2ufC5pSnkhbwfEmFKv34vt2bUF/3IafD23ag1sUoZBG08wXMqjId1KoE5hSYKWpclme2Mn+Cd1Wa7L3yvczcSJHLlnB84TjDu94WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mR96FSqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mR96FSqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784C7C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711807696;
	bh=LrN1xiebqdOoOM7/5hHYfQuzugM8yfNW7zGb6DnQWMk=;
	h=To:Subject:From:Date:From;
	b=mR96FSqu+5UkOjhvl4QOrZt6uiveH5AWjQmL0UFZA86MgPare7tUW4paifagvKgmr
	 skd8RgBC79ukcRn6Hz4njKwmkfDMtRc4xiLNqmsvVIo1t2j9R+01Gs8qgOpb11Pdre
	 VdYU8v9jxREnh2EMAMKKx9N9gQCLM7F4x/CMbk8IS1PsVlTPGozwc6IY/QounaZwSC
	 18+nO3dgFt80bk2WbDKCNZ4kABpPJ0mrQQT9V/mzDgPi1gzKxq7CKkfcofDoXHVxTd
	 CTRrKqcGeBQ+NIR7j7kcZU2tTLqW415/2Hma485ZmNTE4slKLDzcoI7d5PAm6Qkuws
	 tTdJRKVBw4YWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65278C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171180769640.18237.8589027639973458512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeabe185b5ee05e5a8f97fa9f3256e52a4fafea74e793c01d0114a04bfc8f189
Date: Sat, 30 Mar 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711807696
