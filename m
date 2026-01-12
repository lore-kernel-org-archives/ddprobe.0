Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA6730DD2C
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768192434; cv=none; b=Dze3FT7sbkQQYAHzhm+X4kNzR8EXU5mO6+vOqID4E78V8qRBSJXYW1O7j8ucpBWr1vPEiSa+QhS0J1iFURJgGvs4T+lSyZlAmO7vzh1FlvV3fgMpDnkb2G/FpFtH6YkDw+IfU0BE36uttHhFZ4tlbozusNjBzGbLJ7iJHZP+8To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768192434; c=relaxed/simple;
	bh=X1ivVJqMiGflfZp/LdO2buIyVFmfAAhRZO3XZsHxPCA=;
	h=To:Subject:From:Message-Id:Date; b=biu1lgZyTaEFTgV57hg+8i4CElG3K0GYcPz00ADrlN95pOPsEc4k7DrM7LJn+y0lEIUJYEyfj7ieTMt99/TQwSUEyu3T79lzijFJ240oB8NA1QHDV2o+0ZkcVfe+DHRf9LBKTS/GBhFhXojqsprNeULvP3S1rT3q0HnjJW9tm6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrZXEqA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrZXEqA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6721C19422
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768192433;
	bh=X1ivVJqMiGflfZp/LdO2buIyVFmfAAhRZO3XZsHxPCA=;
	h=To:Subject:From:Date:From;
	b=BrZXEqA58olXhPapSXD7DmIE7FqkwwRQAhNpsyI2sxND07jVG7NiNx4M6RVaBja4M
	 VLghKZ5VqKnCEE7jz/Znt2/YkNws9JcRngJve6rg1+SHMxmbNKgTRsY4Iwprn+rlAy
	 DLfHdR05AAqW4yNbizhcbWtcSWuTzZBhhmd+ANKXXqS7Y8Oyy3xMO4PBiZfLJqFZPs
	 TbkYC9mGpyNotCKTQaTTG0vk5loA7r13UwApTZE9w+9U605c7h90y8/DIjVhE40dWr
	 18nfpZEKACwYqZre0QhiStxRRD+WmvbAHBWEUe3cn6aumHQtxdQirXI0FfcTE7XyTg
	 pYCIaXkKZVplQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9594FD25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819243358.4136.12730336081848868098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496d08577b755ef09bc24595e6619f2defbf0e0acf1cec27bf9143a0fe20cb7f
Date: Mon, 12 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768192433
