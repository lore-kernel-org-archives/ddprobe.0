Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132EE2F363F
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761130794; cv=none; b=YEwgJM9dP0Kiq9IAK+ycsYNk1VUXPw67xnEISUhWFduzLw10GaGp8+0Pv+R2S8bFFYaWkrZaWmA9/HWSCOY89J0IZz5hlgCM1ErCiJPC5H7Vp0gCsszTsGH6WvhriUhNlTpLjTJRlHf5X0ajz8MAZfgSw+sxsQrtZsizh0UvINY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761130794; c=relaxed/simple;
	bh=H77iy0wawjA/nc4Tgl6vQDPjTvvHtAqLWAEglSDJG3I=;
	h=To:Subject:From:Message-Id:Date; b=QvctYQJXmoO/FKhR3nEyzhl+d3j8EeKhSw3jJRnZZ/AIibvBzlKI7hY3M8k5BO7D+/xGQ7/RzorDNKZSQJ5nLx6mywnVs4JmlEqGiN10RfgHoKjHHybziaW2mJ04oJM+Hivbzmrl+XPl90W2ndkA5mtGYpXghg/zV68VSbwkezQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1ey5I2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1ey5I2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09DAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761130793;
	bh=H77iy0wawjA/nc4Tgl6vQDPjTvvHtAqLWAEglSDJG3I=;
	h=To:Subject:From:Date:From;
	b=E1ey5I2s+LZRhz9WhF6pHq8yg9KakXhCEB5oLp04Yp4V5hrmlVPTGeCqCn2JeRsoD
	 WGrYYtJm7O7+f9EEzzoKoeNXM9/nUCbltmEi/ZJa+wWPDEb7TaGxnTSSJ3Z7Asilvm
	 /srGXy3xrreHjKxUPZFaLAjV9F4F4O5z2aG2RS5WO7NGPahc/ewlRodBn79xIrGnSn
	 PDmlFtQ4GheCdksT2R7XvvDEK0iXobKcdYMl2Tnz7vTn4d9nzi5Gd/5u1r+uZJKxeh
	 yyq7Yn0J51rfw44xghCSvrqpxOCYZofSe+ousJfP0vNpps6DeEg3CelejHt9p+2aSB
	 LdaSqGogDpe4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B4DCCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113079358.25790.10772211439287331091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b4b64d4da841ff0a5e4b3c716d0d871f918cb921e42cae564a19406dd2e354
Date: Wed, 22 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761130793
