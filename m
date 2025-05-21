Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3CE13D8A0
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747840193; cv=none; b=jnBPbz8A7AUdW1VwpU49lFF07DLT7dfGuJ9r57hp0vgPsf//KDsgSmabShDYCriduF0Hyy+oi98Ijk5sQ8YWzpUQ20jIbYtPM1m4bzEDXNexHVpqfyq/kEM9BKnlOsfawLOywa6A7gxLaHVYgCBU8/nDaWMTtm4eRyCIeaNF//c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747840193; c=relaxed/simple;
	bh=eY/3AFzna3BX5mVaTR1TD773n7G87D2uVnSCRraOaSc=;
	h=To:Subject:From:Message-Id:Date; b=f4mu22KT2qPohny9mHiWFmQ7EAWRRz+3/qcZ2kePWwrxbBY5ddhfyYmrv+TB5eb7kt3o0Zs8PsHypU9mGuUI0JNsqcWvUGKFf0QQJqcgjxpvTzcliIiPYHH0DobBaWuqjBh5STLAWfaYXGtm+226XpYSOrGzlV6RaUiopj6Va/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8jSn4iL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8jSn4iL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2743C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747840193;
	bh=eY/3AFzna3BX5mVaTR1TD773n7G87D2uVnSCRraOaSc=;
	h=To:Subject:From:Date:From;
	b=n8jSn4iLqT43gNYTVQXKd67LEraj93v5RjR/ct5hWu+Y49D6onD0pzKqONlskesaD
	 hOH85NRLkdW+Eg3hb6wRDVHT8TikMNC+WE+CoXf7/cD8dHySAXGWiCEimqcWGgwYl6
	 3rawajRpAXEIiUfKadvIwhlG32kXml9deEeZ5L2dzOv1tIAhD+M41HRhKECzt3puuW
	 pyXgyEMsFxbwwPUtPpPOFZYqnGiVdCUKGc90uuIZj5s0i01SK6tdWYOoqNQWCkgMDX
	 P9OyNj6jDDvzjK/7GHKrSy9I43GLOuSVkZl77DGndEPr/l1HCmDVn77nB6AbozHeRL
	 mLwGK0ymopnzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF16C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784019357.23355.10806320737857078733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ba29c1d58ac62d3cbd6bf12457a5f7f0cce1d2812fc6f5f809ad518edcd9b0
Date: Wed, 21 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747840193
