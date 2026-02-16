Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AF92744F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771223094; cv=none; b=SCub2T/lAFHJ8JKC1Hlt+VoNh/NAVDd4JQbQKUB69gbXGktbWOi4z1/u/ltzsDz2LfyILZDClI3GblYPnmsu2oHdr1qKgqnNevTJnZr5vfDGi2cPssUS0cvW5z24N2BLa0rDZBZ7oBzz+0cAXHCbG33N0Id4h/xgwW0kZI0fCiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771223094; c=relaxed/simple;
	bh=YlSu15nUQnODFzQ7jaCt09iK7KObTs/afiptgzi+/uE=;
	h=To:Subject:From:Message-Id:Date; b=pGT3JXnDETOTu8/UpcS0SunUjrfw/hr2e3e9BMIybJaAwTUSQ7XFx4miQhZMNjlYSVDvEh0QzA4ywjJ0BUT53UkZSFMqruR851qNcvK9rv9qNKcgZ/4Lm7z5+FOA0OE2ylpgd6YMMya0AOp39DM90UyBhQDX1q8Lhwbo+4Xc6ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4IH29Qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4IH29Qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72E6C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771223093;
	bh=YlSu15nUQnODFzQ7jaCt09iK7KObTs/afiptgzi+/uE=;
	h=To:Subject:From:Date:From;
	b=t4IH29QrTDmuBAjpmP06X7BVw+HqW//O1VS10cvVog+1yFAHQswy1IE/N0g/CNcpE
	 xO6065bwuteyiqObBH0lD3O2XuXIl2pyuL6uKKpL3zrq8n66OmUuE48Xt/Qfc//1DL
	 XbpyWKDzUZHwjNefXHWqmX/+GiI/2m0hvQCh4H9yj93/Vk5412NuxJqnsy2Xfv1sRH
	 sQlV6RPrvxCYBO7Y1aWKIbT3I2/0EIiWiEyfppYX5z15BgSS34PoFBa3nrxfJ+dtro
	 qKZebNgrYB5h9/yOdmMaA64UePYah3HRMH7ivfu4WHjmnasSfvvpHlJBVkb0+4tLhD
	 w4UG9wfo/OglA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1B3E63F25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122309359.25248.4983967892776350150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b737f8b231036a4ea2b187c44ffc1c7ce03e7cee9c01f6105a35a421a8f797d
Date: Mon, 16 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771223093
