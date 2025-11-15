Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC0078F51
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763183394; cv=none; b=EqlTjS17GwCodToee1G13vk62uQYfukQ4cz0+gy/yn/DBZw1Gagp9sz01tzb3Xq5k/O2jbrY8RcUUEI+/SR+3XU+llF+CMolGey4P3yd7vyNB2q6LtPVR0UEZ7QX6Lrbi2nKV+YeoCyiROoxUV9Xy1bZTVcHV5Z0d9aMWbFlflU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763183394; c=relaxed/simple;
	bh=yGcx9AcJGP52KRSAc5jtegs+5cjWOqmlr3oyapYcgzQ=;
	h=To:Subject:From:Message-Id:Date; b=gVJ30KJfv7yhOU5AcEXeVJcEGtImftB3L4GyIUbHNNiSnH9D5VZ9k3fIK/oHFYfroaZqO/573FjxnG9oOwoQqUYMZnfjs9ak2fCnf0OfQJc/Q8lW4qVNDRGGT+Mv7wBUA9x08/q6x8HVxoFB9JM3L30K4AkI4baqtsgzniW54B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYC9whTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYC9whTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3024C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763183393;
	bh=yGcx9AcJGP52KRSAc5jtegs+5cjWOqmlr3oyapYcgzQ=;
	h=To:Subject:From:Date:From;
	b=nYC9whTLOPkmkIF2hJYnyNokYs49gz2K+FOf8MoGOzEGmpgDeaobV6D0w21hglP7Z
	 t5cGzlND5o02k2eykQB1j2tRL7DEKiEdbZvdtEt8+qz2ERkoOhtAZsR0Y81I5/H7ko
	 q247h9bQVmpn90sDKzEiCCTJ15ftGB458/MT/f/N+9kqa5fc8AEgGnDFiX1n4Is+Hs
	 NaTtHhF2eTgDmdgKcQBUrRYdZrLFqx0Sxl7NPO3bLL/It0kemCqxIK4cOS+cSigBNl
	 CGGWjeoZf3JOCJDhDsWFVup/Xar7RzZcCW3FWmvuGCusnDXxUbfuXVexcSlGbtov5o
	 2BFaPYHLtQ/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B911CEB2C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318339360.7057.8012090913452764424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fe3b22324178f55b04bb37fdf80645ad3bb0d69e25ab384abad25faf47b982
Date: Sat, 15 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763183393
