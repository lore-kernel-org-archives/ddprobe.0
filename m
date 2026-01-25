Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1370E405F7
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769304834; cv=none; b=cKB1C/kfpgPbEpQgY1IL1GBpI7sPYntyw2wQyB0BWBR9GRr22oVkrUaWaz8Six3z/0Ufnh6WFqCpUHBJunvQR9nq5c1M1aAYh2oxnqZTREXMyqgUPs1bdaUl0HFmEN1bxX2i2xUjBF9XFp7KGmMg8cAU+ljAlp6fO7LD460+sB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769304834; c=relaxed/simple;
	bh=QY/geS3cFQ1TbZZAsCuIbtQR/QSZoO/hTubz/AUMiI4=;
	h=To:Subject:From:Message-Id:Date; b=IxPP1XhqUvtOmrVhXKes86ntcDyXKDXgftf2QWTNVff/glGsQ0rlT1o/N7iRntJhhTAAk2+ol88vdJFcZG3GIhCFNEPeASUSenj7HMxaGU0pakLgvg/PkQQKLTuEZTHp3lTY4Mj8CFOXGgs99mvvgoHyayOe+zyHWeGCDD1PdPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbY16Dya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbY16Dya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD07FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769304833;
	bh=QY/geS3cFQ1TbZZAsCuIbtQR/QSZoO/hTubz/AUMiI4=;
	h=To:Subject:From:Date:From;
	b=sbY16DyadsBL7lnAAwG8ZU03JO2PyJ4MF6gqS0JGZhbFN/Y4CG9ZhLjKdLU1+rUfX
	 1eNDZTXz+df1F7cXwvb4ITYn7FZtzikflbwWnNBNO6vYnaA0Xi2vOZ64hDwLrF/g3I
	 JR1/2pvkcZ/GsroTdFyj7hZbl1PZhcWtJ+mchjjs1jucghzXVk5GVrThedJ0LbehPx
	 DgYcjZkd8ygw7lv8nhfxQ4nhDeUnfvceHev4JAOfrRftSh5IF5VtVnQkneLUI5Qt91
	 4umcDQnEsXy8z1nHaXJtFY+yMDG2pYQZGhHYCmBbutzs7frAt83Xatba8uI5PMsVBv
	 173oKAxKvequQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A037AD7237B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930483363.18121.6872485684909745380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcbd82bfdd6ab3319c68b2ce2d0e79fa285b8069c3ed7fa18ce447accd307cf
Date: Sun, 25 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769304833
