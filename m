Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4901A7264
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781053534; cv=none; b=aOgXZIweDHHjg3abQrpPyXcW6n9lAelWomsom5T2nX09ZOqUnTgjrSOYb2Y38typbfKcR0kzSj9RahfrPxfTSxHmKZ+EBKIstVyRh+4/CtAv+niMp9Mg+MvxDdmHBce2HwDy9PdXBxCJW+D9yu3S7A4IKnh7AwLYdX3Q85GyjY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781053534; c=relaxed/simple;
	bh=15Inx9L+oeAo2y+X0DIEyWox+TahQRLuprhbycKSb04=;
	h=To:Subject:From:Message-Id:Date; b=cSkiKvf5DsE3X+FEebmeYg+LTVUGhar8O7rURhy6d9zLDFwUtmUjKacT/nAVj60JGUjpV+hTxjRsTl4ua6C8cxc+k+pC2+vYvrjTFHsZHmb1TMbWxFt/rEfIl1PZlkRKEwYnUWKq/lMfcjagRKaj2GmXEWvoyJOa80oK1Z6kccI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGak0F2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGak0F2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2F1C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781053533;
	bh=15Inx9L+oeAo2y+X0DIEyWox+TahQRLuprhbycKSb04=;
	h=To:Subject:From:Date:From;
	b=cGak0F2TkoxYYA57kHERtwX/OzNdVLoOhdHut/7hUR4O0kSkNvzJ8s6m2edZ5QwqT
	 oY0qH0Gr29PkSk0RIuEvivt+5OwEUQFkMXLDz9NbQhQXgVl6yzq7jbcRgKdqeS0HkN
	 vETSwllBl/QekiH2hTVBEuOiiv8GNNo7AsJCKERNVcEiPriflNUDqi/NGAQ2pt8CTF
	 v2QsVk2mXVzhrpAPQoRNj4cmkbHklISRNNG4SizQe1y0dJDm/EI88sgRifsCD4EocW
	 vN1H2BcKFeg1DYn+ymupPbunx8ymwT7/sKbWdINinqo+7HdyI7IS5llVrmoCgVPQQ8
	 JtZIAfw4OWm3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58EBCD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105353370.7056.5075622669261842988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7243786b5c8313f6259f30857d62976398b0cd4eb23e14a122b5c0b642e89176
Date: Wed, 10 Jun 2026 01:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781053533
