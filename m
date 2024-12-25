Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478EC33DF
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735110954; cv=none; b=BNctHStKdNorC3SLouooQWQKhSpKJZa8lL1nNuUtSBCnycrIJ14zWywr7XVWgyLjB4Fp/bZcWPb4J0ZKpAniaUTBY4AR0MjioFf9tV8abDx/Ub0KDy1HHwI8qx0WO2MzeCOV70BW/L2gl91vOXMVApsw/cxd9tLY/oO/xUhL/oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735110954; c=relaxed/simple;
	bh=8XXC5Jw4v/0oQPPgGnYfgDl6e0X6MEGu/nbf/LaUodc=;
	h=To:Subject:From:Message-Id:Date; b=h+TNh2HTKg9hLZ/izJBpLYzWaVKVK2xpTHzno1Wo+Jq8qnWQrjs1WDx960mQLfZUBJPJ6I1RLr8vUh3n27V6EpVAo4dTHuN1G+J6Ocmfy8a5xab+GLnVvlOx45SyIMaF1ROvMEP9jFjxIEsE6jN8fs7qmzmdfzJvADunriwtBRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkevRClA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkevRClA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5201C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735110953;
	bh=8XXC5Jw4v/0oQPPgGnYfgDl6e0X6MEGu/nbf/LaUodc=;
	h=To:Subject:From:Date:From;
	b=tkevRClANpl8Tb+a3DdXeJWMcu/IUNkaJyMt6lmSxTf7JEymPupwl2djJkv90AYAr
	 rym4Q3vdsTO4QZonOz5fDShvdkP86ZU7wpkr/enUbp1RgthESTm17AZjdeLCaDHCjT
	 JBlO5yNkgVpBQkUQjnEz8jXFt6kX4z96FOZWLXqm1xIKGB1WwOrK2JweZmZTjLWgPx
	 R7N6h/FBWzFVm1YBgKQsAkrmsXJf1XPyVSfzCLBbHpS7errckH6bP7eUM8Hc1thY71
	 QFIthRFkUy4rddg49JH954VzdClJ0x0FVZnVNP9HcFPQTFtYzhMD1xbrulXk+v83Gn
	 5vZZxT1g3+nGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F01BE7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173511095361.9068.10583817383238241718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3326e72ad7e88bb71e9e3ac936bebdfd00b5b7d53c3565df56dd6ef4ba482e96
Date: Wed, 25 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735110953
