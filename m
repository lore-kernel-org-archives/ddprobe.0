Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441C3199249
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726737954; cv=none; b=SDp2sRXs4qOce56wfiOHOOiEVMr6bhEPblJGqAwxwIJZwFGr0IcgG/cY/DpqE17TzgAX8rgsK08vft/6xRQm69idKAcW06W/uAUvcld/CeqHX6chvsYyj9ZTkUXVx6CDud1T+V6NIQviTGB7PEBQnp4kdUbRpyQiQUplEfS3Rmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726737954; c=relaxed/simple;
	bh=5xEwj3vhfk+4QO8eLhzmlXxwCA9CXEO1iFkiTiWnGUA=;
	h=To:Subject:From:Message-Id:Date; b=in6FX7s2ULWiQjVYhyfBnMcMkehNQB76bknW0C9WAgq2/Hyp38kXuAIFZQazDI46uOfmqbWTj6E74vbdsCj5lqRwYHa/TnhNvwQXhtqMq+xnXdHbDczLbbxkTVQiwRI2Jow/FOM3K+0zC678/qao2R0TYmSEsN+qLQlp5DHOGh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BweTjPy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BweTjPy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E08C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726737953;
	bh=5xEwj3vhfk+4QO8eLhzmlXxwCA9CXEO1iFkiTiWnGUA=;
	h=To:Subject:From:Date:From;
	b=BweTjPy/e2uZK18u+7cLdSlmrozRQL+SevMAtiRxddS7PjjZnoc2hgExPmrIzJVLZ
	 0JzEopNBWbCUZ+mkUv90wPgQrlb61dmWCkMGKX+sQ9yboJ7SsLSrAx9nWpTU0iZjMs
	 5TxDa4lYfor67v2j9J7vSEzn1fZtXNSfyYF7KXdTq7T+qBsrPCKoNR3U62dl7OTHJM
	 kLrsukZZGGeiBV/df8a4HpR23yCXnZ35nAVtAi4TidjZNjV7TqPVNgmybv3DerIsI4
	 sT6Jsv65j6lKoIBWnM4JCIyDq8pdmMjnOAOhoZYKodnNgbvn1soKTCdJlDALqzyvhM
	 alUiT/7nHcG2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AABCE8D61
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172673795361.27799.8019313059570858877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8214df12e227d5a51069291109189155c0cb755dd30f7bdfd65954a4ce7aa2
Date: Thu, 19 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726737953
