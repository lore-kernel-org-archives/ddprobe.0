Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F0B17B4E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722009954; cv=none; b=RPJGihoNAbATPSNFWW/yQ0DKer4YyWOVgfDwhvO4aLYWLX00RU1TaYPinKYLVf7XR9+Jz0253r4TgpHLYyOOX+iMz2l/vZ/4a4k0loEmPz85LzDP95fSRQ/OgTy7BhgUuUIrzs/TrsBOnCfIrjdKtH3s0UBfqrj/SKiaplPuFVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722009954; c=relaxed/simple;
	bh=lQ5KDGH5q8+isIZfkibzx9JbkuTjxGeqMefITDag3dg=;
	h=To:Subject:From:Message-Id:Date; b=QTVSruxTobz6vCO5UKr8sFDv3Zyqi+axSrZwXMgTrzH3bmBjltKDDhejNZFwXLLkIz1RpsAo1SDP5QDbYG+4z1gqCCD/OeCniUgM9Yb06rsN4epArJllNo2yqZRgjznON8LZ1mDkV3cHFDFl1e67LyvXvoJFliM7j56AtcQANnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cB0XX7ak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cB0XX7ak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A995DC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722009953;
	bh=lQ5KDGH5q8+isIZfkibzx9JbkuTjxGeqMefITDag3dg=;
	h=To:Subject:From:Date:From;
	b=cB0XX7ak579rxwPjYozRehiAiWIJWo+kLoOxkXF4xSFfW5nkAssnAKyALhyHb9dP0
	 I+OBNs0MImV7FFYLr4PY84c1mLXxvImdcrmYW7au7bSxyzrTDXlZgkJ76AJnk+6unq
	 9+mMolaU0kaXyWc18GEKyDPUw1qGJdnn5OjjYkLN9qs55SmgDTnjarCgQiZGclX4ut
	 T+ft0MUppU0oW9BxTi/CFXiVQ1QWeX8KmOV11clDptt64ZdIZCGGWxSxi6SUhJ/ZGv
	 OtbYIO7C1f+/MAfp8FvTJ38JG56/al8yf9JOfvFTUm6OG5/6bWljYGxRWjFCjJ5VfL
	 konhFPppEM2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C44C3DA7E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172200995361.20710.3060794294963994600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68d1b2520e33b86ed050551fd4b0261e2d7f4141b3606e5fb87a80fc9d44c99
Date: Fri, 26 Jul 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722009953
