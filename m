Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191C3566E
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707616097; cv=none; b=PJBbN+3lhKVLQw1QHFE7bgKmhttDfE+R7ZwVvwaFOkBRr+jcE23xw2o9A9Cq+SpXiihkYV3V4x2hvd+4ujY7aLepzGNasjFLonaZ1fC4gzbhDI8YqrpszFLKCUscI/B5YTWT3cFrGs3Q0upSqDN2Wb8ab3I8S6XT1gIK0co/AeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707616097; c=relaxed/simple;
	bh=swBKJ5629j2qFWnLKs3qfA6tj0S246AUGuFoB+QCYB0=;
	h=To:Subject:From:Message-Id:Date; b=C2eKZuTDBDZcaJXrfg2XzXv0erHrnH7dCtTl9fLciSawK7JBefSIyhmM6WmIFBIhx7rzxXLo/2SlYZWkK0eoHIFJ84zBGLh+6BMwCAbq8Tmp7Un24vN6EZCPPPQE1zRiuMkuONroPwaTRNQ54AzkGQTzhm9Vcxh2ue5juJn4xUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQJK7JUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQJK7JUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F35AC433F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707616096;
	bh=swBKJ5629j2qFWnLKs3qfA6tj0S246AUGuFoB+QCYB0=;
	h=To:Subject:From:Date:From;
	b=kQJK7JUNNd8ulR3dy99ewyTxLajqmZo9uzMmZdzKOUsfbaE454KnXpuwetyuELzAA
	 A8AgpUglEDOQpXlLTb3BuODq5QRRaPo5TNJK0vVZUz97cP0jvUU+mJJIdhZXB3Jt9V
	 JzJHgKQAiK6jakagE1IhAepS4rtVnX3iqDjt909yGA8rLkW2sAmDZ5b46oUDtz1Mbj
	 0tqbqyBWmRuPJIMwF8C63LyzZKTAWv3p2CFkPV4x2qotZUJYt7iR8tVL9RS9gwARAa
	 SMmYUUcEMNZMhOvIDypwdJr01UElQXUYJgxoCEOTCBQQKR2CZ3yyjhykxZgAczJ2vU
	 VwocCP5XxYwKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61ADAC4829C
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170761609636.4572.16133544365362190775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74417c833f73cb07ab412e70878e18f92e611034a1294996a425b56215925348
Date: Sun, 11 Feb 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707616096
