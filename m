Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A427EEC0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759357195; cv=none; b=s88CKfUxIF0SE0S9Cui9xCNeTdpVGex3r0PKhdhw3jN0XX9i7YP7Sfmo//c1KsLpSeo3Tu6lhhxm6CgpH7mWvykuqbDuL8vkN8nZGA+jtGOMBbP7pCQhpeBP88W5Qf1ccmz/VDP6rJEIA7HuYjYDIEusz7NOC6FH0nqHKXutk2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759357195; c=relaxed/simple;
	bh=v062JSZP4m/PBwggLLfdNbiyxrKdYzriUpTthGkoz/I=;
	h=To:Subject:From:Message-Id:Date; b=juSj6S2TBQuQWkWvvE3veqxditm2S7o/JjukwZHK3b0HFfqFwWEnT7TqvdueAaSgLr0u993u/FnH1JI9NkHu9ASA7wUYPyUCTF2b+jNNn4msTGRyMx27jre3/CN58ZeJ5WwC2/Ejssk6q2g0TTBsBGZCMA9Ps1icpc0BqUVpOrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVIkksd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVIkksd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C2FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759357193;
	bh=v062JSZP4m/PBwggLLfdNbiyxrKdYzriUpTthGkoz/I=;
	h=To:Subject:From:Date:From;
	b=XVIkksd4OCTwbB0LeIp2trIq+i7HBjQwiPlTpJaYdKDBGK5v6qsLQk5RWdIAVLmBl
	 frFAiqrY3fUHBlEzKdLSsbt3lV6Qh1ECG1kqKhpdAdH95OEtNZ+xFZrxXv/i3IHA8o
	 0f05TIo3sLMY0rUl2rMefjZDEUsS4VgM1C9++qo0XTtxJ+BA1bXFHqfrwemomBWPWK
	 ibNYuIxtzkEiVqBE5sVnIUewlC3c3fLd8Z4d9dZ6jXlPn5BnBJAYF3RPFpzr5U9Fmf
	 kv1cySt0Q81jh1jQdvIlM+Jmk3DTq3xzPQ+4WKeIHZsmU0db2N6o7a0h6vIWu3shVp
	 IeeVMVvSCF8uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FB1CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935719357.20152.5870560187931066993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b7b4a60f558f98dc5a2e444afb89c12147bbe1ac273fc0e710ffa30f8f4326
Date: Wed, 01 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759357193
