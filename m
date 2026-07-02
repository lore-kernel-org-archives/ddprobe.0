Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB7E3D994
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782965914; cv=none; b=dOxhnOe7y5pxI195+OD/Qo2ZMbKSEFIGHR1V1G7C92AeTdDXtMR410vH428ZJnp6fjT1fSDZA3l0TEdePA//kA6YhEPXDAWotqy2goIaJhVKv+Jm9kPQT4An5oIVyzXJwqYo5J+Q3QFt+uyH7VnuGVONgEyk4rP/lVGIWEPsj6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782965914; c=relaxed/simple;
	bh=Ec+yOxgrRLoXLu1iz1O5wSitysmRrB7RO1Z6yk4kZcQ=;
	h=To:Subject:From:Message-Id:Date; b=lC0Vx4E+MhtwxdGFGxZV0K2s0QMO/5BG1yqkIY51hkbBMZBvbGid8ielolrQkZv8tNcpFN3/bOifsnlGvvbA+bIJuusOXdvSbWzbAyBO5W+Svmvae7TOfaslHPx7dzgHV2oB+c0e7bbixYFm7Q/en5dPiZLVzV+xuywxSWeLbkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEbxgBjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEbxgBjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE867C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782965913;
	bh=Ec+yOxgrRLoXLu1iz1O5wSitysmRrB7RO1Z6yk4kZcQ=;
	h=To:Subject:From:Date:From;
	b=gEbxgBjMYuRJDLxjzEuiFxYlsDob48xS/yp2UCSjOORf57thwDiNSqTpUhF++Am3q
	 ABk2rnHi7EcRxydBSxrvltUk1UU709emLnDUU4Oqp6OapJSpt3/S40x2pZPiXH8/kS
	 crqBQeqs8fnduQm8NOwRjnEV3ed5dTjHm0YpOE6c94W75f6Ak8eyqtAoiPHLi8gvp5
	 wBogaBEAQZlnji9CKP3b8w8Hg98MWM0W4KBDMZSq7b7XluC3M51AezKcku1rwkF+06
	 UhsJvZNeOyPkDhwVPRow6zboUks0Y2yPUyd5PCvdWAnmM4r99RfCnd4Henyy3ZE60o
	 LpaBYCz9CQ2QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B614EC43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296591371.15169.10525595052675997647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c650dd08963a8be173917b3a09810045beb4c3daa1844c2935f0fe4a6a498c5b
Date: Thu, 02 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782965913
