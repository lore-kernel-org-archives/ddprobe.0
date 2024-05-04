Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1BE23763
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714831943; cv=none; b=KxMoj9TIpyV8te+Kmreytxi5T8GXionaAJjDV+GhisiRc2qKEsDEprO4SJoslXxsHPefVyCX7fFF2Fh+A9baL86j9iwCX6pEgv9D/MeAoTgNQYLdH/1eUPfbTC++ql8p55HRNVo46xvInKq9W+5flTKOp6TMbNDR/hMCjR9Mr4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714831943; c=relaxed/simple;
	bh=bcXb76KGYAakwxo+Ux0k1Z6Tsi8O7jYSpXrgNlKwdHo=;
	h=To:Subject:From:Message-Id:Date; b=q2rWmRUKeVe+cRVVW4z5z0VvAkRRoem698DLXo7AHRmIwvmJ1AJWeH+XYN9O7VwpPDf2mUfEgPCRKN60XdCxwx5sjz0/kvRif8qnTZ3CrRlRCHyloItomYrl+dKP4CZXbk708jBpgeBortbg5PzKGd1J/lmW9JMUve1KmHCA3aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IS1xtWgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IS1xtWgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7801C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714831942;
	bh=bcXb76KGYAakwxo+Ux0k1Z6Tsi8O7jYSpXrgNlKwdHo=;
	h=To:Subject:From:Date:From;
	b=IS1xtWgIWsKAD8P82kSnw01Y071RhHijuG/YSkbGQ738cmKbFRsrqwPrYbcWZ+QUw
	 htjWzbcBHCgfE7KiNS5WHjIoQ7N9kLBB6GIGXNIkxyWC5h/xz33LkTY2zEKphZ4Rdf
	 RSMsj6+56NYABxNaJGyrAxVb2SYTKbpD1Ffnh6g8fFz20/a3diRio+8atlmjXB0eSf
	 aojQlz9Yf+cNqpvSJf+4O06U/MpRLw1+FhX6Xv7errWAi5Iup4Gr/1gDqC1mmEbiyv
	 tgxHDXdCY6wCxTlW6r70PUjzlO93BaRZboh6XOY2PLtRo/MP9SQ1LwVgNapxHncZQu
	 ACa6UnADcE36w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C316CC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171483194277.3406.17081648218465744285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088eaffaac63836d2eff9d80e9db3e1ca40f4f69acdbaad395267e1f347ee096
Date: Sat, 04 May 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714831942
