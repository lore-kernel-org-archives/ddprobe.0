Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3D31684AC
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754828394; cv=none; b=PTMauEm5T99k3/skkWhIxARugnAA6ktgfvNt03fA01oqA3EFXuP2wb8koOMaG+IJtD67QUHbeZe63a5Gn0Z9jPC+IxWFfOxixfaPhZuwNZTLK36fz3/Z2yaLRAvUYS7btOV8jJcXA4vRPdh8zIWNrOQmbrO4hSBQzT5vDtxV20M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754828394; c=relaxed/simple;
	bh=wF0BE2Qxj3LGG3M8FqabErRTk6c7raNqoC3XeOWGXj0=;
	h=To:Subject:From:Message-Id:Date; b=JQ7ewsexL5OQ8IIS0TGgUFF9BWMAjtMQ93QuNsTBz7HRC4EN67ZMkYirbK2G4ViUdQSesB1JGoMReWkGiDeVIq4lHX5Lwtk/Pfx9fBF9E5/pakddFJlIle0e2x+9Wb3Oh2rsDfv1CDycB3pObXX+IDszGLMmvV1f3ZswLNKEcoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8FblFFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8FblFFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A437BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754828393;
	bh=wF0BE2Qxj3LGG3M8FqabErRTk6c7raNqoC3XeOWGXj0=;
	h=To:Subject:From:Date:From;
	b=K8FblFFSHJOEr0y82+Wo/aJCx6D1Z4yhA97lg9OTnmuDWjVlMw6MHgQ83z505SKby
	 gplRYUyFcvufGt/IvGyEzEz24fCx+lvAtC7+rurcVG+ykNRRjkamMJCUZhe65uzu2x
	 RF94+WEJ4k2JPvV/KUSpnVUIAdoSDtb5xZ+BCoVmOoBuTuKfkSuyanbC2SpxCesw5Y
	 rcAZUKqJSY/EI3VFUK7Mt5nxZt+odD39UREihOvLga7SWIioy2wljVD9/BNbxoqAWI
	 faoHJOMyXmLBiiwx4UUc0f+sEMWhnRLTXi01Rvaq8g1j71r79hTa+HYHB3TVzxYekS
	 QnLrMs/ZrU8qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9517FC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482839358.31078.3566342439124275802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27cdbee857c189831b40d89f1535e5d352ccd4182954df9f387660144b3c7c2
Date: Sun, 10 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754828393
