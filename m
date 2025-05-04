Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5561EA73
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746393594; cv=none; b=tWKhQ3PhllCqtAH8QtmCEsUsxY92jYIfJ2ZKzjh0vZEJTghF+J1G3rpPPW3XVBMA3MobfPsC+pF08sK5t8BuHA5iOlGz6Kcu1jPy7S0xrmpsEULspEaVoVWKoTTzOjyP42eU1Nn6yqaQcTBgP/ygXSFSNVOT0rp/uHRey4TGAsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746393594; c=relaxed/simple;
	bh=aiuPZ2Y6itAb9nwQoMhKG/yI67+WjwnWBI5Ps+E28HM=;
	h=To:Subject:From:Message-Id:Date; b=Vh2y1hMg0Q9FZy1P5HTMdrNGS3Tao7+7lMu5f8Pj/0Qd2byC6xCVMtRqN0fmioFXIqzh2Np206GOXKlMJcxVWD9OUwgu/Gyzpa1pgFS3YKotHENs8ZOCSKcnoyJ390WGRvybJtpphlxJpsfpajl4EjPBFhsvOxsmeiJ4Xwwy4IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoPKhuLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoPKhuLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02D9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746393593;
	bh=aiuPZ2Y6itAb9nwQoMhKG/yI67+WjwnWBI5Ps+E28HM=;
	h=To:Subject:From:Date:From;
	b=KoPKhuLLH3UYE7jZpTFLNkDg23QGFwcTOWkdIXYiejQdCTJ6G4+zHtDeE45moJNDg
	 gYFd9Dj9lekVj2dGKYtQzC7QrvTBaN4I6H+x+go/XMbo8MZIDb8eLLKdQo5QOXZW3f
	 p0AjMKTiko7haBuKhdr40nxmqrwWvG3J26JH83ftDo9sUnIMZ9W1XrOg+Nf41v47O0
	 by3vmbKXuXvjghWeOhHHcZxyJRuGRF8AeCfNHELcbv4Ai6fvjsHISNru1diqqsy52T
	 CWOp3fBDY2Z0Z+L06VOopVoOIyN21Vnjs5jiSsOnpi1b66ad2DY2BXZ6T8l2bz+LjC
	 Tg+VnzH4FbClw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E23EC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639359357.5024.11045489936450142846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b274406a1c6786390ef826e16e26a1bfb470b3b3a91bc13fb564956a066ed4
Date: Sun, 04 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746393593
