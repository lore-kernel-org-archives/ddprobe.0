Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316002AF12
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733066154; cv=none; b=r3s4Y0Wne9UsuBJWy+B4Hj2wgPM4FTc3bI15JN66RvydDO4ous70G+C3q5PQuyP8QV/Jzd2JiR2QWm3aeEJGqAo0bheYLcT+rIOheduQwuDya54DWp1XBuKGrnd/uQ+WHIB/OKa0MBbH7pe9U5C3UGVrkZ3FgXbeM1+bEHPeWwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733066154; c=relaxed/simple;
	bh=BJedBMe+gKukH/V7cDefnx8dwx9RbfZ74jMI3yWC6/k=;
	h=To:Subject:From:Message-Id:Date; b=fpLG1gzSkkKuGYQiAK+7u9nOf5rGVXhHrqoGoDjDtgzqenncoxThJf6G1F2NAYc0csGrPDr2S7YiLrmx1e+YOq9TJQ0DO3p8JrJG2TQN80xM1xSrjW4DOIZLNvG5U/iGMa6JnM/gblsoXxPLyjyebdr/GoX7h7BoHx+XEWZrUZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhW1Z7ir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhW1Z7ir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C48C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733066153;
	bh=BJedBMe+gKukH/V7cDefnx8dwx9RbfZ74jMI3yWC6/k=;
	h=To:Subject:From:Date:From;
	b=PhW1Z7irE70uK3jOuBYGuc4lgz8tm+sERh6wgHzrZhFxW1SjJT3HoJmA+l/CIBBsS
	 ezulrLonsP/lRRpJ72ze4DED5gqhSVMXSOCIFI9ivzaI6k1G0xBwVPP9FnFXO2XDnO
	 qB7Uc+vPyIWiZ8TeYKwPwX74r9g4GYqGuA3Igt1eWiB42s/q5PYVFrovgzbBfuOhDW
	 OQyil/knp2hrasiPElg7ppW1mrCoy9MntkHQcIoQA7iJv7p3L9Bzn5vpxc4XpwZl+D
	 ScR6y+s0OvzZ3vBfCVTDdYjSGs9oHDPuoia30W8zgucyIrRsL9VSwtoWQiQPUIips4
	 nae0gsMqdMQOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26D3D49773
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173306615365.21019.1938958382948335655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a3661215ac795ce6b62304d9719024914af11ae24d2b7ace5745962784dd09
Date: Sun, 01 Dec 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733066153
