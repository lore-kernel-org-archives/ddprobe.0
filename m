Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360D1243969
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760372994; cv=none; b=ZdhRxl+ueD0GfqtgtAsZM3Q7KcF7th3ab8Hlqxah3LSC+jnIwXg0MDiu7h2bzW5AVNTv6vi/v5ZgkuuQrjYwRkeZtH1o+8dhJj4xVuAKJUos5eUUJSKkSOYcRsBj1yBZKIiccCAFlj+ikGWnIp4XxI4E6WjHA9JrrrjzHw7t3SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760372994; c=relaxed/simple;
	bh=23rlpoJ4nKhn0kBHHYsOZxlFtKvFQmb92Zi5uJgIOCw=;
	h=To:Subject:From:Message-Id:Date; b=PMcbwLjr+4tVSeFvCnrwMuGr02uCOtEiLXURJbJDMojf2ZHRSJUmi0xMTnChxR8r8N0L4fVh+DhhBPjzuCzdU2GWu9fZLNFaP+sShXkbGvqUiCf56+tzdhmzmujd5WQoWhGsdWvMQS3/ijpR4WJybQO3rQeIW73G08zm6syjgWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJ9p157K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJ9p157K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20FAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760372993;
	bh=23rlpoJ4nKhn0kBHHYsOZxlFtKvFQmb92Zi5uJgIOCw=;
	h=To:Subject:From:Date:From;
	b=OJ9p157K00uOgS9Fd3aGhnjWBKkko3gzhUU/BKicWXe3J/xlO+JFzGl79ckmRKlBv
	 Fn2ner9PB7R9Ux64OXaGgK3ZF8CuzwcuNkc0/dntzoMUeD8iDRAvPfJ5GIy5gH765/
	 iq4Uz7JX0gQZCpOHPdS9BTW5/TlxqCsZYJypBs6RlHBQWaVE4ym8qq8154kbU+LNIW
	 eHnlHhGSJYoMpnqvNS4NWMhMvc9ldRfPHxfrsuNPqvG1oaLqyNdVo9PrVhqmto2qXe
	 t5qAalLLUxaQgqMS50HaD15GIbQZEN9JYEBYnOmSl1qzDy56FgawtX7P5Jx4CbfVHp
	 qPfGDVGiEabGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90112CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037299358.14343.17583620719385130640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce37281437333d3adc85c97dfae49d7be6b2e8842acb4c2cb2a28752a61e81b
Date: Mon, 13 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760372993
