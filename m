Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173191E4BE
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755191394; cv=none; b=sSnwC0M5UpIDJj41YtSEGFsP0seoLSpEUexRrLzy/bCDKH88Y4loFaOwgHj5kbEBkv/UNkc7rlZMbIz3GrLZUm2oRSv4UQlECWgBJmqoArgKL+b0ZoeFsfatduRJ7J0BX1JmBkLI3jrqDCjadUuSfte9ZZdWo1Zron84DU4zWkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755191394; c=relaxed/simple;
	bh=0tvPrivk5Cjen9Rg6YYklphS+33inu8FaHp7AcSffuk=;
	h=To:Subject:From:Message-Id:Date; b=hoaM+I2J80Z83ny7dSAUVApE/Mc8jXzM+6WpnKw5hVnlgM6PhxXNnhgHub8Bo/4KCSz2U9GKNnvzAvf11e9Mie8C2wcq1huWQQ5HGnPOxK2Ii4muUjKy/LjhYk6oFL+xQJ/u2UHxPvufOUaKla+M+NOKV9YpzUJFaukhpuNZs/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pV6SCXJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pV6SCXJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2669C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755191393;
	bh=0tvPrivk5Cjen9Rg6YYklphS+33inu8FaHp7AcSffuk=;
	h=To:Subject:From:Date:From;
	b=pV6SCXJk02Hz3b16FJFIDR+a+0TFnOwH8UC+YFPjwQdEZEkHMbavlQgodDN4i7qSB
	 GxBjKjN9/D2TCKUREB1CxvV/NJwJIO5DBZvu/xudndc33j9I+6UCAVzWbBr+rArIBk
	 OE6dUvf9tkFLOKIApC5Ki05C5WqYA5mYiSMU4vI1oATD2VZmnSvzoKuUkT7hxHuCW+
	 m0rSwanTG7YyKgCeJW2rBJguSUjEypx3PkucR/goDxiVtr2a7JemGJNWsbn50CtS9F
	 Klfo1qIMFaxxLhwRwPfMFM08EUB6hBEfrkylV1OgbcgwzFjBJuUQq7ksem90vg7885
	 rNPzNgCOsFzyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD4CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519139357.6091.14712380785101685948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353bbd53c655360b3247a23b6132299c23eabff2d2f0039e930da8bcaf984e51
Date: Thu, 14 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755191393
