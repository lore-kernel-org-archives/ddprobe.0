Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83EBE179AA
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719249743; cv=none; b=YBjvKsh7w0YT30cUGO+sDhyYZLYeq6T8I/9tWVsjDPhmhi6kKsJEcdBaeqmnHtlMGDo1KhhdDaURevGdL4RLa24DnmPlRU93Pi8RrthbGRRC5nguNYMlX2WAzKbQJ6kgMVGcd+aQaJqmkzAq6Yb+Otjlk1Q5yr5NuV9emAbWpAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719249743; c=relaxed/simple;
	bh=dK8u3KtWsiiiZnIAzFjtkvEn0vu57LjS4BL6UIv6fRU=;
	h=To:Subject:From:Message-Id:Date; b=gsWdV5fK58SqlACWUkPq4SrsKDlvlEj0UeRMLL+4iwXIglOZJyGJEFi+N83H+aYbbF2mIbo75AVDp99oX8x7Di+BCyWc5ty4/tugq551U5A7Iwh+odD8agRjLXVNFjpR+2Gf65mrfBi5qLhJx7tzrQoxSq9DJsfeBkYCfhIKib0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUFgXuSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUFgXuSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1FB5C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719249743;
	bh=dK8u3KtWsiiiZnIAzFjtkvEn0vu57LjS4BL6UIv6fRU=;
	h=To:Subject:From:Date:From;
	b=hUFgXuSgTleqxSS+8G7Ze76RyPZWswpqVykRuPDOpGjI+p3fik/sFn3nCwIdGdpjB
	 jxT3zCl8lkEHGKwRoMjRmCZgF1kFy+dz+d/SzimA3QkA+/sEqOMw23OWHuHWWj+C+Q
	 3UedHWh+BftAZ3dRb8ygEJl9gRuOjICIqQ2taZCekTh38N/73oUwQOaofjMSvJ315a
	 PJZlQKkEWHaiF+eUksJP9VQdKnfXpH+vYw/TmsvkO3n0dVjQopd0EvZKDO0RYlmVMS
	 ou7uku687x+DpThVEhsHa8j5Ra11xLc4B3DPNLEk9z7j+upTQ56da10slxRE/w/qH2
	 PoQzqQF47+P9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C9FC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924974282.807.13934842867463815001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f17f827b09bae4ee5136c17638ff0c1f7048571ad8c5339053bfdf1bc4db8b5
Date: Mon, 24 Jun 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719249742
