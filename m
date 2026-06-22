Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31724131E49
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782093994; cv=none; b=RjuELXNXKb02cfF4FGO22IEiSb7hylI65gzMrtuTvufEnJELDtZa/NNOgrLfX80kNz72ON5kwMUN2q9ppVNNsye76L0uJStxpUQkK9b6II5mrIhR9CbCKi4D2u7ejaIYBllx13d4OXZW5X1L602ret1Sowsg9+pCUjhN4myzM+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782093994; c=relaxed/simple;
	bh=0Ll56eHnv1Ir6c46+bZ0u2TkRh2+zqzXWlOqfixld3I=;
	h=To:Subject:From:Message-Id:Date; b=Jfub/zT7cMrWXv7UKi1gcoNPYrhOIJq7p5rG1SOoilOmyMGEt+XjAqNdH19ZFp1tBqgq7z+dJC4Gyh5+gCTQs4jNFvJRLZgE706P/niHD91MLcdw+yJ40Fx4SA3o2wNw9GIQNTtSr8M27lap/8w/VNns3h9zPCko1snt0pUBz34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3uH+G/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3uH+G/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20A5C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782093993;
	bh=0Ll56eHnv1Ir6c46+bZ0u2TkRh2+zqzXWlOqfixld3I=;
	h=To:Subject:From:Date:From;
	b=Y3uH+G/i1uNUMv5W/uZJWup1goJcVmWKexqDLZ+0fNzbfku/as90+EMkyyzmnsR9U
	 q9mGDhrzgt/oD9z76TKimH6xOVkHd82s2x7PS+cdDxBVKz2JH4Pc50vQYi+oMpyxPJ
	 A3D5E1z/lAqk8YMwsM2xZd/7t26WV76mK+e3nEEQ8cLCKdstNP0pfLbn+L8VCoeMZf
	 odkD8TGD47cYDOGeJYifDzn7rHdAni8hAx+PKcdAWWsyQV/NAhfXqcjA5n3bg6PEcS
	 ks5mvk3mc4sICiak83tLUzJrXet0r/rae1Vv/Axf66Fx7iorXIqeZGIfmtopA/8+cV
	 XsMghLFtEyb8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBFFCDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209399370.8373.16896716642270407481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d2b37e5b534aa625955f086fdca5faa7bfa1024ec3c2520db5bf2aa2bb9370
Date: Mon, 22 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782093993
