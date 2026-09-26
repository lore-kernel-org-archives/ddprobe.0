Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD4C23AB88
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790417434; cv=none; b=BpMj+PhPXM7DNKD0tUybOfS4XjvbwuTuhwYsrfL4/Bp9O9vt501K+xjyhJXKTjGW6mAf34jni3WCsTX9xN41SMc1Rua0z3CD8iELgQxE6CDlhxxoCx6mQr6n0xrmyKW2ifOQSykhJhRSbYE+M0cjRkbf4/7DMVrIT/amHQpVJJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790417434; c=relaxed/simple;
	bh=L65Nf12Mfb+Q7g+P2IA5j+/XhJ9mLWgJqu1YvTSKMvM=;
	h=To:Subject:From:Message-Id:Date; b=mj9Q7Oon3GSQLIYwH1neMKhAfoVlUodFqER9HFZwnVpjVKnDRdWEVUciPZO6tVVrzFvzk78egxRM5yAS+8+zOK8u0Uy6orphPnln+aoeJxVzwfkd89Y4Lr6ff4FfCAAxhmJF4uUMJpgE5MrUa+Kq52SIV5T2NqgrbZ4GhS33kWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbdqNhXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbdqNhXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE461C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790417433;
	bh=L65Nf12Mfb+Q7g+P2IA5j+/XhJ9mLWgJqu1YvTSKMvM=;
	h=To:Subject:From:Date:From;
	b=DbdqNhXWFW2fIVxIQ9IWz+M+Z0kz4jh9aLIgpe5VTYDTfuVzBjCDIzyUrU4H0DZGn
	 J/WoYaEpwBjxoRfeyOILpdpgbolRmEli3vjzDmJfV+tZPQZYOcylYRU9jKM+7uR6c2
	 XACqv7Zth0oqmbpTiAeG9EGL1HJwl9fbM9+Sx75qaY+JLTLF3tHK4c9XZ0xzOgaxgT
	 jQ8MFw7lMQlw4XwVNdl0OMjILU00ZGJ81bDvVZULb5IBuef1qFnM202TdZavcOgFTp
	 aaRQh3LLLa6dSnMwlO3qyj/9V+gQWSfqMx1XKKyRnyEr4gkDNRVT+dezjKTiJyq3KT
	 WLEKwRMMxhy7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC729C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041743368.4988.1916635770561245424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a091293f9dffcdf8566222b40c687c5562235e3e46675c2d8bb132615ff161
Date: Sat, 26 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790417433
