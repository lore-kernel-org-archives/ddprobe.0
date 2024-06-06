Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ACDE535C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717715243; cv=none; b=t474Fy42Y9KL7QY1zdGYwOrRhkViNV8nsTngnteKWFz0xtgJmYno14HK1ceYy3Q2Dz5M7te377ikivpeaNZp8Spm9Zh38FyVNlYEmvsDShtaeaW2/+Zrg2aI4LSvRrXHKQ+adqb8aq77bwQD9Bftt/oN6LGA3K87lI4NqYsyPlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717715243; c=relaxed/simple;
	bh=J03eK2WzxrRcVecU3zwMSVPgB+K/ojXW5CAQXn2wWfU=;
	h=To:Subject:From:Message-Id:Date; b=U8KY1qGXLlMp1wEjTwpQi0+lLNcHKwvdxMtun8Kr8KWTexr4uavjbg8b2w/kh9LfgdOmufy1BaR5Nu2r9COibGqpcUyr73yslFnEe1xACQTDXB4dtr7mFx1QrY+ElVKDDC/pTIEfAimU7J2FFHZlFa7tOvEwRh2QAmogOeKzN1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLLcIlSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLLcIlSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0409AC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717715243;
	bh=J03eK2WzxrRcVecU3zwMSVPgB+K/ojXW5CAQXn2wWfU=;
	h=To:Subject:From:Date:From;
	b=qLLcIlSYgxsUYctaJeJtkUyoNSb2xXxq57hIwadAkXyHVehBp9yRwAuJ4mTWP4RfK
	 2dFUVCu7i3q5ysF16ViVgqadElt4pTXeIEK2OejYdGMjVtJTSVAw9gH8rhy3DGHmAF
	 mHPLmB/UpJjWXK9fL1K+uTKfMhFNC+zlwzOSzoXEYXCXRmKnSW+kESLua1VD6Jx89Q
	 xFv1QcIA11ZAUjwnRbvgbpAwCbalyG4i0OWyb5Gh7Bf2hMRBOKwmapwhdvPElqWYwD
	 NUGWz2nhzEZpN99OewzQEuhCDDW/htx/Ai+wGsS+Vv1CR/8Bqd9RuyN97B5IAiqSAY
	 T+OakFAh7FgVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBA89C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771524285.31360.16222327710161034560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24eff6b9d3bced1d00d5874757212c77765c34a847e5620e2be3823fa3fcb32
Date: Thu, 06 Jun 2024 23:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717715242
