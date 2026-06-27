Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F21BE555
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782546514; cv=none; b=ghoAGJgqskp5nLx91YpUdR8AUkQ5xoCsWDZiTRzqVcwHNWt3iuSVLm0WOecqPH2OAFW+qsUmjtTEUQUSeVWcTdhenEhZ6Dsbq0BkLdhq16NYHPJ/+oEqZGOph9KrjRw8uGR8tXGKaYZSvWlDhTnbWmOfhYWl73/mjgq3KLl5QSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782546514; c=relaxed/simple;
	bh=cSjOFK4driBbjPys/w+5RebqvHNlNG7BxJpcQlaIO6Y=;
	h=To:Subject:From:Message-Id:Date; b=JB12LMLScN418lnUD1z4iAtNUTSFTXYKyJVAo65zNSd9Pxpf/1DL7+MtS6DaDF6aDjBqGPrZ4H2qdMJaFVZqvfehLWsD/SbpnFOhpixoCTV/wOK8uvBV3ww3Jf0InwnBu6n6RmTg58O2bNqnlcuLF6M0hOtycAZjwvwrdH6rROs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIn5JYeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIn5JYeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA4EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782546513;
	bh=cSjOFK4driBbjPys/w+5RebqvHNlNG7BxJpcQlaIO6Y=;
	h=To:Subject:From:Date:From;
	b=HIn5JYeS+iR8Zx3x+FyVYSNBsQc4G82svV5Il4NgEWYLtqKWwTm7ndZhBpKBPQrC2
	 39BKgdxgpeEltBvPhffeUzzeviylRF0P2hVQWAr3eY2xtW8PwrLrFfMglvFkjDpLWC
	 MaLPJTJSyRAgL+daCmipVxVoWpUYYT8ux/3ahudmnuJv0Z3P6gauNveiRpoE0cKgrV
	 LAAsvreehTeiye0AQueJq3EEnLq/5HlVtKrl14tOCA0oi7le5x0uyqzvRiSrz4+pSb
	 jKCp78gOJsQeAH1cPGjZA+DpRQ7Hdhrtjt3xqYa5DIyFTaeddbjBF0M//G2VUcWt59
	 InaxbXA2nwg0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E02C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254651368.18596.5902502842223409078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea9c2dbb6071df25f39aa1213c172dd14df95571acdd135fa2ad8723e5d2095c
Date: Sat, 27 Jun 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782546513
