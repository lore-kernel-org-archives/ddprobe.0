Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D383D2E3FE
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778725834; cv=none; b=N3Jt1lmQLgfTA91YFItFml/ccMZFpK/mCLVA28ZtY3Bv3tXRV1MS9a3R+Yh8vciIL8lGulBG7MYeMzT77+uZpNAzcA+drMqgJNCVvXwwaCFX+Ixa6f7yFANUUHyWF0ucFp1YYy/Dbmq4TFdaIcuEB1siltMRRYxie8obqQggovA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778725834; c=relaxed/simple;
	bh=BZx6zSI4YvJT4mgVqDV7EMXxzMlbzuCG7GIxAWo5WnE=;
	h=To:Subject:From:Message-Id:Date; b=nuxJa8y38XlCzwsfhfu7/EIL3Z8p7mWiP5rjHUeifuQJfpK5gYc2SzXMWF8ww/lM+NpaiHPlwLyQ812Fl8Bv7J6Z0mDSh+Dfqyx48wY6Nqo646u85itnKWE37h8lm3pLN8NkJlQzUuOrmBI9uwNlq7j9us73OMt+nk+a6C54Tko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkPiXx3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkPiXx3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1978C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778725833;
	bh=BZx6zSI4YvJT4mgVqDV7EMXxzMlbzuCG7GIxAWo5WnE=;
	h=To:Subject:From:Date:From;
	b=ZkPiXx3s7Bta4cMwlYDh+T5qLinkuKroWFUSqTS2nh+iIZ1nyFq/XQR/ELT7/2zl9
	 ECmuTA8BQf9v8whZZ8CG0PeB4CtT9tpz4W7/iq8yzZPnquw5oqUvLdMc3YhmLpPv5M
	 m/DAGJ2UXhg5ceDv0uxYAKHAcBm08jZDJXRRAszw4xqBEZDgnh8p0rfb0DyPFCTCyr
	 sdwvJ9HaSjK+CVV9cQpAW6sr1CPa16Il0wQIEARUiaT2jx0mV31hnaDHA9e6QavQQC
	 +jn6T4YiMQ6aKjF1W/dKf19kRvdv4IVbuY8hhiTgfgkGphaag/cCuYRu5eOAU76WEU
	 3j8ZDoiYnmtuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2421CD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872583369.12572.17515598017742442398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b224335e1d7ed22ba76c9dd850c83582de1c7f8f54f1ef0c343ad4a20dd120
Date: Thu, 14 May 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778725833
