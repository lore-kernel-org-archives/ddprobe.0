Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6C52877FA
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761169194; cv=none; b=JYik9vgydxL0PV14Jay29wOXLnsKiFx5/OgLVf4rFzTudaN4QRZlg6KoW+hMOx5imbbCGu8LvSxmWoTvIia7RMogliSrTyz+TDV6Z5TVTQBfmdu9inruYOE+Bi6hgr5iEZB/tY/jzct4XxxGRtyA96jFOFb7zg1ls4t246Qv4XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761169194; c=relaxed/simple;
	bh=9jxA1jFjpt7XToCQB/6ClVz+bUc29Ex6WLbYl40hz/4=;
	h=To:Subject:From:Message-Id:Date; b=NnXLDbjZfHwt+uixcxtg3qjlLtgHxnD8dMn9mJHkbw1WSjK8Iab7EIn8RAkO7sBv+4fyE1wZMjOL2STB0HEjBYBK0oB/ti9wcrjVYEuoRPNfmjkNplgzEQCn+xDT0p6A5peOBmHHP66nfCH8H6pAhGG/JmDbwYMgdz/HLuXd8II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGcpjw8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGcpjw8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2720C4CEFF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761169193;
	bh=9jxA1jFjpt7XToCQB/6ClVz+bUc29Ex6WLbYl40hz/4=;
	h=To:Subject:From:Date:From;
	b=kGcpjw8M2OY8FpTlAxhHvLKp+qeiLrprtLS0LHt6cZLuV/pTwk0OAl0XmX4ng5YAI
	 EiPHMytPGjSWRYCJL31LAxiJYhvRMt68i2zdbwmSP80f+WYYcmNJIKqpGiyql5MQ0r
	 2cvA1W1JESovRHwaCeUF4pTmrY4ihq4e3J3Csu/BQr8YqBs70H55NAZ7LDKyA3gswj
	 zOcNFWKAl0eGGjILL5QBf31jAMc6M0ep3BaKWsMSP4MswvDR+1sm3S02JPRl8UCg9m
	 60wR6qxkQiKEWKYUFgUg/h2WhgfOLCO7nHHtpDzKVA/bB4wA8TZcP0FxAvbo0WP9Xe
	 halrVX2uUGXuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA0CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116919358.26664.8224420198119911037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b83f96b31a2f70fda7328ea1b0d185650b3a49e9d5688b7f9a9fd9445c356a2
Date: Wed, 22 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761169193
