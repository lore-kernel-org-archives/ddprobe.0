Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288592AF15
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727514954; cv=none; b=tZS1vwNATtpf9QdAzwBC62sKUtX5aQ4HS6jOIAWZWv28gsO8Dv1XO0bkiHYdxZeUsAo1TyzCeC5beec61MbgpoTgJ+YQbd+NJmdIT/Mb7nuB93Z/39kQMwN77gPIY4JF2YJlSVXMcKLzxi28F3kau0XCqX1Lh20ehyA/I4+g6x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727514954; c=relaxed/simple;
	bh=pJv8mfMGxB/llWL7nANTxIiqc8OS45PsFsGpRCTTvxQ=;
	h=To:Subject:From:Message-Id:Date; b=qjBFU8kKeLubj47JQEszteibX28x4hiVSXKxnhg/69NemtN6Z0zZCb5xjlsYxB4lHiEeGsnl8B46BxVjsQfRpKjsl/fYg4N0n+fLcC/c4RFPquAznKLei9MLouz5cUITNXqEABhvenoEdCaHN3HcsamW6KAXrJHfP01YBiXE6SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuF+Xl0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuF+Xl0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6A8C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727514953;
	bh=pJv8mfMGxB/llWL7nANTxIiqc8OS45PsFsGpRCTTvxQ=;
	h=To:Subject:From:Date:From;
	b=ZuF+Xl0MSIpd9ligUZJHYu8YLAdcFtEMcIZ6+zhDALIsymhrd/6GMEnsGBlT6eGsu
	 Ybjy4sD0eGlJykNoqjERB9wBw9KDk75X4JyxKoVe0F2+J9y4sJZ/2WJA/WhCd3O2O8
	 DZNISJUn2k7PQ/jf7zZ8MpksMQv1YNCoPaMxU9NicJ0O/B806V2SJTWvFuHotpWaTm
	 k/EtvzAdYhniwlCu8/XF+PRng04qQnrK7ojRLlDek8IYWK7p/cgsRYzNNDbqHb/mJm
	 0LiS1kJ1mvmM3JA6oYEzmCSq45kjc23V4CfXU05XsSeD35z3fJhJyRlkgEubCmzT2c
	 Wv3d3rfkh1YXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF51CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751495357.25384.13339553496530164818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b67b84245eeb67b464324817ab37e8d4f9b7b8fc2d41ba0a08631ee7bb70bd3
Date: Sat, 28 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727514953
