Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB34DF42
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733025354; cv=none; b=t2v1+nfyQNWWJivpKoas/AsiHkSh3tiKMRW7555M4FRwxsDU7zdQWmms6aObqhzijtdcUspSpF5sUZMemioLt3/YEAuBRANl7ChhjbeT629AUnPO0JdBTUoPEoCOkW40cJbnqJwVeUmminTOJLGQ+ut8B9XbGKw+fp+FsoH50pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733025354; c=relaxed/simple;
	bh=5RTdv9kqTvjGjGZ30C85c803zzNr3DowY9Fs/2fNCV0=;
	h=To:Subject:From:Message-Id:Date; b=l+S57EPDjxAwiAkwa8sgAXm0B58KHq8POaIGpA2mUJNxWNNmhbK750UJLcvFbgVZuBuhk21y3ei4HqS6nKQDkgEFd6nnMsgVjuQrXKEeF4d51uxRRJBUhhCbk8U2yqBstbvHyxgbFQMmDbNt0ybtqrHr/CREYifbcXO60AWV+nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfHMYLFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfHMYLFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04C7C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733025353;
	bh=5RTdv9kqTvjGjGZ30C85c803zzNr3DowY9Fs/2fNCV0=;
	h=To:Subject:From:Date:From;
	b=WfHMYLFcIVdKfMdyVfguZgb3FFsQYTvnvadjMAeJMlYQaCK1g+dC+34HGGGHpxuh+
	 t28qhJR/frbpiaeJtKT0hawzpD5rGSg2gD7fHm7B/1PkjJFpaGHwN+nr9sd9Osc4yn
	 jwHxlX2+v01v6ujgHo108xa4kWmVfipWaq5eyc6eiJaDGf+f/dXlHT7i4qQ98R9pJN
	 WdCeTBvnyEy22YGaEvWjOMnST1eDFYsCWnLeSk7wXFu5p3GM6aPAUtvgo/MSdS96bP
	 SS4IFg2staLkTNxDnY9gZxu5FyeuT1ttqBUD2Mrwp4Eaw+sCyT7anZT2OVgWMwKnXX
	 MaF5vwdIdicAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB33D735F0
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173302535357.23221.6956989156578838074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce44e31cb2cd996c969533f66c6b236818401cce87cadd12d4a6e335c6eaece
Date: Sun, 01 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733025353
