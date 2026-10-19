Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60ECE4AA3FC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792407634; cv=none; b=FnpwqY0YuUs5ch60KPAgmtTbB06A/r3EtpK3EzMq4C71NZzaMSpgi8LFLIRYC0N4QkdXxhNGckaC1/UqWci2isZzG616o7n4LE2jhZr5ZhQb8C4bY8MIsbcdVFGxWQnfjYrm3qGWKkYsF/v1ZyFAqslXKaNfQH67MIUZmxoUq8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792407634; c=relaxed/simple;
	bh=0NJY4EBstetz5qGm7YSA9geihgr1BZr0dcEgHnimyxo=;
	h=To:Subject:From:Message-Id:Date; b=QtYiD7bKyidg80FCR/iKQViqBezhHOcyP5UUaC0qTbrDlfGLXPWgJVWXdEyOdW2+YxiFIy0d8xK70JF8hXP/MKQJInmvhvZK6u0adM3K8V4jdeXKv8E0VUII54rQNQ6idP9Z015uDdwoDclYEn6MJBmaq9YNOn3CEgdjz3zhTy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLE3hF/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLE3hF/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28BDC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792407633;
	bh=0NJY4EBstetz5qGm7YSA9geihgr1BZr0dcEgHnimyxo=;
	h=To:Subject:From:Date:From;
	b=hLE3hF/tE1OHMip/ctSaLTM8SqPZ/a6CXDHVtPc2kTbXta1HVEL+9/qJqDDASvY41
	 ksWbAO1mM0q2BJ1VV53Hby7TlMdnvHhfYgIyBsMuxeUet+aVZpACB3pGftNWPKFa8R
	 gdyfKu0BbnHWaDASj9llMkVrqQQ5Xh7hCIgh5vgfVQxayhY57uEnhbEl54TF/I+tTZ
	 Eu5UhqjuonETYzeENaT8mTG8ijxMlkTI8KI6hKtO0FfXdwmOpPA8EDqff807e2sLtK
	 NecyF7BGqIbLUDn80qrDcTpL9rugwmSjpmY5lfJmz/vnCkDy0OszRFTcBV2z9XgeGY
	 ClxYixVPhHiLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B866BCCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240763374.21077.1586228213656091775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d76a46b4c8d70eda601f2fb5564d48dd4289a252800fbfbcc321639175feb3b
Date: Mon, 19 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792407633
