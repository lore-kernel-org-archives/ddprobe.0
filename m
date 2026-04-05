Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5EC279792
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775358934; cv=none; b=DBdK6Qcx4TZIQpz9qe/QvRTMSq8l1gcnTvaV3xULebr+HF0Ghti8BVXcvBCLTcP3tMMtRLVdqlt7JDukRDrhUlIMoSh45U1Bm2W+NYRKafWHiyH7yy/9eEKchjD0TQ2qaHsXpuEAdIpq+XRn2MtzFsyBRzxCy4XLeoww7rNpsMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775358934; c=relaxed/simple;
	bh=y9+A3tH7hSPQgNJdGQiV5OSx5m0JkNCSHhaz+6Uv+WU=;
	h=To:Subject:From:Message-Id:Date; b=NIQSH01/5TqNFgpNFzIndyFNcM0Lk9/ahbZKFIiXpqKNVocz2lgp0ijYNr4jsDs0mAjjOjZnmYfzwX9wDxI5FUalQu7LBO3agsRH0slyP8+O1cZLZlB1bIbjHbbTPkSkqBDNX93HMLBdQ00WypCGufJYlt4kXdoqx8lzaw88Cc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lb64KwXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lb64KwXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C02C19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775358933;
	bh=y9+A3tH7hSPQgNJdGQiV5OSx5m0JkNCSHhaz+6Uv+WU=;
	h=To:Subject:From:Date:From;
	b=Lb64KwXkNCsSUZ/QZADh33L2AWV8k3g2HalJ2BLBNs0azlgeMYj809+o2olhgT2Zh
	 p0G8xvBvAvaF1Sz7SKftDn3hc1cm6AnCf2eiFyyirEaHtRmaxXDqbWuOrZzWpAZzP2
	 adHADHaKwNn9a6e0QgkGFqKHwIMcXT7nhrqzAKA63cRNw5kZLtG++TViA2cLz0XqtZ
	 1XYZshun9igpvHWdXnKoP5+pgL0WsCU3mE9YQIw+mhMDxOw09sKDmWtcAFSoyzfPmY
	 vGWHjkQbOJykFYPwfFDRc+730OPphnf0TJbuUWsjCps2im0QtqGlEhiD4n6OkGOy4J
	 gsV3hwyFQOmjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2785E64004
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535893370.11242.9778605200600391395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4551afec990ce4ad42a45631e0437fcc478e238e63c2435c96497f5408a8ff8
Date: Sun, 05 Apr 2026 03:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775358933
