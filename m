Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325F31DBB03
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742997594; cv=none; b=tesI4zEv5NULOufiLkYtpSo9dMNqwS+YaaVbKkcqzXxhZ52xezrZ1BcZ8t7mWchjxtL5z9Dy3zReNjxanapalTxNF2QgAnInVoDBfo8K3JN11+OTMzk1rGmXco5VPVBT6jt9PUhsuITJ4uVnJh9j5cOAl+Q7jZxQPeep6mL0MfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742997594; c=relaxed/simple;
	bh=ZoZE6YNKL+v0gIf9UEn01oqaYynKzWtwKJuEHnyCwmI=;
	h=To:Subject:From:Message-Id:Date; b=SR20lqA2fhoFhTHg0rB+dRlZofIXS/8sBvhTTHv5y1zEnugfyRcb6IT0ZJ8bnNMat3UaDIh4gC0za3p6IzXXztYFN7SxPR6ZP2esVOLAYfTPoOxD/YzHT5eeHOgGLAEMk1pDPvsKDfcGMoC8AHrYJ1dIZQZ4dlHWlRPphNxXz68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6B7+2Hl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6B7+2Hl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CB2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742997593;
	bh=ZoZE6YNKL+v0gIf9UEn01oqaYynKzWtwKJuEHnyCwmI=;
	h=To:Subject:From:Date:From;
	b=f6B7+2Hl31Qf9avbuQNk83Yj/8tz/MEVHfTVluzocUWsUgU2ublwrkQaJIW/hKNVa
	 MBqbSt9c44NOgU0rL2buXnj0EB7Hd8aoZUx3EGoAUPwABSzWkgwgZ31eYvHYmv1G+P
	 4ARb9Jv7ZTjmxxc3fkDbW5I2IYzX7PvnuEgCXBfSYb8HugZDGYlJgdyz8bRXdpc7Q8
	 PrUMbwjYcF6Zg0n9fgcoTzxJPU9ShUpBmtN2Rg1/Ubhg8UQT23Po32j7d+auMVLL6W
	 Q4KUrlrHrpJ2rAyOxUJJSZak5tWKW6tEkyV+Z1nw4xEW7UgwwMX9t1DUr/m+TqqqiZ
	 wAJzz9Dtidosg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF54C3600B
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299759357.14087.3963784801926162265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de8d3dd2daa7762518d048f2b6a397955119f44c57cdc28c91a828be4e70806
Date: Wed, 26 Mar 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742997593
