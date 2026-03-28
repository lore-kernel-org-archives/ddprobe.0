Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E12279DC9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774691694; cv=none; b=d2L1KtcpB8j28uJy2lyOzX6nVu7Bj3fQ4XOieCyOgjJ5Tp/OP3LxbIaPo8vfURBDpwrxAoXS1cEg6oGwjwKKC7Zs25McDo5a05Hwr6rof1u7GZ6Cw0HMrmhc03ogqfEv+5tzh9vDnDPQ2jjEX1wVEB6Wxf7oEHF8WPkcSs5FmQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774691694; c=relaxed/simple;
	bh=JKiUBbZmfjMzqFYV2pXslvRgiGspzlE2j6zgBn+ln8M=;
	h=To:Subject:From:Message-Id:Date; b=rRc+Tt3JdOF6C9NA42IB7bOKQbfpUtroeDEt7fUm+yc3jm1DR6qQ3Xu3SdCA5T0WKOZjo7Vvz208ETGocElR6JSMoTW7gKJXMXkt/QJquHcr0nA+OKlvg7mIUtw1Mq33q5aIAO4cXRDsdIbUa1iLgyNYSfx/EY2wk1VPOmKAcQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5t3V1cq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5t3V1cq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2429C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774691693;
	bh=JKiUBbZmfjMzqFYV2pXslvRgiGspzlE2j6zgBn+ln8M=;
	h=To:Subject:From:Date:From;
	b=l5t3V1cq20RGnhr3JUiR2+Zf0Utn9P1BJA+xlpgmomB2auErwB9nlXOIOs5yKP6BV
	 ZQOi4hV/U87toGZO9lZ4aOXI4BzBcOMVyS7CxgbES/fd55SZd7bBSwIxj+TpuhYo41
	 L2bv3pTWdRWmSj+hiIsHJQz7vgZ5bYZdf9+LWbrh0iWQ+rsnCQrIJ3fZENpr/87rUq
	 cft760fFKAFDFwC/c6m3vn1LjY8brHSbWv/rZfHFwYkOB5tXh90V8PoWLaBEMZfzys
	 +lXDD9HnnLjY1sbTKKZACxRV4Oeto7AYc4XirRHHDMGa1m6a67ntDkbgJTWWTxyv9Y
	 E4GyqWr2h05ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEE810F3DD9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469169362.29288.16319322927196317726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a09a33b5fd212b4f4320bfc6df070ee299777411208bdc3b25fbf0ef0f0990
Date: Sat, 28 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774691693
