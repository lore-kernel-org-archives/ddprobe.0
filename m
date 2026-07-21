Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9140D43C7B5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784671114; cv=none; b=RzyX4X3MqRZQIB+OYQBWZ5nOT2wl/dDwsMdrBOQgMuzbV9eSweRpH4Z5EeewIarDhSASZFoYDF1Ilc7zlBiX86hxF6WP1L2Ui4OFNLBwbwBVbsFizRL2NaeFUOA1jW+ylSHsjAEJHHki2eCRzN/L3f+/7wjj+IKCBXD6CJpp7a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784671114; c=relaxed/simple;
	bh=bJbLgnYpFx2iiPuJA8C9cVUmhtFP7rR68XVhm1wqLX8=;
	h=To:Subject:From:Message-Id:Date; b=tuP1AYHI8LBor/Lfhn2+DqJQZ0Awm8Rx/OwFmT4vYlpaGu4JjFdgqoVWNflW37lx/ppGpRqSAuH4hqbXrhEVOUIU7JmMUH2FpoO4LnDL578XsfRZG/yyGgOWe2mzOb8FCpMFa0ygEewiooxKA6AyZy8VBTERa6Ary7ozO+HYPv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPpzhz7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPpzhz7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCE1C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784671113;
	bh=bJbLgnYpFx2iiPuJA8C9cVUmhtFP7rR68XVhm1wqLX8=;
	h=To:Subject:From:Date:From;
	b=cPpzhz7KQ6DuPrCAymzH5KWnO7uMmCQ50NPIeFP3e1HYg1GxYQnxXIem2ah1EbN69
	 +9pd6IX/PTCw/oqyQ/B+2689ZRuQZ4VPGuay6mhHsdR0/ddKUGPb9lsot3DeTn7WWw
	 M9cpQ7WwwD09/QzA4sLUa4hjoRLFQqMR/7W1EfdHSq24Bh89nxgJaVJ13uthXpg+p1
	 jEexlwWQ5TfKMUZ5oE2vxdptcgaiDK0ObZvqG6tdvyjwdzIHzYp6lEtcyuxRJ9D4Vg
	 u7txNO+alu3NB/ZPWPkbZ0DI4vUk5lxT5xRNxW6XewEJI3RrSkz9Si8IcPRL1Wnq9i
	 07JOhdeohfaAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7398C4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467111373.19859.16187310421559465564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3848d82998ca88ab9cff4b0cbc49f160f9b8fa7693a774a9222881ef862eb5f7
Date: Tue, 21 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784671113
