Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359B231E839
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777612054; cv=none; b=tnMTzZ2yCOdEpQGX/kdckZZuNNgf6V38ZcB6Pzlcr5TFjmOhOCvGle7fU+bsZZ4RHtarO3ZXLARAPqqEYcgPSsr2BAqjfGpckS9xHNyT604Nfh54Xz6TQk7C3e2MiMsXScPOiMRM8x1AryqtS0M2Ekr2Ruh8gNaxXeHko10l0b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777612054; c=relaxed/simple;
	bh=BMpypFGFoWOOP2qv+vG6euTb+ZYE2HFFESLrU0RvZdc=;
	h=To:Subject:From:Message-Id:Date; b=J9cnmnbZzrkzcfQlRKJTVOZGl68OuQdzrJmx7uHBJpkqgErEL/YHpYt1WhCogdbLL9c3r8tU4CxtgJEwVbisUddTJTyy9/AlHd8TQhZZnTUUSXgvwTrZ3OMNTYzV7GXzP40ISzgPgelBc19bHkoiEiyJ//L7+fN5fHZetTIRUCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hf0QhAil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hf0QhAil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB042C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777612053;
	bh=BMpypFGFoWOOP2qv+vG6euTb+ZYE2HFFESLrU0RvZdc=;
	h=To:Subject:From:Date:From;
	b=hf0QhAilj77Fh0CzSHMKpwFwsbJysnBKOfCcAYeyddAeBBdUVnN4IErUjkbQV9S68
	 o2tvk+OrIBjS7uXSOpBwEwUwXlv+CvMG3J+wKnSKVgtjHn3axi+cAbSnhChvQ1tUJb
	 /8Yqf89SHZoq9VaxCMIC3a0UKVKY+EPVq1qkacidnTzP5AhmEcf3BErnRei8RcXYN/
	 lWap+LkYPiAPiIBt4k5YlosFpXSeWXIHMakJHys9YETpBUzS8duoD5gwE+rQ8HBVWJ
	 +g1rnAGEp+NAOO3LTV9OZIZWxacJN5Yt9XBbpe+Zvlhz/qJ6sdxAYdrc0mi9TYvort
	 StK1GSnDolZlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98E7FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761205368.31956.11193797983382636804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d519d22f8ce99ae37e0377e0c0a5ebaf98a086036c8b02754ac6776ddb1bd86
Date: Fri, 01 May 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777612053
