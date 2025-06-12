Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3E463A9
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749766794; cv=none; b=YKSrddfRN6q80fMC/iJS/2pnrL9tq1ed6D/okgFqSsKLe+PMRUHRsVtCbnOhs/wqCDoRMD3VWL+Jakq/1p9mHH5cqgrVXMNv1NXovKJgOSjVYu6A2atMhBFSxWLzqr/vLUPO7CC+F8KTUGDr3Q+QmoKJsKU+Dye7eM4aiEIUWv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749766794; c=relaxed/simple;
	bh=lnTUPYYsMqvavw714loSLi18IHYRBDNawAubmHohJuY=;
	h=To:Subject:From:Message-Id:Date; b=CQrsr9O3aWXla57UFN94SI4eFRxUPJp3Chlo43VTde+osKGyUaC4sfKj9MqKh636+Pmzycmbi14LVKoaBGM5lmjHFaEUwRtPDA5xt2+FaGuhEUB1mYQEuzNgH7o4Xupq+yIMboKs12sABecw+Ua1mVYJndXpsA0yF6ER1IFT/Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSRSiom8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSRSiom8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E88C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749766793;
	bh=lnTUPYYsMqvavw714loSLi18IHYRBDNawAubmHohJuY=;
	h=To:Subject:From:Date:From;
	b=jSRSiom8dRXLpCOcxZqc6OLhITHWe9DXq6QExFoFMwzMcSmA8446UiSwVuQ2in4j8
	 UrL6KmkVrE+IJyPL5Oau87AVE90jlRfGjubBj/HsoQC/w7QvP0sitjBosK/6c6GmZ9
	 OP1gRyabDH2PSLN6nGQyGa2dCkLeYk39Bly695LynxenIVgEJt8i4+rTS3gEFLCQFz
	 na+/qrLGmzlsTk8hCeUzKq2t0hwApKuhQ5EODZbBrjKVLzs14smz/sgXNvb4A4OXFj
	 nNeE+WLdaKexwmNnrOscPMsO42HtU4qCtbKjy5x9T7TBxZpVJr7R4DJmCSt2Kqo70Z
	 3P//mXpx0osXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDF5C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976679363.20244.12036906296615932112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b970af128b04d97add9a29f5df0257f94a23b92918f5a8d166b4ee5dcae86664
Date: Thu, 12 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749766793
