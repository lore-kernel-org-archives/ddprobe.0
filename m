Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69844282F0C
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789834834; cv=none; b=HqGDPEmJMhtfxdWmTPLq0rdBtboxq0Lkxc8dC9IedIHl1kkbnq2yeL4QzWj/49c1h6N1j58n+9vEY+QlnbC3coRuDZv8oJ2C4Gi4kdiWHOJEarXu5wk33PI7Al/UWfoneiiPkQOTXQV8WGM8wwhF2bLfku0Jh3jfQbPtRFtKg20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789834834; c=relaxed/simple;
	bh=zWdSmKve4js7Q4aJfRMGbPDZK+bwwfIQ9yzTxKVWA3Y=;
	h=To:Subject:From:Message-Id:Date; b=m/XuwEW/dUbO1it3LMz9JkAb14VDEeD9E+JHeUb+MdCuG96RTiVWInrlpxOirwSaShuWalKzHa9EnrmvffZ1Zs20CrWZ9IwOO05LCiZ0CwacP8jmVDmE5ROzSKbBOJFG/8AQV//y6ZNlrgX/DP6QHNQmYi8i+4CpPgXuSW4IoIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uo8RA3O9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uo8RA3O9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B9AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789834833;
	bh=zWdSmKve4js7Q4aJfRMGbPDZK+bwwfIQ9yzTxKVWA3Y=;
	h=To:Subject:From:Date:From;
	b=Uo8RA3O9rF/2GtXbmmZXbYCrhXDMvZ/s0CHFffE/Te55GcYG19/NBXvPzaWoSuiap
	 cbXRcv3nKxbDkLq85tp0Bpd7IvBF2COiRxMGJxV4bCj5LMLWuaIV17F9leTeiAWAVK
	 HDE7+rrlZ4KptqCEP7G6HSxtHTKxAst4jn94coWn0Gtqg1B/MOlX7lIg+pqQHk71F2
	 mhaNA5rDBDE9Ml7NcFkbpPepk31e7GLEAaLchqSQfboMdUbGBGfzutI6PiG7A1qwLf
	 DimHnFuab5Lv9hGtMJZTLNwUTrJycwfDg8+fYpvPbxMgj6Mf+yNWzNwiojf6cXMrI8
	 FlWwTIMhP1D0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3C2C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983483368.10203.17435035988274942769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a1b04fe6dc2feed844ff0b7a30b9697886bd3546a110a927236091e9bc5458
Date: Sat, 19 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789834833
