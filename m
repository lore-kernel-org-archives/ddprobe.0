Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE5D34D4CE
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785222034; cv=none; b=G0ST7PBC9dy1ukWXMTjnneg8bYGFmWK7GfQVmF7ozw7EvClp+VpGgRpKBVpZxp8ThziHye6cFg4hyW5fmSFO/cP0q32JGZsuURhUf+JVZJkruegXoQVp+5UwCImWQ79iMPYr6784//BnsxRccPTj1VfKs6xAtiVHZIyYsurw+CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785222034; c=relaxed/simple;
	bh=Geq2aUWDNRUymFnIGooXt3El/D7r7lhmoYqkRyx5cjY=;
	h=To:Subject:From:Message-Id:Date; b=cxvhXXuP7le1CGtEutKuMoeXnQ2OvFBqeXX4wYN64ruA/bTQCTdp4z88ID5h+xy8qe+laKe6bmGqH+pMHm5TR3+vNdYXtWsKArjNTRd2dxuMZzqb/2L4vq+razSAY7ANi1x0R5eq3UAiq478E9T6mlwhty4nqH/XjBg/wM0g/6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9+UEfRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9+UEfRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D016FC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785222033;
	bh=Geq2aUWDNRUymFnIGooXt3El/D7r7lhmoYqkRyx5cjY=;
	h=To:Subject:From:Date:From;
	b=N9+UEfRZHON2weJ4kw2d0jzG/mFgkCWVjhyHF3IJPb1NM/K327LOj5VIWwtItE1j1
	 BSCg7IIgG8nbZE6tLeFqbC1JYm99VccYT8iiYZD8fG2g0zu99IUi2w6dhLlbjJEQ4o
	 B9KAaP2RV+ilDS4kFacdBM+TSyyQ/0zu6Xq0QOkNuWB5AwN5kzpIqc1UyjCHbjR64x
	 wh5JRJ+o5bHj7ztzqIgfQxTEDCwjiEpeC8W7qZfm6QkIJ4kiPpX7FQdN09XL7jIdju
	 TO47MItp1GBumatqssTMu0/pcSANx+clUR8IxVeOgMta/g+UpcguG4dOOHvwaBU1a7
	 a8q0h7dGU34Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD43CC54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522203368.12874.17708764772266691320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f4a42210959a7bfe7b59731a2807637ef2ea0962eeca41cb040247a4fb0ca2
Date: Tue, 28 Jul 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785222033
