Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D461FA272
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777549654; cv=none; b=nOQCjZBRUueTrNrkAgID+PpV/Yk4xyax0wRB3eO8I8za24G/oWxWqnEaLhXMNiF1zibRIXuMrcIWNgsoOBpU9D1SmAC77U0QYbzJKYQVE+KGSMSqA/3Tgk2RKTB4H8ISeI+G73YkBkdYRlPvL4NC1/AJYx/oiPKCQW27VXm17qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777549654; c=relaxed/simple;
	bh=XTPpSwkwqunlJu0FlQ0x1Q96XoRuTbC6pmkiUwuFpV8=;
	h=To:Subject:From:Message-Id:Date; b=FnyuwCPZLdw1x+VMTpy9TI6FfgYDGH8iPk1/67s30GvVouCjYbqH4Rj7HUuhDuj6k8x+RZMnn/64h3ZM+qOwZL2afii2hHFTjSYLF0es2oXtyAfwh5Y452WCF7QT+MfMQjC51K+1ccg1hn/CvNNwsNHqIenjQuX11hFNBIA1d7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3SHl6ZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3SHl6ZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7B8C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777549653;
	bh=XTPpSwkwqunlJu0FlQ0x1Q96XoRuTbC6pmkiUwuFpV8=;
	h=To:Subject:From:Date:From;
	b=F3SHl6ZMDc0AY7K2oTUvbRMeTuEb0KG9WmosxBer2Hh4om4O8C8BRnX5dpoNF5gzg
	 OQKPlZZgXrUm6q2q5IHF4FnRlKap0moBiV+xSLCcDu8SoxDmNyVaKfUOymVrMbtkhn
	 8eqrGRs0bljMwJydS0SW8SPB74YrRJRYx1q0Sm4fcRnnupeJcILx7twZEyGS+CXHZw
	 Hhiv08QiWW609wRpO5msNjV9zztjDdpnYeqz5sCUMOf0X3njszpQgGa48Yv6OrBqTy
	 zAtqjmXi+oWKjKzUjbXe94UoK9V9zOLukLFHbTYwj+mUhzVxUi3WwT38XY3nQWcmnS
	 zfcNelA3vHurQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC776CCFA13
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754965369.5431.4907392400827509262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e8a5faf171d81826d7553084816f405bd3302ac8aa52cd83bac29cb09a347b
Date: Thu, 30 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777549653
