Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2431A2E7BC2
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756291194; cv=none; b=DKLAj+psY4TKlA/Ko5AjyLZmR5lXheBuUyG1j/PyCMh3K2tOD5RPQxtnE045U7qnfPBkf19aMUNorCvekwu4SBKX4C2RHD+VsayObc6b1Rb+nYKvMAPIDE42/liIobdXUDR6Vr3OwriGoRyZHHlqdlkphBcKnh1yHCqub/bmOcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756291194; c=relaxed/simple;
	bh=mKtR6a97CX6taF/V5bBZAkvDEO31zN/cQBoyfHP4z4o=;
	h=To:Subject:From:Message-Id:Date; b=UxvZdZiPegJus/NPQjDKMv6Q2ZbQHgb913UHT0nWl+0uj2FmXas9yKOJk6w/TJBgzNoiB1z3LS0ZQf7EhKRHj7ktdhg8x8bVnh+yznZEU24xap1HbcY2MUFENdU71PwajZ2lXAq3Pq5qaBEJ3/TBp+nX/Jfupplgu6kPa8OE+v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mE97fkyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mE97fkyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C47C113D0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756291193;
	bh=mKtR6a97CX6taF/V5bBZAkvDEO31zN/cQBoyfHP4z4o=;
	h=To:Subject:From:Date:From;
	b=mE97fkyCi6MXUsGO3k2RTmkog1Yw9gyqoDKS687XqqbS1K+7E3k8xyLA72IhLtiAc
	 8w6b57iIRT4PqJNM+OEbg/6UWkplgQLbw1Z3nshPD1txYYQ2r0gS68s1fKT22SI6ce
	 TobiiLmZR/9KgoOM5mSMF1LcA1L4+9L4dqQeU7hW4OJbzFtUdv2Uw8R9Kfddr4lhD+
	 01C4eJa2r8qxNqi9DYUbTlb6j16zYyL3Z7UEPUYjbYigDYIhlLcGW1A2l7FJf2XXzZ
	 QlPECpILNBGlPp36uw20zyajg9UR63wGlmdiyF8yb9oy6Asw9qCzxT6zlp529NFP//
	 rb0BMxRg8BsuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BDCCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629119360.3752.12129163878010689989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf81dc55b0b62f84d91b82ee6f8324bfc640e70823429127e2d0988b748a48c
Date: Wed, 27 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756291193
