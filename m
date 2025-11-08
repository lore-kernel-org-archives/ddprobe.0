Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E656800
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762577394; cv=none; b=ZK+z8n24+p3Lv9zKSAb0FboQyGoKd+xm8Hdsu4xBcrBjv1SJqOWM1txREPcLrwM7fcgJU2jlSOhKO1Rl1xCJHsZKQ4Fz71Ka6z94WFL9thSIorUGGw2NZgEC9SrCs+wwPskPPmeNuzBtLZsTOnuBaweoCn1Y78UiuBgLAq9eM44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762577394; c=relaxed/simple;
	bh=82gI9OkeVbkFMq+UYXmqyyJeCiq0Zphqbhkeww1k/9Q=;
	h=To:Subject:From:Message-Id:Date; b=b9FYse7EjXnT8/M4gPW7TkVorWwzll4gxg0+3hxVmcuK+d4zl12TV+ZC/rJglwyKMbcTMnWdg+CiVefNALskbzjjGV3Uykj1aEKgnzn3WqEbN+iM1iiQ8jsKdT+DasAA10OdLQY9bcOSIi1JzoHhMHg/HeNLrAyk7egNoZRAHBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxQvbhbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxQvbhbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6A0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762577393;
	bh=82gI9OkeVbkFMq+UYXmqyyJeCiq0Zphqbhkeww1k/9Q=;
	h=To:Subject:From:Date:From;
	b=AxQvbhbZRFdgxPGQFhAJ68jJ1G9iH07B3BIrk8Bp38zGaFgX2QmP4iSHty5gdFSVF
	 CaGSMdJpfFtt0pwyCOeNyD1X9a5nkHXTrSk4fTPbRq0GhV5kx5vk9fYf3o0A4i/xVx
	 4tLMpbYhjm71DzZM7mpN79BhKU6DxTuNiB4XPBbdy8XYDRCT1jeKdZmCQKH3wLku9p
	 8sjgVmICjgWP2zSUC/XEsHav7B5Ze2rwxJEVKVabXfHWRjBdoddHmm7oJt0pvAeWZn
	 chafDE52GIpsgfa2TqyGqMh62JwfL3zrqPNgNyHEs0SDiUbi2BdH2x2AWjtAK7Qvw0
	 tlLM0gF7ez+zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3688CCFA0D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257739358.27095.5828217901852809477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a4b7507b3d80fd81cf5f9fc0e7de12da6d2c4b8281501fad41bf44abab295f
Date: Sat, 08 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762577393
