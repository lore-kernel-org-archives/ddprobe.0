Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C571E27466A
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764820973; cv=none; b=NZ+5As3leWYsCLKlumYGBBop0ElaM16qxIDR5bJ5IiscqD3b5/8Cl8ZvMXiMkb2ulnsw791tweXZja/KC4eCw2A00rD680wjQvNMPIa7AuJ0tiHlHEDGVRtvJxk5PtV2dSBG22wgfZYCj4yXBYMt0eOKTTMXRyAmVVQ4TSEFO/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764820973; c=relaxed/simple;
	bh=XI3FfuCWDyJVjJXg9T0VjK+2vOP0uXFUzgj4xvi80lw=;
	h=To:Subject:From:Message-Id:Date; b=IrAthnDEY53QgjCGcX+t12KJZx9R/xrOC4v6IyKNSG2Vr3D1kiE2Bzdxpd0TSnLfo5tJjs+nnWssclp/hE7tLnp0G4KoG5vrQHydA8/YlAAnHyProKhP0+c0En6VQ5p56RA9q4wvC+hp2ALGGwLlGrfSihsUWBskSgeWuI1GaLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtvgr06t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtvgr06t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B8CC116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764820973;
	bh=XI3FfuCWDyJVjJXg9T0VjK+2vOP0uXFUzgj4xvi80lw=;
	h=To:Subject:From:Date:From;
	b=dtvgr06tvg2ZHVxnM3BHSEfRD7QLQrHzdp8lglDAjGntCtYQQe1n+P0AE8pU9K2Hq
	 LlwHDk0XtTx2MNJa4gW5jyO9PaVFssaDH5SrskAYUxEc4bW1VzzLlPPLxxBdRl4pI5
	 ZLqT2Fvg1JCsnY9E5wkZc7QrxGq1FD+9tTdP1SIeLuYGO17jUwuLGZB1xLD8Dot4td
	 osnW+g5/64VLGIcWY0HF+bNDAIadYkLXSp0DALeG5aqcQJ0DrWp+7UDVrmcGRp5SE8
	 gINtDAW874jitShqUa6Qu8eeoxbM9pWPM6lvzfzjG20Gk9K7oH7Ji9ylUH1HJz4Z9e
	 /QLcz/p7oIZPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96823D1CDCE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482097360.22952.665895498386579165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be3754eea6a0af65bbfd3b51d8b1a8d11ea3bb421ad15e232be4f207fb94243
Date: Thu, 04 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764820973
