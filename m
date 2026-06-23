Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498B830D3E9
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782177394; cv=none; b=q9zzmtjMGooAp846Dzp6YUMrSzPrkOLEnT0uOyuThiZtQ6FfC0dckfqC6N7tsL21vKNpjwJvv1Dx6HigSMSA/mxqHJMk8kS+tre3dgtCcU1qrm4NUgs1ZgtrEWImzav1NMDSFK7FhftvrR30epFT1SEG9YZd+FocheR1B0EP1kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782177394; c=relaxed/simple;
	bh=V/isbjMbVzdint+osqZFwuiXnS527WKiMG+9kHhKCy8=;
	h=To:Subject:From:Message-Id:Date; b=q1ZvC4KINioZljp9dh+Ay/aG3TPJWd6Ajnp51Zgctbdp6YXCNlfCjeLXbNW9r2C+6HJGj2iWUKHtzgAqmgwOnD5+TXLiW7n+cXbavUoTgpoWZ+a46Ylf5lfelpjQrFlMlAzucHKNIG3hjF9Df0/REqzjYSANc3f8K8apVdnuyjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y22HyinX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y22HyinX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D011CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782177393;
	bh=V/isbjMbVzdint+osqZFwuiXnS527WKiMG+9kHhKCy8=;
	h=To:Subject:From:Date:From;
	b=Y22HyinXNrHvg18Lzx2ioMjhRHojd/8ePTzrIdVepBY6oprcG85arWIYKNWw6Mbc/
	 J1L629DrNn/BuvCmz1nnbj8UNV9pec+WlfQpY5AM6+kbCNvEJp1UCj3159291C86ev
	 zFMGayfmt3CGjyitfg61Qr94v/h8M7qwW31vpvpBwAv7vsnayxiTH6+BhzCb49EWOU
	 L16axe5ZlChl/YsbbCg2iouA1y7G4Ksy4osoNF/dnQTHCeL3fg3V/zyw/h8liaSRFT
	 RO0BS41gxc7jnoq9NpDoDUxSG+pIOxl3QSz51sLE2po/R9VEvHIi9JGbIDbVAf787G
	 DuCGwHjRRD0LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43DCCDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217739372.32470.13400713182147485812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8379d02544938ba8b4369b024dc86722f1b5c6f170a3d2ac50e725e3e4b8c7a
Date: Tue, 23 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782177393
