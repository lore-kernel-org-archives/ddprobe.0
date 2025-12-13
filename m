Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D67D3B8D68
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765588974; cv=none; b=jU+AIHaf9IXFTu6NUO65Lze2kkuO58l3Z29cHoelD4ffbn0FuuBbw+g9g76dj+orjAp2JTU6nPeTBEZi+/y6TeQuxU6o+o8GSRva8chH047XSZJ5A6GVj/x8Cq2K3RZT9Q3yqpDKdf4HEYpxQI3HRdB5mbQf3oZvC2t5VdkcKlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765588974; c=relaxed/simple;
	bh=fCjcSgsM0snA3JiCDPZfVlHfO5dMKyEGnEZ9DyAjqBE=;
	h=To:Subject:From:Message-Id:Date; b=GfuWpl7+AGziEBl/dFrCYrXvxlQEOJTi35YCZEy/md4sjBVFCs1Oe6NND9/pxN1HWypUzptwJgZ72zC8mc37Ch9uhg6+4N6EsTYGNR43z7A4Tal9TKt00y5pj7ztwq3UzpI1xv/ax4nfeXucKOa+WdexCJqnYMlmiQ1xoX+3UB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aK64gJnj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aK64gJnj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A564DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765588973;
	bh=fCjcSgsM0snA3JiCDPZfVlHfO5dMKyEGnEZ9DyAjqBE=;
	h=To:Subject:From:Date:From;
	b=aK64gJnj21UyU7ToF3pbLoK28Yjw+hSVefCPPx2KNuA7FBow84cSJJAx0HLXKZ1pz
	 ck/pjyWAg3eHlcGf7yTv4noxeGBoh7kWw8UOCTfC5hizyVZbnmv7z393Y7Ew7LJSKI
	 jXWT5506gllVH8u33QxD+lZMAk6MYPjj5vtojMW49nQYdzHMhf+mtzaMkoxzxSO6DU
	 Y9T0RUhjy0kpwnBZ0JHuOCY5pj03t2k+Wr+1HMYi+TCWY7zc7YZuG86lvTGaDRE6mo
	 nQTB/1e+dMkqmlhkRSM3Dn6iWbBtbH901wU2r7IY6qKy66ECe+Z5i/MmpWa2yXuJPm
	 ZYdcj9Dm4+yZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EFCD59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558897358.18521.18282398060734731965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a92bf1cfd13b781bbd50d97be0bce13a2df054c3a361c995b6e300980d9d9b2
Date: Sat, 13 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765588973
