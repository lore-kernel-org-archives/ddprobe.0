Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721BA3EDADA
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784288314; cv=none; b=shSykil/cz+Nc3DNem+aIjNTUjO84sVlQKA4cN2hl6WWzk+U6A0zsKs0jspDAbHiWnGIeLEizGEqIbOwZFfP5NWeUheimTv7p+c9Kbvn8IEwmqTyr+kobc3O52JrqXk2asLcCbY+O55dmAt7sloBvVtS3IBBvGYq6bWrB9mOluk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784288314; c=relaxed/simple;
	bh=M2dGhq33eMKrwXlT8htuwzbTsIF9r7DhyShv+MUR1Pk=;
	h=To:Subject:From:Message-Id:Date; b=ghzef+QtUTbyn7029KNuu1F2LB1/iCZqPiyzwo7FeGOV5F/eMlR9PQdjsPNZf+9/3czH5jQxjrxanpwZaHpnoy5q/aifKgJd+bY/V7aqlZggiJM5swjB3W/DrtHdSsh/yXCiB/u38LJWgnkoOJ5EK8vHk6uj76Y1yPtdfismKU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=in9XSUp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="in9XSUp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F9EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784288313;
	bh=M2dGhq33eMKrwXlT8htuwzbTsIF9r7DhyShv+MUR1Pk=;
	h=To:Subject:From:Date:From;
	b=in9XSUp2Z+bIfc7mmxtbZuCJwmODbmvbgNyjMrc5MG0ap+Q+zFcUL9TCklQDVJ83M
	 UzegQTp+TXWdbTdg+XZ7Bsxt4E6Z5A3Vl8vSQBRnM1DkLXnyPRNL15lmDmPezHsesM
	 4irDmfUStbeoqG9xwu6LSEmqfJePr55JSUiZPxE6h/3lK/Vp+xPcXE821V+saFKFEh
	 eC5VA4Kb1RDYF4r+bP5k8SgPI7SPkdJ3IDu4GNmk1Nt7PZhi9Ma1EWK56zq2MUQTsK
	 zzy1Z/UtRI27OiMWXhARND6LbmHczTK3shbYks1RKb09W0nAQOKn2jmhlw6NWfeYx3
	 m0Sj8lH6I1f0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2631C44516
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428831370.14851.15087461911157175612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978c9d3f3cd268b102bdc04bdf2db3d91e31d5bc454ff155831d6e15b12b2870
Date: Fri, 17 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784288313
