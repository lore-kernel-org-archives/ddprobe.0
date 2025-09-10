Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA602D73AE
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757542795; cv=none; b=aMTEzmiZ/4lMGcKMhdOevGGB9XrOmkamTaWbQwLg5DbY7KVfSTtaMJ247dQjmcqyf7uJ+XiqfpsWsrI4Fr82nhAFXoUoyX5M+ZrPdOgTMDpUW6MgIsgEI3tHYzJqEB+7xwGQ3mJL5bbQkRiU4ivINx5Ky6S9QJUOATX0nHjqm9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757542795; c=relaxed/simple;
	bh=EsZAjBXwDvPQgj4Z8RQKPakSUSqpLXQcH0claTTZ7rQ=;
	h=To:Subject:From:Message-Id:Date; b=B+MVVbfyluh6KSxFVvGzcrpxTzB+sRiZCsP1x43WBYFvJVHcH2yN75Zri3Lbk63ovWk2wi8ktRawQrqW/dQU3PF5HlMhWbErobELhF73UXn0FUi7oBpfMI1VWwEzBuWe43tdGyNIoNUn4IcTGI6YSDU1ZU3Xkl37PgH+kFWy/jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuIKpJtv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuIKpJtv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D55C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757542793;
	bh=EsZAjBXwDvPQgj4Z8RQKPakSUSqpLXQcH0claTTZ7rQ=;
	h=To:Subject:From:Date:From;
	b=SuIKpJtvnYZcxv8wAC0NtuBkUDg9Jm2NMyRVD3TR5diVtmWTl4CnjHRRNdLvMvqVP
	 b2v0yWFLUiMj/e5bXEBl01pz6fhuVyqSQPo3b3yy+Acr2mfONb8xM2kiL3i+JQbVUG
	 dZfANdjlKT2kgGVKytIqmV9p8PBlW7OULMhTFKaIGhBRCICOwC6cSwQgNx4BrGx2ga
	 JR0p5STyNfgKfzF2xUtorG6j/txvVTIofi4/wROPq4EIdNfDatJ0aMP2T52zL3Ijrt
	 PDKFdUJgHo6Wdcsl5lCb9ZwiV7u1eezfE/YIlqXfoD1TKVdQDGwcU/D0S9t4hit7wU
	 2zTX+pVdBJAuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9159CCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754279358.18241.10210075308100805650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674069c5bf34ddfcec44fa9c24b332423d76e5201fd01d296fa54b2468091448
Date: Wed, 10 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757542793
