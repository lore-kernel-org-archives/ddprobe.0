Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452201FDD
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748836194; cv=none; b=mz595InGwcNeQ/vMss8Hv5YPIhGq87vnivvBfLlgVFNl/baO51rWimrxVDGy1n17oTsoGtsnWlyfVyPIg9f5UsGVvFYvd3+NAXA5DU+zD5HYo8K2IhkAdVtqyfNqsBcv3PwWXTMoYpL2e9bvHFgOkyx05be3SmdI5VXLn1ixYug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748836194; c=relaxed/simple;
	bh=W54hIY40W6fcEvKKCidUrD9/LKtk3NwvYRjch0eDUqQ=;
	h=To:Subject:From:Message-Id:Date; b=jLvlBDoziX0wdZFmWWfp4MJCDSVgFv0+/g5rYx8KLBoXA/sE46biS7CuXrtOtv4XqX0yvuFem+zlokQltU35wQvWlhncI5DChzF7vmwfYeEnluPYmUscEiqJJ3RqG6JY3GPdS1VH+2ICJSWNhBM8lr0XwRCRZGqJBNTFkfA1REQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJSKaISQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJSKaISQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A318CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748836193;
	bh=W54hIY40W6fcEvKKCidUrD9/LKtk3NwvYRjch0eDUqQ=;
	h=To:Subject:From:Date:From;
	b=ZJSKaISQcsL8xZtwqYF3gsS2gDwH4lX1RVdJ2v1tg6b2GUg/W39npHjVjLf80mFOI
	 Qz1E0dUulaLG9Ho0xFyPYCNYanHpPtyvI3+gZJceDtD4P7blX9XZvH6hM4956RKPk5
	 VIHYZtJPP4A8A0nv+v2WTbkUyH4fIO5ePqrhgA1+uOun/SKTnUlKiilPsCW19J2l2A
	 2Io20SO7Rs3pOsssN6sAbZXNkYZOJOTr3wSU3JLx0SFRyEB6PH+ALT9QkH8iw/o5TV
	 oXqVsl2BgmqZdn1AGWp2FAD/P/uTN87CtopShq+JC72yZ4pql6AhAZmAufMruyM5nC
	 lRHA8yGQh7T+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3DC5B543
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883619358.17343.3078130743861395914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002663c43bc252791a9f2d73fe149567bffb798bc2cad3ceecde245783c94556
Date: Mon, 02 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748836193
