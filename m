Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369A823BF96
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752109194; cv=none; b=kN16PssVyJEW7Ht1TAg27zaOkyfQANVGVhdCEzyxTQZeuRLEN4j5nj20aeRjJuaao9tZNlhMX6Wc/ceJjYa9DBeAKoYxPHZQoz6R5an+nEKk+lzg4vO+T0aLfGLIiGGLTgQDk2xRjgdHjqCDTIpmeU84JhGPvXzsPO6HCVsCjLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752109194; c=relaxed/simple;
	bh=cHZ3RsDPfCsKNpSG/fuGD0tGAupK0Ju4eeSjhHCKnUM=;
	h=To:Subject:From:Message-Id:Date; b=pQc7NChds9Yq8dYIsHOD5VJY+hI1yynVUYsuEAOoSLCGtvvIfbsBynKixNdknHHLayPC4C5/zYAjsHgc/gQcvncYGD85Wr8RdjG6QojHxMQN61waYji9y8IHOTL0W8pY++5fdG+Pj5DK+RAnoAK2kJHsbjdlJR3Qj9Mu5s/F9ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8Dudpfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8Dudpfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA57EC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752109193;
	bh=cHZ3RsDPfCsKNpSG/fuGD0tGAupK0Ju4eeSjhHCKnUM=;
	h=To:Subject:From:Date:From;
	b=i8Dudpfx0PTi3t//DuIhAS7vz/VZBsZVlHcmsdqIZuMv0+GhDq8gvft0pa0DShdgu
	 fTswcbXCHaz3bgR5k2iMmXfN7hrgyBW3wdZHhLA9sDwNTct1wSVM1dti12HJeo+aTX
	 zEKsUjA+pP8mSsI3PZfMIsXkzoha6TISAvVUNWSwYTz847O/uUmI9H9tbUCCmxTT9Q
	 jVwQLH8Qb+gu9NfkQ1jlVtXCAZA/6EcD8Pt0kqgHDRlR+w8ovhhgEnKsJsXF+INUgE
	 z6sp2rpvuv6cJlg6nP1H8ocvQlEG04lxqUunW5nNnytfs4athgXtlJ2MEEI7UWKYUd
	 v/5lMbfrI5fUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93936C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210919359.30698.13230949844328213994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f3b5f7e8911b7256cf96bf60e342c464eb9be55039856144c2408f4bcaf9a4
Date: Thu, 10 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752109193
