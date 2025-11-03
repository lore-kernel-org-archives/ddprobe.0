Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E9C306488
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762175394; cv=none; b=bFZra77vjuLsYSPVqO9HNgVzsgFcyJ9IWUnAhTPUF3nN8lx3X1lq3EIQ8m44aUGy7Q0DGxk1EnicGVMpCRZ8/4EegYJ6us2jt7LdcUKXuXGqM6H9JzLj6tVr1jnovbRMWx6wRGN0zMnU7VQpkB6/FTDJf8UAJ62vKHeNA2KAb20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762175394; c=relaxed/simple;
	bh=VSOGgJk8z8kfwgrI6+s6syMdnI7oHjspFaSmhzv1VY4=;
	h=To:Subject:From:Message-Id:Date; b=AdAIqH1lGFMOOsIaTM3z1KXqI32YcMg/eDDXfDTusvyVX5Dw6sH2dSH9oCNj9jYvrSV8rXtHNF2w/YkRgmP1DvoJA3Sv969OxXms+b8WRBSbClqXDPG5sR5WnGmm9LVyj7qj28WGKIkQRiHg+oMfbIQze2dHoQJy8A4JK07Dvig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ke1ib6ni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ke1ib6ni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD658C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762175393;
	bh=VSOGgJk8z8kfwgrI6+s6syMdnI7oHjspFaSmhzv1VY4=;
	h=To:Subject:From:Date:From;
	b=ke1ib6ni5Z19IYWN6nHPIsxChWt/8pTDuB5EpHWohfkjeECkXXzfJmWkclOW1wn1F
	 jZ2klmIA2p3ErhsQTZAuxdPrEI32K2wyTVQHxwNdtE6/jaHbcBKZgBkohlvGwRkdEf
	 HOjSyhjiJ7NjIzpOyLWAhbbRsDncWy8jQWsUHGPiWVRbWr4IDbkhitfhbA0YeTmNio
	 K8OZpeGIs9LGNeL0FnQi8bCIo9L7M1ykUXkFRg7o2WKe7o0ilR1nnc5jTt0ylbN8ob
	 Gkyq7tA05H/QeyHUX98/oLs8SxicYQp3/z0r+FlYtSnGs66WsIBdwoaDnoXTFb/kQp
	 N2Mwj6rvUiacQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1030CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217539365.16351.9505528107746327640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a4c512533739091a7a2f8fbbb692a0447cf15e86e4ae1c4e3553f95ee9bd34
Date: Mon, 03 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762175393
