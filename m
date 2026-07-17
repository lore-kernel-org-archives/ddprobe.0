Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFAA64A8D
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784261914; cv=none; b=WJNYC2NMHnxzcjffBFPm/FkSe8Vo/CxZ0FMsCTOP2/VsasUx0XL2ZiA6l0gbL6HkjFdLaqzoKR37Jcyy0hFH7c6pQLGZ2ivBti57AtKRZKx/v9Z+VsJM4traIvKclrjHcQIfpI6hHsJkzpqLeZ3Vla401joM6Vy/7scDvVBk8e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784261914; c=relaxed/simple;
	bh=ixI90PHxTTJwSZzKls0iA5/lr8ghHt5Hcf74eersq4o=;
	h=To:Subject:From:Message-Id:Date; b=u4/77E7hd2QSkjaaob8ToMhyLyZH/U+nn8l0aO87cXXXPHXLaVgc/DHxrDU1SVD7XjXDQGOpF2Mze6zCF+qEri9RSkjdIHRIH9L1psid7ZOZ6A/GxhWiZo+3fYspEAabeI+nZ7BMCP5F0z6vbiFHlWFA1Trrh14qQEnWAbJJO2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0d7bmFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0d7bmFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5543C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784261913;
	bh=ixI90PHxTTJwSZzKls0iA5/lr8ghHt5Hcf74eersq4o=;
	h=To:Subject:From:Date:From;
	b=s0d7bmFDd3pTskbSCkkrwFY/KFb+V4xSeGXDHvJv5lgo4+pfiseeMjyFb4gJiVfWM
	 ua6huPHtFWLnBYAraE5kdUH4AfG7G8GrFSiLyUKkaIFisx24sKxxZlUvaTiqm+P0sK
	 GFCG+YcIZH6hfXhSckjqRPpji+MgDLmx+zlbI+WOx7uqI62nJmMmLQ0yB/kthfFgog
	 fP9KhjEWOi30+h+xHOMQkDOsFzKPuLNs5CSgseMhrGLLrHgKVEvCu2J3KQpfYG7c+S
	 1rdQpjb6zZTUv8Vj7EOJAGM4QQQ7PY3m2VgRMyXvG7zuAeVHVIpEZLa64l6G5HC211
	 THn3PpPmRwhkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF06AC4450F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426191368.16653.4501559625733518194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d9b28a08cd3f4b02df5d4b6c0e6a40af8176b1d559a8fe0afcd2b570592ae7
Date: Fri, 17 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784261913
