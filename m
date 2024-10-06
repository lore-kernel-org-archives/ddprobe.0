Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8C528EC
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728232554; cv=none; b=fi7agB7L6VmSpY+kvSK+cB1F8WbQ4v3d41/KN272zhnLfnQDl9rD/9/Q7ln9cLD9A3lN05d4BymoLjT/A0I2w4ROAO45eOmG5u+P+TkNxDqJEoCicebch1E3PSrSxbnJJURPwqTz7B6pmkxqcVz/fqDYrWN9O0BlFHYRhAk1irQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728232554; c=relaxed/simple;
	bh=9z74A0o1Wuz51OYH/xIAw4UFVx4DX0hACiP2d1VcNI0=;
	h=To:Subject:From:Message-Id:Date; b=ST0G7BLKDYxWtKJSHfzYo3NH0bJ29WBobi4TZpOAVhmTA1+5DmSUmZtZQtA3RihgXbwSDZy/h8qGzbdzE4uRcFQEHymSPMqkbJiea42VGLYz2CSkHTcsq4IwKzObuG3xRHPvVxPLns5lMDoDBDKAWp1fBxeA7VuWGxwRjfI1aU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFUX3lx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFUX3lx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B353BC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728232553;
	bh=9z74A0o1Wuz51OYH/xIAw4UFVx4DX0hACiP2d1VcNI0=;
	h=To:Subject:From:Date:From;
	b=MFUX3lx2/3ZOFtzuufDQ5Q3nQOTnOVpYUQp6bKXIuxeWokt0fcF3Mgz6vUYTvB0H+
	 Tq9E41lXrkDX7DEah8wTCZamDfjbtTzCwEWNXbVmqOdsMz/S6Sf6s/0f8cNg7sHyiK
	 lnfbH2IwwcfTQgQGxOXK9NG2JwmBe6X+XfnB6TL5Ou+shKtvhZJ5Gs+dCGtPsZk2ix
	 QsbiqV9KCg+HdDmJAUThjoX/kmzNLu1F9+v+HOv+G8Fe0LPn3huXSjbJRXvuJYk9VU
	 /Ld8FvJiap8zAp+OEIs74I3L1sUj5Es+9rotYhlK6zx+OXiw6aS8xtFE6SW+cfktg7
	 BjizJNIuSvN1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA2CCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823255363.17592.3543467570110841837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5f63e930f69ab7eae6c8e5089d8337aacd12c67c3304d5be39662d27075403
Date: Sun, 06 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728232553
