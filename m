Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC9E1758B
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741428534; cv=none; b=aY78uMiLXYsWqsrKaHy2XezJhJA4jYUx07ahpQkimOThJYeYsmsoYbd6VGPdItO4MwcY2M4ZL+l+2QhQbcpFCt9HCoNIioWKQaaBRI5oefg1Ub5luAf2EUNsL4zg06UJY/1DQE8EJWc6hDI2klpK8GqJ3cWR8PKX0Wv9bPHHz3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741428534; c=relaxed/simple;
	bh=5BAlpIl4LKuyrCI/K1A905DO9O2aQbZpvD0DP0Fm6uQ=;
	h=To:Subject:From:Message-Id:Date; b=vDJSBfpHOqZO28+jm7XgkfNn0/dlF0pMDFPJwBXKSqaDMXkizK1ZCZcrYGaEmIiZT5uzCQ9Fziv/FO3z62ZdygWojepWmxIu/P791JYsxCeiaDVjIkQyO5p53g8W4bdIrtPT6gszDDIbth8wSlth5Q7Ts3opBgTsbm7wANaGUag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdDJ6uYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdDJ6uYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3BCC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741428533;
	bh=5BAlpIl4LKuyrCI/K1A905DO9O2aQbZpvD0DP0Fm6uQ=;
	h=To:Subject:From:Date:From;
	b=hdDJ6uYjn69dUa09sTx0cq5Jm9ljje0vCrQOd7q8tViTc/WA8nMvqClhTbvvwiEEQ
	 f13GJ7ULXqL/Tm1+CjocZKHyckdfY3hd/vC17uliNiKMaxyhClKIcg9BIj7tg3HY4v
	 W0Sm9IXvd3N7m6NvnmJjpUmGJoNV5uVkz8N/I7NcUEa1dHstjNKb65Dcd3NEb27U9N
	 MF1Od/54Dikkm9LXKEJfjSKnZm3gmHgSeCs/f//rJuHDOHVfo5VZnszBHM+SEuQfJy
	 v/XQ9g8HK37d1NCM7edZq1em40N8OgVi9cKTT4LfkGmzkfN1d668cwPh5R0UDNqyUj
	 8HKbc73WxYgMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917DCC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174142853358.11539.9437477681128819787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d816e79457745a4be39032258dcbb8ccf77693f47aea366c6015d811c6da6b4b
Date: Sat, 08 Mar 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741428533
