Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E0D1D9586
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730102154; cv=none; b=XfTHDI2bulgwv1AIq62i3hS9co65MRvsnDia9LcCw3bbqa01wnDqD+ii/ybeN2PvlijZjDX2FgiNChlwXh05o9sEUaSyAZHKeUeUstAeDsjCYz6DzrCHTYsKdu/MgqqYuZ385xU7luTujhcEdiMkCNRVJC8ZJQotcfwyKUJI1zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730102154; c=relaxed/simple;
	bh=kFNs7N1r8KWitoegPHEg+OHf19lYBBAkFOcRhnpZkRw=;
	h=To:Subject:From:Message-Id:Date; b=fHLDKSXjjnV0/qzd2fyKoowcjE4WsiJSDAFNMY3TblCkboTHs48kFQo2tLep6gakmlVU4wdMcaKaISDz9PO9jCLLXAWQR20dMi0w6h9L3KykjOW/eE7TcuxCnJERu+mvOYXjkj/q65cSdbPvjv7/rI2IhXvsOHOlonlWjiQsQaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eava0j3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eava0j3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C950FC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730102153;
	bh=kFNs7N1r8KWitoegPHEg+OHf19lYBBAkFOcRhnpZkRw=;
	h=To:Subject:From:Date:From;
	b=eava0j3wuJc0MoCMm6xVXYXRgq3nKx+CkLSF/Db1iVS2gq13mrzF2B/uDO2yPZPR2
	 VjeEgzbodHD6QAQUy+sa5h1j7kRdHI1fH2pF98g2p/KWK8y7k2QmCy4WZy9J/VrNiK
	 7F49/BR2jXogNRQRuCs2TDPp5HyqGFpuI7N/0hXjP9Frg4F2b6VVIV89plGLRDUZoO
	 o6i/u4SvwX2D5vghjhVxvHyM6kRg0XljiWgBE5+qx5jD4fVdKWcGI45C4mwhEtL1Ub
	 DjhJ1AtMDH4b/hAOvkvfiQzW76ppvFqCzBDEkzdMkK9+GsMYQH6eair0NS2EJ4wAUG
	 9pSiVtyxHa8iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC57D13588
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173010215366.27740.16926157466445647664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afcea7366310b567e76b9dbcb5acdb0146d6f83cb0dcbef8ec3ef88fba8f9a5e
Date: Mon, 28 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730102153
