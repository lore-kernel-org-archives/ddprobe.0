Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E2C3A4ADE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768427634; cv=none; b=XdRmGUY3S+HRMMdDzNxE0tahSjbG5pecKLdXz4MOomWcwxtkAoVR8LQmIvaWF/Rp1YdNNvRSRyzG4hrzkMXmXUVLbzaLN8ZxX4zfPixwDMW5DI0TasAtYbkTEI9AQds92gS9x2MsQnfuUe3OEJTsA5cRWZNssGH0FnTXDA0wHQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768427634; c=relaxed/simple;
	bh=tmF+4AKBCGRsNdtZFvPnd8t89OPdi800pr8kDGS/GtA=;
	h=To:Subject:From:Message-Id:Date; b=iBuBZxrRljel9AzIwkwbMdQeBZ5xthGHtkcAIWmMA+M4zEAZ7pOvgZXtABiqVNwGZ3L5DV8/VqgZO7LELVeolSDcj6tnfq6TEzRK7SnOoZTMMKS7uqAg/x7NI7vvXGKEgqKJmCBmHE0159uFYP2p9pCy0qyedEY0YmE0DGgSSe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UD5hzijb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UD5hzijb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32CCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768427633;
	bh=tmF+4AKBCGRsNdtZFvPnd8t89OPdi800pr8kDGS/GtA=;
	h=To:Subject:From:Date:From;
	b=UD5hzijbvv3YCt6NYB2hOwNE1L4t69VQJXRiWTzX4fJwbpdirBM5YRo/2K+dVU5Za
	 iP60xx/ap0wYBPp9+pKas5MiCFDa0BfxMVQcb+LMqLnp+5jbGKNBfFu3ht1JoEmZJ7
	 gHkWuiW+KOsLAIA4IhW+eV0KQP5G/oFW10Bgs10uRueyEjvvV8+fX3rB+HTD4AsAGp
	 sPmLosnWxgFBJZxNwQX9bktXx12yUxiP+qdMUA2szR3TffaDI45WGFYKnUydgyxEI0
	 Zk96C0XS6JIhdgoRsj0nkNYmyLArdRh2xfmOsdHfbos1r1ArjF8DJhG5ffdBr48lDS
	 DjtNH2rlm7UTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91905D3CC81
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842763358.2253.10190465907721569509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceeed4597673f009e9423b6c013b6cbfaadfa81c155bfd036aa2140b68c47b85
Date: Wed, 14 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768427633
