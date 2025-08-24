Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3F6188000
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756076394; cv=none; b=hcuCfqLTYcYEVDzROHl56ZPvfYJfR10IzZQL3K8iN9QQDh2yzMdiSDDTussc3jdxOeZ+XDqEXZh/z/UWG5ifrVtkgSpBK/Ke0A2E7QVspP/JOtDpG2S8Qnwo5Kw/3KsWxoaomfaQJvdvtAuDWt0q/sMfASiJ5zER5/LbpyNKbVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756076394; c=relaxed/simple;
	bh=m4fkGIx2tSBRztY8CG7utZ8I4DbKCOQYBjkLCkjAcbw=;
	h=To:Subject:From:Message-Id:Date; b=fYoD5Jzx1YTeahWK0x+GDfm9xoXBqEUY1uU1PuTfZBra/OfySXyKQFNPDVAZTev6Ckh0MUbjgn3yvIa/3geAR2cyS8nIm20YkxEruxPrcewj1P+/+wRLoL6nN/I/2ZwPki3YnIy0kGJQZ+9MxGlao6efpvDgaj5rg0LG+Wk1Upw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVrisngz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVrisngz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A67C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756076393;
	bh=m4fkGIx2tSBRztY8CG7utZ8I4DbKCOQYBjkLCkjAcbw=;
	h=To:Subject:From:Date:From;
	b=uVrisngz9pmeq87963iNhJTPxb+tSpTCjIY2zg+SZkUpG5BZ3G/UNLW67cLuIxr5/
	 1XxCl8Q3pWJoe5gn2FsT2O7yZrwuBPt8YkxWIxdIebSijY5f5TLjx+bULCG5yV4B6c
	 t8bn2a6HNxXaJ0OH3T+JmnLPu4eH3X3JgB+LSLRuA/M4vbUQXnVULIgrmEfIJhNK/L
	 iXHRVjkFZ9snIRSBPaAElJXtB12bjVNNPatU88PC6r6PhNYKbXxfvlCha/HRhuvSob
	 S43hIS3dtSjRjUmKkbqXLxLunLW5OXLoCOWlpr7WJyzrAJejsmKEdaFKJ7iwnLiaxI
	 uXC5QNNa1YbPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6A8CA0EED
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607639357.12240.12800480678909050953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c876b047f0ddbe98ec574693d33fe7b813de5a4b3089bf8c55084289df57a5
Date: Sun, 24 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756076393
