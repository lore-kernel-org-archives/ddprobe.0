Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4247547A79
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 22:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712876363; cv=none; b=OUqiX3oqt134fAO5SLAnEcZPx0LXWtZqRkFQmEx2UZ0Tv1geAT9sGoUOVAATWTkxh1uAfjfLLdojjEJuGbY2DJfumAdu0h4odpcInMJ6mfEnQpQasXWaC0bHdRzQccLHJIorDdjuR40lS0MIImC/theeEzWkc1tPPlt87Sjajdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712876363; c=relaxed/simple;
	bh=qibES2j81XmYXpj+KczQ6thAJ3WgDO37EsDmiFkTODY=;
	h=To:Subject:From:Message-Id:Date; b=j3v/KPkwaZesmiQ9C3fpcX1w/tY1sabGsVjIKpZmICEr9V17D+lrSoTnWMk5pG07+OJ3whig3QhbGznbNXDAqonjaQHSnfZZhGGupAHFjSCy54T96KgsJOulgN+HepeCw5AVoZrCu71IGDs7pBFKHqkDMJb1mTyUtCzbbXtJMVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8vAYX2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8vAYX2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE667C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 22:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712876362;
	bh=qibES2j81XmYXpj+KczQ6thAJ3WgDO37EsDmiFkTODY=;
	h=To:Subject:From:Date:From;
	b=o8vAYX2KGSJfNgNhsPZjTEC4ZkooCDws7CKRi9zuiAeYg/qw+h3OUhZDObQsyskaw
	 9bhUKJZHKUFU4S3uJnvlwsL5VoC/6RYvmUn1UmhE3PmTh2eJnimNA9Wwx0pNrbceRr
	 JMtEWp7aowihQhTZokzSujoJLC6mE3zPygKUJnxuGq0uJwK8cilKb3d4xcipbdVuLe
	 Fv2Lt1DfIuEycAGr4qllbzb/yvrkllaJKoGtAC+INwB9qC62WxjdQOBVWwGmZmJX28
	 N3MGp/5NFvSaXm5Wkr8+HWnIbSH85BoLbegiuTiVS1IIlti2oHfOrtqPgZwkqeXzpi
	 947cpLaxeGf1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE654C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 22:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171287636275.30140.9956746185114894441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fceed46b4b44e404880de771628509c4628ae95f8694bc369e84b3b5f1ac00a5
Date: Thu, 11 Apr 2024 22:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712876362
