Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC871A29A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749002993; cv=none; b=N6VEQS4F6lKUBguSh/wd11Z13GBD1ZIsZjpPlyYpW2V1r6PJ7WHqg//EPZB2/q7PA1Ov4xm49THqAWTUyyxhQ+CpsXirRhWrbiHmyEu8BD6hLhYHq1i2iwdkqQ5bfsFkWt7eb0YUvnUaGXzOdoriwWzEbAK/G/lhDDP1WO+frL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749002993; c=relaxed/simple;
	bh=UN1CQpTPJrPLDc4JTpEQsvIUuKC2v+jnQZp+js6kbjg=;
	h=To:Subject:From:Message-Id:Date; b=N4a5ZZj/kdKOdnb0TkYsJBlBLVssrICNFAy7Dy7l4PfDISBp5qTc/TbFBdtSvzOVO0ic1WMk3ZFRTXR2fmURD0Z6uqrlB59FVsIt6MneiXlS63apvoub2cCYHh+Qr7ywGQ/u9+KVboailq/MK09QmbM/FFj/MesF/xcakoYpaes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVbjLtjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVbjLtjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F391C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749002993;
	bh=UN1CQpTPJrPLDc4JTpEQsvIUuKC2v+jnQZp+js6kbjg=;
	h=To:Subject:From:Date:From;
	b=AVbjLtjJll/tB/nxYM0d0XhTSr5I06YdaWaDbUzJjHKGe3ifEXEQFvKjtBFywg5WK
	 5lbF02Ynwm3xS2U4gXwZgWB4C0t77EEfx5zCjR5Qn+uULVCCF25qdEpXqvgt7qa38C
	 DcvoiWGzOU1LuD9f3R3ZJLtLqP/GnasFk7KCg3E/ZZxgeEgUDq5mtKZ8t+HT86oRCF
	 78jvh26xh3sayVwuIpULIOhgCWYpu/TgYzN8fcqr0goDTjveGdnHsy2zkA55q7IXaK
	 P4cUTq/hfDGWPJTT5Jkpt0uG7xWGWIvZ/VrPajD3PR7/V20zU6hUR5oryh+XXz4uie
	 uBRXpuziyaFNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCEFC5AD49
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900299358.29746.15958159793781572744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d92c558edadaf479d0841775d62a79709905d1d028d834c0756dca998d51d0
Date: Wed, 04 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749002993
