Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FCD54784
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718790563; cv=none; b=pV8FT800sNd49EA/+reOlwTH0HPPuKwjcBlJLuGLdbGqPPFEAyTwJALobnAEl1xpjRGd15y8xZ2GAxLjKNYjasUP1qrTKW7T7p3Z3SNp1GI9WsjeUw2hCp78uvNCoX0g0Zwb2TCrfFaPA3FsKYWlpiFCmO/E0GLx9WeXvQIJHik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718790563; c=relaxed/simple;
	bh=awG0UPUpXMGeNzw+8c2Qa4LCQr2JdG94ubyWUHWezxk=;
	h=To:Subject:From:Message-Id:Date; b=DEsDWpL7VpVjmVVu0y1hhq5aEaCuQZIuCKzJZOpN0clkU5jhHZapg5vNuwoUsBd/Wm9X44YntVSLwPiaJqDrrqr7/O4fiSNL3xIXUMBDF5XYiW0G6CSH1PpNnoWHokujVIdpWNZUZ704w9hyDbFjj2D5IJGMEBYBhyMp0ucJ6MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EurLBh0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EurLBh0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4887C32786
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718790562;
	bh=awG0UPUpXMGeNzw+8c2Qa4LCQr2JdG94ubyWUHWezxk=;
	h=To:Subject:From:Date:From;
	b=EurLBh0Zql01bijZt4Q+Gq0zc6YuY5QLiUsqSYXOVYBUM9C6AcZssw2tZyIkFqqGC
	 IIro91JNdGmI5BGjRhuS2Oylz37NoaEIo0LPoxvhkz2DFCttr0bquIYtz7d9Z+QU05
	 Ubrv+jpAe9GTDJNHAkW24CTxgp4u0wmRxMNk7Qd05p0e+dGJ8U5uuhmaOKN2BGr8hN
	 xSCdNuARM7yrCKU7+jesU9O1aNyBlxLmA3g3tZe9fz+xzgAA6SmTmCFCiTLw8FtxNt
	 UqujyWdhgwN/uFJS5XfDhyCXDoKHYc5qeO+c4kTZD10l/2hoA35h0hBvi7qqsxKHY5
	 FsxMVeYBuwjhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBE8C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879056277.4426.16379832216216294282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d44f9ab60af884bdbeedc12cddbb39e2c9a822434eccd63ed2739b61afd68b
Date: Wed, 19 Jun 2024 09:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718790562
