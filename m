Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F6B235071
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750127394; cv=none; b=i5DpIMs0oxj6o1zGf0F6qvq4kW5uFkFVUcD/CHt4bddl1Jz9aiTFqUWkxv3hD0dAjcf3F0yvAKT4O2FrJYz9g2/GCNjXuJaL5oBsKzsYZdu7MfcYSJaxI6ykmwjiMWTvsrQtGEvtiklPpxgY7aXWRu4xlU5PX5KYDT1tUaFliFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750127394; c=relaxed/simple;
	bh=UwYkAJSd9pTZKhW0MgGCf4HJiUtxpiqbSaFesAspAQQ=;
	h=To:Subject:From:Message-Id:Date; b=GKB7ILrUazJM4up6qodMkjNlExNZ7nRV0Suf2+dWS2NNEl2mOXrVpdvuulLPliE9MEQn64DzXVz/WlE++1cFaRF3ojwhneK2m7DsauKSSIwEfZ+v3MjHDTqQxeP0rA/7mXf4L5FbPIi7WDBKa7/FOh6LLcPTC0CDtHfn358aWBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OG+2zicY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OG+2zicY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF998C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750127393;
	bh=UwYkAJSd9pTZKhW0MgGCf4HJiUtxpiqbSaFesAspAQQ=;
	h=To:Subject:From:Date:From;
	b=OG+2zicYVr0zAOsGpOn6a3R17PEzh9kRYyrssU38R1lvR74PWrQ+B4bzaJudSQHRy
	 p6g/QJWDBbUsR8nqSvW6wm1EqJTnu2DRy3errrWZ41GDKJU4hWXF2TqVDDIArDjD67
	 +SfwPMxr7D4dydY4/sf1vG9CFsm/fQndvD75+sovhWROqiQ2VgOwDn/RJEA8rBNFWC
	 4ceWplikgZyQJgonJsQVQSjI0UnxL7ge+0NIsAru4aHqUfjYBKAxS5ZpLPZWvgLCmM
	 VtB3i/8zndgczl85mVUly8Mbhshlv3dhFmt/ijLNFk5plMj7l/8vG3Hkw2IG61C1V4
	 E9UiR2VVsXsTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B451C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012739362.7983.1000195943258118212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7a9140cc4db895315669dbf0575156a86ab38f5b514f00e36b3e95e6c3e74c
Date: Tue, 17 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750127393
