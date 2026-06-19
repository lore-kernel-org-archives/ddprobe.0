Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402A140D598
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781850994; cv=none; b=pMTIeQXq56J2t0Vme/CDY0mkNyMYVhE6S5z5jeRbUGYJIgkLEX5JRS1M+gOO5zYEy1o68C8Rvhh7WSlsqVHTCic/sh+8H6iiK8JoO0Wso9F1rBgOF4afOyCzW4y0bAfnr/OaqemW87uAyZXnKYpjp6ZPCedzzuDhLjqBd8s+hHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781850994; c=relaxed/simple;
	bh=OaAmGYt65b8ZL0truesbpxQfkZPrK8zVqIkc1T8HR2A=;
	h=To:Subject:From:Message-Id:Date; b=K3OwVMvTF4fPzKmVPAHG69l4y00Z69Pz8o2DfXARNeKWJrN7iXFaO1Tiv19JrO/Kid3n6I0MfTk/SH9RCLHo/GsuIz4d3O4QXRpNj93h2YH+Pmc+HfxWb90DdamtE9D8rUkPMXhJUjU3d8VUip54dV5C6a4/28iXE8coCCK/rfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdHa6Xhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdHa6Xhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D391DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781850993;
	bh=OaAmGYt65b8ZL0truesbpxQfkZPrK8zVqIkc1T8HR2A=;
	h=To:Subject:From:Date:From;
	b=pdHa6Xhg4lyRrt1FzYXEfhMmJBlPCtH2JdOgF0fG7YmV55pSl50kfnzlMPAvg0RN0
	 NBBivTR98CSewG0dlWRpKTOj+cKXaI79LPoLZVPf4dbWxZlNasu6VMLqThFnGf9S0g
	 ixo8jpCEYxU1sF4rEJZ6R8r/rW5PNzdhQL6Ku8UQZ2nVpDkN/8q7PoVyj1FfN8PdeI
	 W3hG7XLcVuIEJ7BWVXvqEcxUlDMYcAXgAgxjS4nLYC/wzoufEnnzOXXyipCc3lfEw4
	 9j59/ZWSMNjnKJBNhm/JqyEYZae3yPFMkyMWLYjjQ0elQW+49+IbNlPgaGL5oBh60+
	 ue/vFBlSTpuCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B762BCD98E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185099369.7201.6032492684483537859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f94376643d4caf501d86e48b555d96c72c32a6fb42449acc079daf34201aa5
Date: Fri, 19 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781850993
