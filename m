Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146BE7E9
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756598994; cv=none; b=tDgMEw+o4WUNqRjyZR3knejjtojJ3Eb/gUQ3ZfIgIQJ1m7/5VIOnRjVj76jSeNRmUxo81cPNKL8RIK570+JBb+u/FrzQM+YWrYzUbIjeUKsvB1ANJu4gEPyCGAVIhGQDVe/C5n3nuxNJL/r4ScyBec8i9hxJQ190bIuDuM3tnxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756598994; c=relaxed/simple;
	bh=NTvWeJsHbo2FT91QeR9oisMcibxuwR11hi0zAqUNaaE=;
	h=To:Subject:From:Message-Id:Date; b=c5in1FjZlp47GNQxteXudrToJa1JZ1CV+2OCsXGhXXJZPGt/OluskRCnU0pEFHoIxEmLQuQgk5I006v34y4+1CEFGqqODMxHdba4vJd339pgaLsIEelAd5RWXacssUrJ5cyppd4L2shvrayxTkM8esBzTxGBMzjiO05gzsrEyrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXYy3M58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXYy3M58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4429C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756598993;
	bh=NTvWeJsHbo2FT91QeR9oisMcibxuwR11hi0zAqUNaaE=;
	h=To:Subject:From:Date:From;
	b=BXYy3M58O0qL2t+MjtFpfWXnFXd+2TaBrmiy8VzXc3BXWvSnlCBDKBhAxQxNignmU
	 5y0MBuFlYtsoRvMSU+VJCeP94LLxb1S5I1uDQ11YxPQAyHNK5kYsdUrERSdioQ0Ffi
	 XMjyw9Ry/Kz7wF/9k2oMtCZIH1tAJzE2t+tx0cY79XErkx82zyatILpOe65v4mzOVv
	 OR9A+X/lWKCn+V2m0Kx4NcspDC24xewT0N/udQLJJxWM1/mlWgp56ykjO65KF7Dtnq
	 sZyrcOnmMSu0CW1ledxWjZdmi28fYt39j8fr9OP9PYPrpHul7cHlMs5oB+S6/YMy5m
	 vR3DtqYQdyINQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D2CCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659899357.21391.7026509583425083936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400e66d86578ae9e59aee2764822c8992dd0e7942c036dd437e728952cfeea5d
Date: Sun, 31 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756598993
