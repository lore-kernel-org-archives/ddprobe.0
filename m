Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194D32882BC
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757704794; cv=none; b=mv0faDByDjJ5gEcd4/m7Yjs/OSxEdHeLFjOio3D9NfODwZl75Oo00dCJ5D6xZ2/BirI3zvJSgTGB9USlNCxAn+XPsqjLj0aL8/lbqdMNFLdu2I1jt7vy2T6zUuhCX+HdjVrIexKUcPKx1X9qoC7ruJs37KWsmjXhKyp4mdGZlgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757704794; c=relaxed/simple;
	bh=hlBReugA8eVBiHFLFQJD7iPCipeteOJOoU6xZRaa8pA=;
	h=To:Subject:From:Message-Id:Date; b=B/MmygAdGx3jUuHAkDTeY2+qZdmRSprm6RsabXysAdhznIvMPBslWJXYWEy6lYHzlNdd5zJy7kKZ4pz3CdN/nXNqaCZzzZ4aXLoiT2skJSOqfx5uhXYFd6ro46b49AVCja39rWBxdSxROblNUo2q8W4+fn8XVmleBho5A+nFjG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPVF9LEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPVF9LEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED58C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757704793;
	bh=hlBReugA8eVBiHFLFQJD7iPCipeteOJOoU6xZRaa8pA=;
	h=To:Subject:From:Date:From;
	b=CPVF9LECbM1XCg5Cs6ZU04+OOGxJF+4xS5LuA2bInOdH3eJ8xpbTXSgN18ELwKos0
	 SHwmGXJ7KnCIyFAv9LMWsIzPoUn1tphKjtvulPu+LZym8rExABK53akciPqAltRlCN
	 nknY2HuB/+qIjkcawkXDj/ocHJU8BkRk2XpaaZgsdfwEbHtX/XwlTd+pgDE3YLF/Ph
	 Cgjsxv5X9zilaWCr/Ae9aJYsGJbG/9kk8h0IgeAxVwhZ+B95w782Vs7M7jb0Inp8lW
	 utxByPKSAp1jaEeSRqSp0oxcZ5i33ckQZYBSN+wNmor7GcYQ/Iyo7vF8pN/nolNhJN
	 c/XA0cFFP8Jaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916ACCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770479358.31381.10311556670132837160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da42c0b8ecce8e694cd498482ecbc5292ccd4b099e3ffcd392b31eba11121be3
Date: Fri, 12 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757704793
