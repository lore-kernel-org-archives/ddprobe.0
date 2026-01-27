Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B708265298
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769540634; cv=none; b=CVX04imwEogdcDX9aCpAd9riJUn2ZPw/ZX1V9bMqfkb5y0PtSNBBOSFkxktOnHh4hGMWjXz2Sh6g2Z5SSZY3FbKSjWRzIvcVv4fXA3N4Z22TW4WlJ2AEGfeLDgtzbPEx//c5GqLwebEdYqUunW3ZiU1Ne2wxXcxMgnDEEjZx7G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769540634; c=relaxed/simple;
	bh=+IycOwNzMbl0euK1MJcse3NLTVdIZbts2N8DgNHYC5k=;
	h=To:Subject:From:Message-Id:Date; b=C7AHp7URcFvEa1Arg//1fFCFQ00WFeXQR9OsXJMUgufE/t8H54wzwEAyK+zS4Ik0yokLy0HPGKg/9qSutQe7L1Ln/E8hVy9ccG3GkM8+DzFlx4O19BOXEEmizPOSHYy6x8D5PktayJz7brigLlKmD7ds6hl2JMAoLR/OgheAFgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KV7bwImH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KV7bwImH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7940C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769540633;
	bh=+IycOwNzMbl0euK1MJcse3NLTVdIZbts2N8DgNHYC5k=;
	h=To:Subject:From:Date:From;
	b=KV7bwImHnCRfsDejl/0YMtWCiu10bGCEHu2K+WZbSJtOwIrcEQ23vM2cQPDDyAvmF
	 PJHCS8p6XtQPd6nOHNdfyIrMb+OgADnnFV7ke/wZgkctDrONgwqlBdxUdekSd871ub
	 EX1K/0YNP/jceOP2zI+PceLLDKb74MGscOr6A5yxY1uNzn9Hl+PIs/gVEZmQ4NW/Ia
	 6w+JwNb8rQjCOBJ68Syd9k8c68gW5l8bw1DN6PlOeKT0qDtRD3m7KsY7CRbStGAVoT
	 7lar70QOFbbe3PWb9CatDSNjC0oX4WxCeJBSkxCZGwC8nivIEblunfcJCHLg+KW5b9
	 78o7USlz4hu3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B851D2FED2
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954063359.11271.5651426685857127937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab43067099834be19597469500122fbf70e394802abd6cd31d911b8c13bac7d
Date: Tue, 27 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769540633
