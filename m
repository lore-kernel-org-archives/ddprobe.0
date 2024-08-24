Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E40A29A1
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724534754; cv=none; b=rYhW1DXhYGRo0Mrv60sb+Avpxdca6+nPGuhwcjF0KcE5ToPy77kauPoSASdyoUdMNqURiXtr13IUrwR9gNUKqWUwsWr8SLbv3oew4hst7UDzAEqti5MOpR0Yfxjz3qEN78AHeF8FDy2D/DHB+WCjZHA/GXr7ZLc8XgrqkCwMr60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724534754; c=relaxed/simple;
	bh=StQZh0p4n/5K3Kr4Vo6zT7OoHeNi24QZIBzp2+sjp78=;
	h=To:Subject:From:Message-Id:Date; b=XozDgsN3TKAMDV5cx7EBhWYD7hVWHoW/fzh4GuWDJzYPNmtvcjlXJt0rMplKrv992lHFqX//mCXysxlRxfc4RmOu9WkRsvI5Of78Q1oSKtm8WNyG+ac53/JOo7wPW5yAug21tkQW5tyfIraqRn4bp+WV7aUN5gEWnn9YeEu6GO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X14XJfAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X14XJfAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91EFC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724534753;
	bh=StQZh0p4n/5K3Kr4Vo6zT7OoHeNi24QZIBzp2+sjp78=;
	h=To:Subject:From:Date:From;
	b=X14XJfANbqtob1u0w4xjF/XmoU7XBNeV1+7YBPhJ4Rw9Z+0CZa03YcWbPBEPysAj3
	 KorqOI4A5ISoD2QTvc+vLxoOgfJ0v1V0aigBZ9o2HzYVY0/5Xrbfe6OK+THZTVCVZ5
	 0bAhAea+4weQOs3PbpDySN3G7aIOdAnB/78DtyceHO79VVcMYLt4cOpTtVdHQhtRN4
	 wjslJJKEm5fMDeQXaTzzYHh6vDVsmsPmEARFB9/2+xSpjwsn72fN8NSvaU8Q6ZFrA6
	 NlnpEaSP3JoTAJX9d2pz6csXtcQGqeZfFM4ag1BJzSrpRzCEyfUvxFqnKQEMGvMUjO
	 mnxFMzWqUZh+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FDAC5320E
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172453475359.17319.2116020021786999483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebdda53dba6e3d5def9e2ba98dc57bb2408a1cbf74fd579a762b9e8fe46a3137
Date: Sat, 24 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724534753
