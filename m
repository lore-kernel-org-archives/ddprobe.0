Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185411292FC
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709677097; cv=none; b=sTdXZceSdV5og7V/otLr9qRNAeXBVl34028/pXpVVCsdUC47ChJDyUobwBkYRiZxmkXq21dM8Z2j35CBMa3kBjqiNa+td8uUeQ1kzQBzJsX6gLgnQRGsMmqxLY36AkfFm7wwKMTnRh5JEQvNYpURD767/VLWS37sxLQy8IP54UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709677097; c=relaxed/simple;
	bh=lWayPJq3/O7YOlluEybPMoSEk74JjdkpitgQCBAPaoY=;
	h=To:Subject:From:Message-Id:Date; b=Gf1ts+XbkIcCHI1X97mPK59Ej9heI4CtOtt07fQhRgFPSqUrD9eJ9Y6VjR2hbhb905Zxb8ZNsNGiiP7AVz+Cwsk1t4Hxcx1keXbY5LYGoc1JhtPik+tgzEQ2Vu1a86JrISvu8hUpbjzoGHmQZGqGP55kb38Bwlq5p5QTDfl2go0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ns99LDTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ns99LDTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8170EC433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709677096;
	bh=lWayPJq3/O7YOlluEybPMoSEk74JjdkpitgQCBAPaoY=;
	h=To:Subject:From:Date:From;
	b=ns99LDTCD5kBnzqe5qNSQqEEyZ+2fIPrjjrRoL9WVI66maNnYN/H2acy4Z0K5AeT6
	 vjMQtYS4eCXvQ7kuyRe3FGZnTKwOiHVNcH4AEZRIPSkVJqU6vWeo9C++5Sl5Ng1heO
	 sPBnBtMCPtd1cABiFaxHzMvCxkbuB+o8KyV3w2K4UF3fmnmAsOGZv4XrW0TF/6kCfF
	 9Fam8pfAaupj4QQa279UgNfxZYeuFhr4UXsu+zO5v33JWJTmMmAgJP9yK9PxClTakN
	 CISJzv+Kma1+GPJyxKWKVwKorMGjPRO4SWsBEhabqcYqIcUSEII/1qHZf5MFwp9vga
	 NCmycixH79a/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D36C54798
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170967709638.1626.13149086090462163971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011f9f83d23372d9f63e87a0f274fa813c8567b4c8e9d03319df10d062b6a4a3
Date: Tue, 05 Mar 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709677096
