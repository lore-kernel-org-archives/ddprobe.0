Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A97280CFB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757798994; cv=none; b=WaK7hYWZPrKx5UiXDGrgG0J9OfWCTog0puubTJ08bKRM4AkiNQ2iYseJkz2yqY9P3XyV9D62P5Q0LXWV3wH/yfY287rSVUkr4HveqQ9XP3vD5D9p7NteIk/UtL9DgFCz7I5XjHI3ihCU7CNr+Eq8R1KpylrxcMAf6GC/yL0S+Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757798994; c=relaxed/simple;
	bh=TK9FJAd4paww+x50kbR3aFOafHU0p0ZToyyZwphhldA=;
	h=To:Subject:From:Message-Id:Date; b=hStSQH3U5n/Q/KXAAYMgVojaA8Hux5705+FoygmxLSQQp7B+F4J8R8WlVU8lTeTIBM1m3hNkGZeJVYXSEbbNlbGEtRUbuma7Jab+7E8Ul6XXFeXNQfEbgAu/Xe7grPevVEtM8Xcm8ZQM1HLnj3Cd2Gw1QgWfyLIfM+F+9VEdcuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5bGn6ef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5bGn6ef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EFBC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757798993;
	bh=TK9FJAd4paww+x50kbR3aFOafHU0p0ZToyyZwphhldA=;
	h=To:Subject:From:Date:From;
	b=a5bGn6efVJF+fU52G5E/jMpzqvGw6CNXSXqNG/J30x3d43fUJcFQqrIHP9xyUNp2D
	 y5rffiMXkZKEF7jDw8DhJeznP6prEx43taSVFKqAb56hXrjiOZE6jXuH0j4sTMKOj+
	 JnrRJYGxoNG6BKNpkZxEu/YkU2FoylfNcyWj5bFsnsFxCfwwBRMjTglcxN/uhs6U1Z
	 ouR68izD4egiQsidFOJ/0mNFyeuuXs0+46aFX8X4+AxBBE24/yFi0bmjnAuOdzPXsD
	 3h+YiiSQO3jU9L0Wg8d2isXMQCt+QSOJ8xSE8MbX0SSQH5/N+R7XM10MQryr/15Sxr
	 otCU56yBjMlZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD9CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779899358.19210.14904420437584353778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1ffec2af04a0c2d58e04c2927a715dc3c1ccd5bee70da4b87b32e5eb7310f1
Date: Sat, 13 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757798993
