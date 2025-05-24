Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9061388
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748081394; cv=none; b=JvHFzKz9cdE8qXKtcK9SldvaYimbshJlYx6/g/qG6o31Hgzdd865QGJnKTppfONpbU2shKw1PgFNrwSIEpfkMJXIlp6URfEPN1xyiYP7aQjPYKgw4kb2YCuOJnsKXcpPvexW+/QHqC2J6AYobFNQBbEBIq9FiMzAsrrxPiPg/mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748081394; c=relaxed/simple;
	bh=KpxCCMHNQCGfZcwduEd2wdfmrdFxBLFW566YyjOg47c=;
	h=To:Subject:From:Message-Id:Date; b=Rqa4ZoDTj5nmA9OQfwIVGtWpFftaCPIheBH+v7hMXgi4we74uA0WFyiLLbXJwu/uwAkG8wZ1zcdymNU+yveZcVOcrSewyG5NE47+xcUiD39qg1LTGNPXgE7R9Bi0UTWwPEJwSIDpEXFk615dg+r92J7dVCV4eQaTrXebMjjuk1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNElApJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNElApJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22F5C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748081393;
	bh=KpxCCMHNQCGfZcwduEd2wdfmrdFxBLFW566YyjOg47c=;
	h=To:Subject:From:Date:From;
	b=dNElApJh407NSIXkYYiuXSbdM3tuzA+Vkf6JtssM5tBB5w7vZpB0d23i7BWeeHMyZ
	 /iQfjzXAE8aMfHRdnMdNqifC+dxG4Gg3TJS9ogFSWg4oBzkMZ3K9Dl1wMMToMxU2ZR
	 lgArBOpkeU9LxgoXCYPwY2hVfrOVo0HlxSDnnunexptU093oF7pMTCuf3Xyt1iqdSF
	 j+0/wioSI6UFq/9DwDXrlxKmNVB1MQ+Qk0xzyuaWAuNgewjiZJy+rEQM2AuUbSGSfI
	 5YMI+aRGi0kb0SFQik2W2j49qA4r01PtEHQuw1pUXeQ4E/Z0Sr3cj42ovaqzljKIxe
	 +mcQCk1nM7cqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F360C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808139357.3554.3124375498317445259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9f30a41ce7e140d191d9c40e9f74e9061a407b5d2fc1fa2a8073fbfd3532a2
Date: Sat, 24 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748081393
