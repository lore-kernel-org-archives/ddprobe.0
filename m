Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCC4173355
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720004723; cv=none; b=mmgP8atQxbk/8Il2qcS5r2RjaD05Np4m3tLQbAy4FkVaXELj3lDFMPgq0uyrfB89om5gCJOwXv0HJv1l+GVYOJAn3k6tJxG/qairAuElc4VR5VnHozyqA+OQ5ynE66HtNBybJsTy1Ha4hQ79Vdy0cosRa08JBBMzH3XUnJbh6m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720004723; c=relaxed/simple;
	bh=n+bJWgntaC5YXisWFgsz0w75QpCaHQSF6Mp1v0u2jVA=;
	h=To:Subject:From:Message-Id:Date; b=ENV+A+BztuXxQVMdAKl+8ciEh7z4dWDb4REv0mpwwLznYK6LX6eGQNT74K1hOJcTJPwKnoKkrjOwLsy5VM9R1BXDO2eei3cIIeNvJbXJ5L4vK2z3C/aM3FvaIYt9Y3ObZygLfUcTeOBTzE16RUPxd2LpmXc3H+mxxrzXevyXMKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vcw5vtwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vcw5vtwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D168FC32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720004722;
	bh=n+bJWgntaC5YXisWFgsz0w75QpCaHQSF6Mp1v0u2jVA=;
	h=To:Subject:From:Date:From;
	b=Vcw5vtwqoQA+Ozb/8U18xT2tn171HzE+oy021EOiVvWjbd5B3VkgkONHsyOTpMrw4
	 fkl87eVHiuNKopEEiohcEovoRYoEC2X/AeF6/6lz/jZGEIlrC4+633FrnVTap0m3AR
	 4khk7P4KRNKHEFhCo3zvZeXxI+HBa3JTOoZ+pCXrso7/USy/NVwkzWXbMtsFA9mW7O
	 wWU/FsvUPQdydLPbI2XgrC2pBDu7vkA5rcFZkEGlSE8QH03F5izNcrmqcPu7c2cYXY
	 vH1LpXYqfr1zA1m+mxz5Kdtw8QWGf7Y/BelzM+oYbB7oNcm39yNCIWfbUlUB9xoa5U
	 uNBTyexbSjBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB80C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000472276.2203.15937327213254216637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dff7382f9db1242fead232d908d99bee43047a6af75e7d9d336481d59dc7605
Date: Wed, 03 Jul 2024 11:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720004722
