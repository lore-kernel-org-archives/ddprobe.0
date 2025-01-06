Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8271DF25C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736173554; cv=none; b=MDfHWukGxLYuKhK8lztjMTO91vRpfurG24qe1bZ6bT6Z/8Q3U+U4rX5QM0J0yOehyFqCjAkcMEeL8NDrVFP40u4v8vZOaGTi6h8Hqgfie7YoMCkGomKPAvvkav5exwaYXtFf4+IEueSxLal6O7X4Zd7tyM2vLS5kwfLP7ekQbME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736173554; c=relaxed/simple;
	bh=vBPSRb7H+58bYws4HUOpoPpzTemdPeDkDKKCv1hUBPc=;
	h=To:Subject:From:Message-Id:Date; b=cxjKHJJZufFbzuGwF2RUMchHfQ4v0S0FrbouYubz3qIqrreNuvaKUKJIcTRnj8Zu2kLRxtqDTmiVyTRuvUUvPIwang9hNpvWkAh7WkNKXzX7LLCl4d8CxGSA4ZONQxcckJdiXJHmPhfLPuxon2kqcQstZw5uCBfSMyATp6GQ0tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEblgZ76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEblgZ76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A570BC4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736173553;
	bh=vBPSRb7H+58bYws4HUOpoPpzTemdPeDkDKKCv1hUBPc=;
	h=To:Subject:From:Date:From;
	b=CEblgZ76qgNyAzhTQUpKlJLHaP/SKerBqUKLV778soo80dt400muJfleE2LJJkF2V
	 Fd50M3IA94sOPWFQNOB8yCKUlr6+f7VZF7G3Yb5G9tAVMBqbWWdEwFCC6iRvBwIWz3
	 MyEovMWRIzU9t5+5uvXX04yLvNDeqeSnBBknYFcEv8jyvbJTf8lGArc/MPtRS+yQhn
	 abxqGNITJhFgXjEURry4q8Z8TWOvCyUG6O5ogpzGxStCZHlrF9A0UBiGJlVJO4BJSj
	 yWn87t9J6Vt176du9lORMxY52mu72KHdItXVStD3vArtS6xwdLZfhDh8BQZW+/AegQ
	 NjTIwkzxalCnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95125E77199
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617355360.15026.2732091563802589107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fabb6fde1b56b54d52ce3da0276ef6912ca535b4f9c0f9cef10907d69051de37
Date: Mon, 06 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736173553
