Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40519340282
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777010854; cv=none; b=u3P8Cge02lvW2HhMBBMKrMkLwL7L/qwsxyaLN00/Fr4Nnnf0E0ris1FTBPMQSKHUKj7qWG5xcWtCjlto7qYIkd+3ePIT5VgbJIu5L5ImwLr7kZXmVAg3MC/viESfBVA0nEiwFC2woBKzSRtqqOgMrZGJqpzyAnbTu6FGVpoc3fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777010854; c=relaxed/simple;
	bh=cqThx3uBB58MXN/1V21LZ2FNb5v4h9dNQUvHlv2lF5o=;
	h=To:Subject:From:Message-Id:Date; b=tGPF2sX6jEUFqiK8mbet6UjmZcrbZ+aOPgxMd+7Lu+uJxu5Ai1c6AZIvh97cjTCg5GuHkwYsU7M7palnTLwollCTIm0HDRHOyJiIX0EPJYAFzbGY9JTlQMqG6yLxulcrIWYQDy8twSoCBnXZ1RXu4ZQrxXeCy4zYlug0vYZxchA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kM4XhJTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kM4XhJTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD30C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777010853;
	bh=cqThx3uBB58MXN/1V21LZ2FNb5v4h9dNQUvHlv2lF5o=;
	h=To:Subject:From:Date:From;
	b=kM4XhJTuFv8XTcW6HL+h4UicdhnFiU+4V+mshl2S005eDmMrbXrd0NqzFEyrQ8Ou9
	 lDrNK6HSwt3vNyhmO95mvZl+ZuE7FB6siLFGMlsAiA7gREJAjH1zOFit/u1y26vJjl
	 bxWzRQEQo1ogLoiaXi146dpLbqRex303NRB+QpdY/m1U/kmIhd4pIhyzaszYjSeA+o
	 K5ydmNlKpxCsD0V2ipItnH/2Zct/FY620+UTB0nD/7Qy2UWjImX9fgvzC1RDRX+R1e
	 xewCNLyvgoH2CwsVm3uVvGxdSVB5R/YZzOi+6LdNjj6/F2lXVWAxj0mVQWcmvq506J
	 n1TjvSVeQGxOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFEBFB44B4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701085369.13837.4502951648761930050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f0226184389f8a38022df64bb8e6d6c468d92c365f049b47a4de58ae797f8c8
Date: Fri, 24 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777010853
