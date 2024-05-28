Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 869941401B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716867863; cv=none; b=axCDV8Zuu4ypjvUQeCLQLn23nTFSREe3jIk+gRKOpoZZ8AZfW7r8CO/1elULevYyGOkCuAiX2hKHxQKXL8EYO2TSb4FI+Ug+vmS/i56mJyQRnwYvHYwdUHwApT1CtFbm6v7a+ZeY7jl/tQcOBCCxZste5hqbLkjX1eayXOTFFW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716867863; c=relaxed/simple;
	bh=N3o2ZTAqXJIL+JilB8Ddc5uAyURiV6x9+ntUqVpwC1E=;
	h=To:Subject:From:Message-Id:Date; b=furoqYI5Ed1K4sGydnyZLa/E2E3bOUkQiErJrhgOnxmNntDIo+e2+OgjNjWuEmXQ2x5hitwkF43KnPVH9njBh5WpgiXaGLghoxm33W2spMhGBAQclZxPXkmccqUJ1w87nkYwWSHGhER0vJfnUh4LCEFPO2j358Cv1aV+pXxVv6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+jzADGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+jzADGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B20BC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716867863;
	bh=N3o2ZTAqXJIL+JilB8Ddc5uAyURiV6x9+ntUqVpwC1E=;
	h=To:Subject:From:Date:From;
	b=h+jzADGs7N8achuEkYgCcv3X5N/qI9BDuqlLi81tgwg9ErhU4CQkpfur3KDr7hbqw
	 GX6Xr6cpMRsbWEqQQBGkDyjLQ05NYfoaO4cJ++rSP6FVGJAX+qOwj/YEr6JTE9mjXU
	 wtgcS5HPWzQozBhApReyUHGpwd8GA57OhQ48mHeavwebiy5jz6Hn5qRcLTadrBr+N8
	 5R3b/f71p9P9Kp6Yb+Q4YPl23Z3vn+MgEuZPYuU6/8gllQkgOzqA36WcvQmwjh9cfr
	 1QbfXIbKXe7/UlVb4So7YFx2QsesUKOHwqe/ASYPGu8fIBkHllQecuuMswokO7qph7
	 n6XbYzpYNCNKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0F56C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686786281.21494.7671313440990724632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a67d2413fd1195740052bc364b54a25c960b5fc5558182d12b1c93f2f35acd4
Date: Tue, 28 May 2024 03:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716867862
