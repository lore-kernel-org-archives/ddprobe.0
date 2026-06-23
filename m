Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479F22DF3EA
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782189394; cv=none; b=gwH/jUKOEkcWnzewCKThlNdRk5YMw8VUK/fsNRAq3iZeEdmNy78OgEzfqf9rtKV5VLbXuSuuc82beHgKkRXFwNzkl8tv6pEdgjbglf2VDasoZHTgUp7ddMIGRMr1EC9gfhO4ZYSM8C9b5ev4IsGv7gIyoVJk+aXeRNS2b8y1TBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782189394; c=relaxed/simple;
	bh=1CPpUtOkylEdJ2pljopt7R4m+LTJQCgWLNQmTcNHqvo=;
	h=To:Subject:From:Message-Id:Date; b=uQfnK0H2wCb1feQsx24O+GUZ0U6FviG5JgE66LTgABKKlU7t+7YugWD+5jkJKimwZjSn9Zx17nf9ngR5TkNu3Dob1dFWV4/7n+cPVSINWLRU9jcRwBCBIM0ey3phbVOpZ+C2isWc3smZIpgoISbeUWh7zGhQAYVaH8k09ST9aao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfOeS0sY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfOeS0sY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50CBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782189393;
	bh=1CPpUtOkylEdJ2pljopt7R4m+LTJQCgWLNQmTcNHqvo=;
	h=To:Subject:From:Date:From;
	b=CfOeS0sYKqJ6kATGmZDvAOEUgoQ9caSXwov0uYuD+1OOPT9yXKyuG/hyx2gjuLNoS
	 LLbeTWaopRv56vcvqBXF16bUkdUs9wEPw6CF7PsYHbZmsjgEG9fsfx3SYGfyR6N5Uf
	 mXTbWVVsYBzgfQ5esvaK5VjVy+nRYkIJ6h49GJV2BbsjPbep8S5PFYLS697ggkY9Ey
	 DmW73zBgkiHObnPHD+Teb39/cBM9Lqxcgkqb6y2cVeIYCxVRQAXaDQoLkbiO/A4eEb
	 mVUFqL4V30LznFoBz01L9M3yjBuT7Qn3dYgf19kPvUgb1euZbwv2WB/spXH+5TYmpv
	 EodGNMznds3og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D7FCD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218939370.31322.12966032376697938375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1619faad9bc2540ecd4369f662d2188e90f7a0c9c0481f401b7811424c8b7492
Date: Tue, 23 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782189393
