Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FF421019C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765946634; cv=none; b=beWfXwM11mHDZY+rbwgp4+JibFpc7ymdNQEiSv1yKsjJ7KtneFr2J3VF+nAhE33Fm5TY1oGshGen5NLrkerE94bvcrQsi9ynBy0lX9eEvn/zM+HxnH1KRyj4Qo8p3E9JVRY9JwCBJG4kW7yL3kcUAXT+Owk18udGN5f/4qpHkSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765946634; c=relaxed/simple;
	bh=6GjGZMXNvnV73wwkzsKJF3NaOFl1F0lbQrjGh7ZeQQs=;
	h=To:Subject:From:Message-Id:Date; b=tld3z63twmElIf60CWcB7sfAHIoQ2f0CuvUmMf2I7mVL+QAAMr//JergcvsMbcCah2ASSQPLPBSO8Wi3WuvaCJJG7FgvGrCIN/2F1c0bU+rndqGKQ1npC3ypL/45s8xhWO6hEngJ9mYkvNnIdYluRERf+mgMVTNwj+3Qu7N95ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVMtZ2RS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVMtZ2RS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02D7C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765946633;
	bh=6GjGZMXNvnV73wwkzsKJF3NaOFl1F0lbQrjGh7ZeQQs=;
	h=To:Subject:From:Date:From;
	b=XVMtZ2RSiJjMHslEw2iutwrkoGtPeNfozNGrQh4jVBJMN7IPpAOSKVtDDLTdr575/
	 d0FugWTm2XZxUsR0njjCgmw7d9c07BthT4svk4H7VC5V7wRmm3TjeebZJNu+CuOsgV
	 7BorgFilQh8wX7Xr0rv3RRyqcu+BtcrPv8wJkcvnF4WRe3wXF9Ul7Z88NqIl9Hpl5O
	 hpqlR6AHZqqc4wKMiWyRK4RXcnPgsGcC0gHqOy+hRPe8A35YlJeT+6TY/anHc6Wu2I
	 ysCKcAwPnnrZoDtsmAbQfHx9/xeqh70DbNr+eqBWSn4CcS91MUlSMKL/np3rMGRw6H
	 DB9GRP79ZlUhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA11D64072
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594663363.15788.3776687236033577293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d99e097d83b6413961d6abc7e47ad039bd519fdf29828b4d713c98827d0c8b
Date: Wed, 17 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765946633
