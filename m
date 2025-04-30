Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2803F9D2
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746035394; cv=none; b=mtUX7C3stUZbkh9YuVuVovWJKVemYafr0nHf8C/UyhlPX/ybx2xlOMp0c2s8eh1kmY+ij103UrAyNPjM1bf/e9F5ITTiPvwTSADOC4dkcBayDFNQ3O6lUoOoJfAalU5OPZ4Mp9llqSYBtmNX4rwgHy1gpK1YrbEuGPtUi/XOzNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746035394; c=relaxed/simple;
	bh=gJ4ieG0h/Bnxs3B1agJ3K+F5c0FJx3xH3EXj75Sb03Q=;
	h=To:Subject:From:Message-Id:Date; b=fe80upSgOLjkLDSBjAuPf5/KPNjulfwTouVwYqGSsmAXfxlLCO0hxaaVfK+pbjQXh7sCRMPFENCsPyFRBKk7VZkYjGajKKlpAkEhSXJEnqzLDn9nlbQeYNFjr25gVNkDRgL+13fk9jU7hj4gjjxRt4RiikXhkWwTx6Ipl0En1ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBpVaOkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBpVaOkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C53AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746035393;
	bh=gJ4ieG0h/Bnxs3B1agJ3K+F5c0FJx3xH3EXj75Sb03Q=;
	h=To:Subject:From:Date:From;
	b=DBpVaOkOg2ixosGAcFmRgr+q178QeUVgJqs+epfUYUl2i6DB1j0utsEDWfyEqwhv3
	 PTE+ZaI6XG85qlXRdrbRK4d3cujvYy5yUd6af0EFmkBmxMjZo/cr1K3V2IZIv4Rlm3
	 sVJQGT2BvTzf8f7y+H3/OdzvKEPm/H6kel8H8dlqFRQgbumQRXS6Br4P9J4LS0W9mt
	 972yALK1+aewCTJXwLiNF4iS/YsHCdy8fVZfrO+w2nfiprc5sFrSq7F3guFSKO1QV2
	 Av+LIdtceQ0b6m7YA9qPDR2Gemlaz02aw1F6TEjNtDAtw0tUB2/T2n2Mt8OcB3WkZn
	 x1Q5X+wxHUcYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF87C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603539357.13207.16474354967559805718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05dd003f54442f2c11de9b36aef534245fbc7980bf94bfcfa98eadea433723c9
Date: Wed, 30 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746035393
