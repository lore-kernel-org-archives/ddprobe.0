Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3475A2BAF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752314994; cv=none; b=WWOIYcvZuKEPVaZ1yD4GQL6R2yFXmqpeCJrvj5jNqYhqibhRgpDtwtVdsaWzIGSKdSS2qXhbiHc6kFuq2nMHbSXKQowEbl5i03zICRUe9bW9EM2tACzT4NRtMrOSlax0CUauEjwaGmB1KjIW3sQwyamKK1tJdzzpTnAv+7WB94c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752314994; c=relaxed/simple;
	bh=VGeElfYuqPGP7ZnQFVhmXDOyv/Zf+cS4zHTKbm5sLao=;
	h=To:Subject:From:Message-Id:Date; b=B77FUJuFOiL9on7uIuwPJNpOiwUVF6zpe2o+LVaE9IsyQbkEetwqxrc+hl3QjIWIzC8RJfMU9VTHZJt0hjCoCSunVrKUhctQuD0M2AWk6ZSgLp+tw/xUrPdA1ybPNON62qBuY0loz49KSd1ZZRtNUY/qUOJN6QgA4dVKE4k/8bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbyFtvli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbyFtvli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE1EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752314993;
	bh=VGeElfYuqPGP7ZnQFVhmXDOyv/Zf+cS4zHTKbm5sLao=;
	h=To:Subject:From:Date:From;
	b=LbyFtvliN9e+bSG2e+7VRb8D3llXSdxlUIMz206dJ8GiGXFkqpaHDRTNntlQCKmQU
	 YHqkumpWcBPCEtY21lawzqmXnkzjqyxFDdQa+OyRTjdE3//n3y+SMFj/eaLnqjjbFr
	 GaIP3U2bGckB6GzQCXxKzAKbEN0oEIHDE4DVrzRYnjgSfd62cIBeNhxKkMheU13m7u
	 7jiinW6uTL5B9MaQVmjampBKhVkMAF77jugGv/c2msOyO2a9Q+wHpCHY7KulhTTI+K
	 SyvxL3KDRxAXBBsGiRzaaxJHsLm5htT1w1LNu+R4ve5d8aIc3bKK8PX5X/MBbbT2qB
	 naPDqA93R2R7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD55C83F20
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231499357.29549.3001842362204986692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3398a15adbb054ce545b4d8996a8df23211e688036a2c8593d69e7e4c0032329
Date: Sat, 12 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752314993
