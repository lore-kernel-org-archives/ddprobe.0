Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6AB3161BC
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766571833; cv=none; b=SmWzxJrvGl8/ducDdycMK8W3SZXL/dImOOcjJA5s5b4OlzsYzOl84vLg0IAsJtqsoRtOj082YzL4hrPwyrymMPJGNHlEcLZypFlwD3BHFFq40kbU4cOwv+zX9yQUPrz8nlDPoei/ao4iA9pfDHyTGj0Be60IJk6rM7f2fFFmmLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766571833; c=relaxed/simple;
	bh=6n/EArB9Ho7FvVU9ASEvk/KCaMY92bnuI7wU16f9rl8=;
	h=To:Subject:From:Message-Id:Date; b=USEIcYAHGM5X/eopa/3ZB6m1LwteHAwA8+mCaAOlZSwsPxPc2MOpH2vhYiZ44o3nRnJ43OxD9h2bCOlvsoeEp3x+5WttjszCR3lqO4oNpu0pZcsUEptqdUtE2zdsvMf3ipsYIsAysdkgM4DvDZ2OnBoxDejxoyYWKPKNwfHfdW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMUMNG1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMUMNG1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC3C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766571833;
	bh=6n/EArB9Ho7FvVU9ASEvk/KCaMY92bnuI7wU16f9rl8=;
	h=To:Subject:From:Date:From;
	b=XMUMNG1AFjMyxZ/1PYDoD4iWcnydZUxSjZA9J2kDhViaNM5yNItP0BaI6j6coOSeb
	 BZ3HG3s0JsB9eRe9Id7lqVgtXZjkQeovuKXgywDn/TIYccAI9rPAUamOnFEYRXHm6x
	 W20ZgOtAIrU+57O9WzkPBsWO3Chl+97vg7u9qhtckNri1b2N9VkTsnXBzbXY0ojNAn
	 B9WzMwSdWpbDZTLyV6GN1acDCIFL/SDa4qZ8fLeRgREBWrti+9buea0Hr3iml2ss+0
	 eG3NolIEgp2OTd/3Y4m9U8M6mrdI1Zcs5Iy0JCkb3hWU4fWPTrIDAj968myoNOBFq6
	 8GDyEQPPQC0SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03BE7544B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657183357.23158.6686864424518502017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f27fcaa3279663eb5c5cecee0df94b3f923a1e905753fcbe745789a89794e2
Date: Wed, 24 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766571833
