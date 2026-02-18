Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DB519DF4F
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771383894; cv=none; b=Pn6TE77Oi8v9ZJiuMnB1LL/eV5f0rah/MHmf5h8CYcsYlppOJPlpeiXJmnvttiHz5sVrWuz/pmiIN86iV5QbLAmhbj6gJvIzj5vwqWr1CZmNBgrDk+b3RJcOMU3kZT4JbowooNYcF5+c1mTSRSsOuh0asBmppU6fxumozoKRePs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771383894; c=relaxed/simple;
	bh=Tgr1/M9GPPxys8rv9n54+L85zr62TSC5IBcfJ2q2xE4=;
	h=To:Subject:From:Message-Id:Date; b=JvwyMGsyMVpdvbbi8eOzjrKiKOllaO1DS1s3Z5kQn1yageVu/gGhq+tboMdxCB73GBWXr8D+vLslPhq0hwohk5ajfGM4gUzDQlII2H6vg/715ECX0j0J/KV1HGcPOCQtqcoYYMogJNO4NKng4cwyI/3obl/1i5uyL793HR8xVII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDuL1oxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDuL1oxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B666EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771383893;
	bh=Tgr1/M9GPPxys8rv9n54+L85zr62TSC5IBcfJ2q2xE4=;
	h=To:Subject:From:Date:From;
	b=SDuL1oxpx0AAoRINVuOUq02CzXY7bSXMAP2uD+C+pOr3HI2Jyg0dYUOn1+CqPBvLD
	 ffgUDHd2OCuJVU/+RH5q/De+YAt4b4pjsmcssAzc7JJK+AMX2xiWzvxpGeH5E4kg5b
	 m3GMsMl7pa41mNPecQCsVkPXecXHSq2Ngt8FftwOTGxCickolScd+ZIwWYfAkPLjo+
	 t205jBPjiiOCMkZuVs8VvBGRwfxP4o2gSLiR94hXkwZeSOeYkbnMjqzNrmxhR/1j/a
	 UyYz3E1RX+SaM1ffWMwLH5Wv2whlNNjkYE7PmXhYDkFnt0vY3KX1MCzaTgIpCA1cIc
	 ao0/9xcIIx/mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8B8E9A041
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138389360.9872.4822560343766976548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1311daca8659bc9dda6b37863c986f42e620b8866362b520a74e10b2cb3d7bb9
Date: Wed, 18 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771383893
