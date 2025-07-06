Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AFE140E34
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751835594; cv=none; b=tTzwsTVYdp3XE5ez2tifw8J0DVNT8Pholj5R6YJaNeZZUHu9mbCs04hMyhov3/KVxU4Jz4zKrboFYuHJrpQrpJdogQjfGUEwDhTJu4t1Ppqg58eRkyY7l0bmImlhVfYHa35ptjy/u3xFyXkxM5klqUUaa9wKCL9B82gRgp9tR9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751835594; c=relaxed/simple;
	bh=ftgVh+WijHOe22gKKAJlzQlkmnc2J1GkycXQzGI9LMA=;
	h=To:Subject:From:Message-Id:Date; b=TjZntGG3CvbG/mqXAenK6lGK/H+oTHoedOVPQ1c+i3vZNwlVatCWEvsOaxYr4vBtUnx8yZc2zcxQG2iuwYGNPwxs6Cd0GhHMsg6UjLSG7u9r5DB8pOiwtCH46JTIa7FR9LfPLK7TIj4EnmMdPZY5Vkb/nR3rnjhKeah6ElPDpDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fha1uEip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fha1uEip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51C7C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751835593;
	bh=ftgVh+WijHOe22gKKAJlzQlkmnc2J1GkycXQzGI9LMA=;
	h=To:Subject:From:Date:From;
	b=fha1uEipWjEdZ1qsmTZvSxOaspNXcgCkRvnhoE7SvTNxioGb8BEAF8l87SQDe1oCv
	 0eEpkvOpiOKDyYgJ5hMrwd/tDZeJns/GgyHwFX6nkxz3ueiJWy63bVR9EHEPMR8DFx
	 MSdWxZookd81hPCs2mn6UvlXuP1GsPD9ptgGVjKWltO1/b77Bs/l5lYayUHPEtzvzH
	 mzJ+t9zpBm8mfMYQris1ggcNVhDiHDVmNQZYi0tfutyJNO+TqaHmHSc1hTz+f4QY+2
	 sYMAsMmRb/H+2hDzzLl0NZZUhfu/X+zxhQnbYr/GsLzmq9gqHS3XIntALB8Lub9oIy
	 JEPsUFzpIqaOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175AC83F09
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183559358.26764.5470011870362722129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d021087290fbf3ad52164061ab14da016d73fd7f6fc14123c0f956ad01930d1
Date: Sun, 06 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751835593
