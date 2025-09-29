Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A36335950
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759143594; cv=none; b=fbYbLZDj8IBD24D51etyCBLuONPYSov/u3DlmYMANDdx4ToBFmreGYDK1ka6WqTBm/Pgknn4R6xawtiZiIYR/Dwc6UGDNYNJWWlhhTwy8tzIW/vn3QRgQmYH5Wrar/xD0MX0GkrYMJNo49nyRI3OkqcWSa5wVwmE8wYiyT87KWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759143594; c=relaxed/simple;
	bh=4qhhvaDUDzaCHM8PJ5T4l0EtOqwPMA9I9K4rhyEmjj0=;
	h=To:Subject:From:Message-Id:Date; b=Ze/3Z+YL7dp9lh7irxKaB/U137LOeYJPTaB3PQ6jFGLX8uyjXFoAmdFzEvjjAzLx/uOiw/wAw1z6WA9Le+jo/+uBiGMCdTqdk2a1k3mw5144nxGdskjyMWDP6dRCVfHNZaQoADAUoKBw25I+NQwGYEF+ejL6ALEZUAHStyEkIC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gg/XUybK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gg/XUybK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE7CC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759143593;
	bh=4qhhvaDUDzaCHM8PJ5T4l0EtOqwPMA9I9K4rhyEmjj0=;
	h=To:Subject:From:Date:From;
	b=gg/XUybKviluURZn4nlENlGrRKQGuUsBGYyPU42F0YVIIJIF5k7W7Mt6lRd830sfw
	 x2nXhhmgUDzgIgEeISilNaQE+tIfhRwB97ma+Zvn+DvCaqyMRdnNfEQph1GcWMB91G
	 4eg824MSB92BhNaLpMaCACpQZKnc0liJtm+FP8zb62+05X9ySSmnhU9RzTOoZsZnxe
	 txRo5sGjJPbNe6ZVF++nWFpWy5EdS0RdirSF/3WVbhOW/wPo55MPgUQMgOgu3ECUhG
	 PGQihAJsfWPDweS869ssdLN3PEvy/WHbWhlZmsjvc0mSlX+rq4zAfaDAh966nqYl3y
	 nRPpxLy+X7A/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F648CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914359357.1757.15183583071383734778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04852e8bc900a56b4733d6bb1b433bd6693c38da324f449911490200caa55e1
Date: Mon, 29 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759143593
