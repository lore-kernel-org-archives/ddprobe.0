Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B4E1F236C
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734783354; cv=none; b=JUGJYvwhXWbRz+aWEJ7MD2S5ph7pNkyDRMwaykBfsac/1oPdIG6L+TUWGHEEaWSbBP1TtXdBIYuvME4bP1FZvfffDIgkMJehJFaHcqIC8CXfFPK+OPFBSQCfGCuArIlb/EU52T6CF0tADJ6owtXBeX7qPgVLr9BKkPwbJnSnGo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734783354; c=relaxed/simple;
	bh=xK0AxrgzBmJ5/uau8YBFzvu1E2y91O3HKDRQNTkw+QA=;
	h=To:Subject:From:Message-Id:Date; b=MAQJcaj5qK4kcbe0WugyHjBcxPlp8Wf3rR1vskdzNutGnsQhOnzBgOiLzegXklpDJlRwIUJfbljaDRNgR9LONPm3tP0QObV1XHvXwd1fMIKA19rjj4i+tQpadz4yGC5IvBhqYOppUFe27J0sS7omAcHSRGDm1BHwd1GKW3otC+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUiPc/Vn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUiPc/Vn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F0CC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734783353;
	bh=xK0AxrgzBmJ5/uau8YBFzvu1E2y91O3HKDRQNTkw+QA=;
	h=To:Subject:From:Date:From;
	b=hUiPc/VnX6mBllUlRi+VessxUNmggdsoPgb6atvJHC5p6A9Eo09X9/24qxMP0mCpD
	 jxJ1+zw+fxOCQ1EVRM1y9/ZrwOIm2jptxAZK/7IalwuAe9yznggZyMa4GzMXVFknjJ
	 iMwPPc5VuGsgxCCX4m4FSX1CNtKa5ydzGtzJBgNEkzn6XzxIL1iK7h2TbFB65zZGnU
	 4IxjBHMQOi7EvTHNKepOB0j1Hq6436ls+oPAy0lyfAeOo/KPmpEGZiy/LMss1ojbze
	 bLAPr/g7GYfj3B36ayxQwF8v5oCdlaFLHISvhcdBJG/3FAJCk3hWKtL+GeQPEWKvFJ
	 9l/kctdAsPFQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D7BE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478335360.5558.10585681145455044746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d9edeba127f1120cd910216685056734c9f4c0e977a29228e0771e2c02f761
Date: Sat, 21 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734783353
