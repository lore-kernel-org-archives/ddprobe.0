Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2612F14F70
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771220094; cv=none; b=lSNVxcCY8extU4J98DNdFP7PIhCP1Xo9puxEH1JKqShn3nY8uJ1JWWAMSD/BbRl4G8cmACUFItidlivrjo3PPxO/zwDNUdk9fqcvh7LzkO/YgvwKWhaQdQKuEcpU5N8gphZqoAOQNV0Gnzjck42oDaFay/bavtCHVSNDd0Inoaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771220094; c=relaxed/simple;
	bh=5/wxoyusvIwttVwZ3MFCwmawEiDy9fGViX1Z3MX9Ras=;
	h=To:Subject:From:Message-Id:Date; b=NSeAyg9XgE2ssIJK2II0ChM70rE2JG28bbVCrE042LFxnlORLKvBQMN32KN1PnwzmAPS3g8TXgaPNqKjbsQy2xpDJkK23cLakFm78V6RczC4WhNg30UN+ML/x8CuzaaQsB0cQGTlzM67IfGzWZWrUkLAsJXI35/YjXCnqOQDqBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFoDRf+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFoDRf+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17CDC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771220093;
	bh=5/wxoyusvIwttVwZ3MFCwmawEiDy9fGViX1Z3MX9Ras=;
	h=To:Subject:From:Date:From;
	b=hFoDRf+FmBTa6rUchyv2SM7mctjLDPlaHYMAjs4+dWQ//3xAT1sYz7QTXWA7VkwHX
	 jUwhlbnhrLVVWmn0JM5vXEL+hNCNZUPNCkQvcDbqkZazKo+uRd7X4tSiCqXy6i2v/e
	 IlUGPaO9WrqE6WAPvlRhu+Kx18/8AurRJ5G/iiriMXS4jy0tnuI1P9kVBKfjT8oOv/
	 NwECbtMQbM4D68wCaS78wvnr/xh+qrxIy23nKHOjEcWJFIYMv6m4iumGscie16BCVG
	 XGL+dpdDzOgRA77RTbsiA0Zs6O+WSOwquMaufrc2K+1ZIYblSZRI02X4HGcfRV6tQv
	 jMa57nDHEZ2YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4D4E63F2A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122009362.6570.9251400909022948705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302c8e966534a19d09ed30575d5870612dc2af106a720169f72670a4cae0f701
Date: Mon, 16 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771220093
