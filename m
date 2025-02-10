Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCBF2914
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 00:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739147754; cv=none; b=KStIZUFLU0701mNU/KkKWERfViNeDsXNZNdCHTFVkFoHDRp6LtF5SGLkENSt4feNaPw0s40aITTDhaTcdNo1J6LksY9bcNDEoWxquVUhIyBqSpSJ9vjxKzYZIUfEBlX0QSYat84GwuzwaBjMmr99ZPsm0k9zpCQGWOKv2ZGHLew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739147754; c=relaxed/simple;
	bh=zPQn0UW4I+T0cgU/qxd5mY9/gRbZRXp84acA069VPzo=;
	h=To:Subject:From:Message-Id:Date; b=P/4cM0r1WiwL9DBNjCGLQH74eo/CF98vOmKw48Y5piJIpjucl92ZYOaP1n9CdBBofZaJo7VEld+SbwBR6AEwmjAyiUE9+xVSXLQGHiQYnC/CT9k7y1/UYTiSBytAYS9+WiRuDhqxQLeSbDSuvlp/1Kmjuk7gCawRZYU2kEQF8jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFbpXE/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFbpXE/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2EE7C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739147753;
	bh=zPQn0UW4I+T0cgU/qxd5mY9/gRbZRXp84acA069VPzo=;
	h=To:Subject:From:Date:From;
	b=UFbpXE/Eh5B9u2KRczAYse1/h3nx172dv2SLV/YRZ1KVbT0cYhXDJrhkMk5CSfMhd
	 SDbeM9zTHPUjCaCvBb5A6hm9Dw/n0RrN9omCf0ADCrizMR4YIcIUp9v5m9/oeiuAHy
	 jiP41/URHo9IlWIjz7KARwsR5SLMr4lM0T0vzRwZcJAPxsy/xeb0UxYTMFjoafLkUI
	 F0m+IRoUOUThzyzgYujoiJLvn8uR2KLcW+0znP9Bn9kxkoqy+8id3uVxEyEEjt0oJf
	 Tji4tN2nod5sT7j6QyoIRo0paVPwzHb7TlY8MKrz9vHIX0EpPqeRMwQ7/n39G14rh5
	 FCilCxDqatSrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80A2C0219B
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173914775366.12112.3043250858255598142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6222c4c94a964bce0b849f93806eb2b9cc06a0535153f7d18ebafa43f9678d5
Date: Mon, 10 Feb 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739147753
