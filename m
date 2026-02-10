Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F19230CD80
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770743634; cv=none; b=K2TWzyv4jQRB27M5mO7/MADemin1ADWgKtb+IPbMjns9DPnUO51NnBqBPSOp2qyNLbsoamTEze+gIc9Ke5JjpEo7E1fGupvIQ1XGZfOHLYrcgDNh2BcoTHPdRPISvvPMRk9hx2WM1zdRfwdi7Hmjcz2E53juI2V+Lo3he78gtOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770743634; c=relaxed/simple;
	bh=jwiCdw1cIPiAoh7UhDnBId3hjLqDknY4w2A1bhgnrKs=;
	h=To:Subject:From:Message-Id:Date; b=szXWafdNmd423FALXdxTKQxUoPSDRg0a3IoIfcLIPJqxy/nkqTSKEwaynIIGlx8jshXiZXYXijfQRfY0zRYPZOSX5zp1u6ZqNN+NmIl8Ss3JF34jS7ffYtUMM6oJbqmgIYL+Tpn0qlIKufHc2IKTecwkxP08bqFceYLDU9a1Uyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ey3FhSuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ey3FhSuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B6DC19421
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770743633;
	bh=jwiCdw1cIPiAoh7UhDnBId3hjLqDknY4w2A1bhgnrKs=;
	h=To:Subject:From:Date:From;
	b=Ey3FhSuXcQZhmG1OuOvx3yVDom3VIESml9faGiQpNRoscVh4IFNVAorKbGCid85iZ
	 uguqY8WBmvIq9bUW/tJJrGHdQK7DBpb2R5a0bG0xWWuYD1WJlGFU6Q3o+NUi0+gU4/
	 sxuTFCCOfJe0657dRjzPSDl32n9J5Q30jupfLMSxTdGRfA2DpcRuJI22cQqa9kljE8
	 TqZF4Fs0XZQNJtDavaWY7yNJITMpGQemrH71GPueuENSj49vPlREX8uUBjBNSL63Ql
	 hN+4l4bL5o/KYtUzcFUZzx7mQTI+Xi7D6KeyfecKVAfU1BgxDh619nZGiYimWWhKyt
	 PG5rLTM26iM3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFEDEB26F2
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074363367.5965.13336274101951920050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5060c5ba449aafc07c9abac2111f2cd558641a05af20c8db0146cae8675105
Date: Tue, 10 Feb 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770743633
