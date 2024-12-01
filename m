Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC551B6555
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733078154; cv=none; b=Mo0StQ+O9DXfNTI1oZu9BVlzS0LWTZxV5XZoU+BibLQylwDzK8Kjbe7SfqT2l2Bu7EYLBmWgPvPgDsBKQFo/H3Lp6CtXkc2uKQ+OKtqDgcN3tuICHQE0Mv+H4RA3shebIzEoot/w9+p8GgZwM/hV27pkX0BZlVVz3HWBXr+E1ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733078154; c=relaxed/simple;
	bh=Q4tWfl/eHGxkrEVlImUXae8PS929h7rQqQTbB9s0how=;
	h=To:Subject:From:Message-Id:Date; b=lMXqHLEJKF4ChrYXDaHD0H8n9Gwv8XRRA3tjjlnAQW22EnlxOAp56yXmNcUPqdwa1B4TVMqTIV91T6JZsdAdrKsAgcSGBpjWO0q0G3Q59O8GPHvvhQatqVAVC3ZdKx+PNvWkwCKViSfDu5FwXde5boCkVyxyfxPWBmfaMaHTvZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkEbM4aL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkEbM4aL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F99C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733078153;
	bh=Q4tWfl/eHGxkrEVlImUXae8PS929h7rQqQTbB9s0how=;
	h=To:Subject:From:Date:From;
	b=hkEbM4aLuieztjNgl33BTTv6sp8jyrySWG6qCuDEAH7QlsOrfi2zQmnbvsKlTAvsM
	 6AjX7H/ESsll1Y8jF0xmDZjQ9okD+912fTbhhtp3859Y8F8RGBXqlvOBvYApxtAFE8
	 opofOmdYzvdfQ182t2MysstZRklUAnP/35tUyh6laJK2EZwsr+DuHd8pKxdcQTSb+Z
	 H43K7WUZKWHSrwe8vOENyALUE1PAyl1VqYlxHdoJJNeBCo+XEkuqUzSexV6p19MWXv
	 pY5DTVV5tsYDkBuYq186Yria7t1VILLkJ04fbDhXqCKwrSbRQvpjlYPCpO1leGjRoy
	 8ow5uTWg5l09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981F3D4977B
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173307815358.18131.9360942893562785167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f9bd82dec9c59d96a7c7bab4323ce994ac7930eb6d0041b545a9ca1fe0f22a
Date: Sun, 01 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733078153
