Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A45D36D4EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764475374; cv=none; b=aiz1d1drkpJHQj1SvRaNSJy3kSTyPB2IwRuKqz1+QOX0YFK5H9gngeIob4LY8rFUvysnMcwnPpxeUx8oyxL3arfrloWxKfrpFBgGNzWNhokVOcK+YH7gKYfUqnM4Kc03Oq4XrtSWuOfH6qy6Z2mcZ3M8m+wp/EvvJ/p7pBlykAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764475374; c=relaxed/simple;
	bh=4Jg4XeZ2p5qSxBGVCIo59+GcHZ6je3IlQuVpa0H2VZg=;
	h=To:Subject:From:Message-Id:Date; b=N+fdqR3xedGHQtwPQ48z05yKVvZX6vUeA3Jb/HKAbDl1KNcNWysepKMxxoH+vHrLbueDhGiC0Zig1mlS0RlBfSDf+6YJToEEZ6OwjlbJvgpWTM2gHAz9m8dFN6WVyklf+xIhht1bh5DAv6zQFCKVS+WvuyyrsUznskK+hCRWwWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e76NZd/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e76NZd/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A986FC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764475373;
	bh=4Jg4XeZ2p5qSxBGVCIo59+GcHZ6je3IlQuVpa0H2VZg=;
	h=To:Subject:From:Date:From;
	b=e76NZd/KBjQ3Fbzi6NK0KJnwTOk0jU+cHW3IBijXxFNyubvtk93FitMkr/ucgEcAj
	 rI2kCE1vlORZ5ubN3eRzr4VRnL0K9HhTAdQl5yxcdAp0BDcQAPnKTNT7RXEm+wmmmK
	 2+ZUHfWcNAjDEkpO+OsnLA4NbHMf/yde+wfsfac2zwUixj/+Lb3+argsDLHwPpSlsT
	 GxAoRS9U9UKF38BWQXJpZI6jcwEX5LbJ29BguRdsctVKy5ZgrQiE1HuRD7ey2YciXE
	 mlicfa70dkvXMIHM6nQ3lrDJrXloJG+INBE0YvcTcLcma7cmUO3KD/1ioFScg87b12
	 IX7dVsGzkQj3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D4BD111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447537358.14903.5676372695709171866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1b21dae794287b59c8e263e2757d55ea237f4713cfebc2c2bb0318ebce5b87
Date: Sun, 30 Nov 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764475373
