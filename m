Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29B0220F21
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758896993; cv=none; b=rQ/N+cJ3PZ6xk2w4p+oz0fENySCjdlTtSsYU6sdk3JuH7zsfNzpr7Fcq+xBQnaOgusNhhl5mup0lYdn73En9eO7BrK2Y4xN/cjAV8D1STnaSPWO3/dzDGLQYtjRXcZTVFcvUcQTo/akXQ046nTjtiGGm/G6pLT1mI02yJ8tgjSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758896993; c=relaxed/simple;
	bh=GHOuPvsmMgIwm5UajB5hse+d7Zo//+t/Hc/g8fwik+Y=;
	h=To:Subject:From:Message-Id:Date; b=e2qdKaWyWYnt3I3N9Xsqv/mOAHe7K7kYrYwbCI5WeVDr2GNUKzbpwk89b2iptQrS0sUvfiMa4S31H5NjgIYCchAd7PgMSIaK2NKv0fDHsZ6+nuXC4KbDx8gbWjzYRphdY/Yb2nRROYxv5klOymosgZjhR62odQskrr13NW2Ud2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D77nxKs1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D77nxKs1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2208C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758896993;
	bh=GHOuPvsmMgIwm5UajB5hse+d7Zo//+t/Hc/g8fwik+Y=;
	h=To:Subject:From:Date:From;
	b=D77nxKs19Q8tDRy20e+sS5wmBk2Nh0Kyn4gWX6GcscapxyUI6FDFfOaLARilo5+ec
	 pz5G9sbtwqTglGAEsXt9XKOvhF/L6IHGYTuV3SfqFHCENIrpKD9Q0Ftzl91RRRoCAZ
	 0sD8JHYjjntu32Q0gmelJ1GnFRvKq36EoqJiar0EPfeEVR2dGFbr6cVzIKD46CQXQ6
	 /yh5qp9JY017DvVnv2CY7U4w8sR1MzCs4CSPs4DFicoI+CLP+NqLW+bM6C1Ub2US6P
	 ikiaQref11FT6YAJ97YmL8inaG5OSMhu1GmerLIqHkmofMVgqq9o+kDxkXr9hXDPb1
	 Wbbpd9RYk9tFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9092FCAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889699358.12903.15766423245878853016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d4899d986d143f33c159d92a3f316a7b6fdf635af38225eba1e7eca6728496
Date: Fri, 26 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758896993
