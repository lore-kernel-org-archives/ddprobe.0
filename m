Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0A63201
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708847297; cv=none; b=YsGtaSUcCxU/87PZgVz8CWegCJWPvuANZTCVT+oUmZnutOqDhO4WuiWKJ2eFBO9+Y0i7CeXhaDbRtAIYOz5Pr376SLxqallQ+GthipsQi4n9AHZ6dHRt+7sr8hnbX6YgReZOk5rNRWRGxdAvhBuk72RI3ElcFNauCqIlWaL9h7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708847297; c=relaxed/simple;
	bh=9eD8earv70OayapEgQgrobcK02LAILps9Hb4Sgl/7Eo=;
	h=To:Subject:From:Message-Id:Date; b=KTLkJQnJALPaiTugH0bTfkw7u1BQ6bMgWgZwffbVuqMh4tztkXoGSaf5jAjz/PcwcZ0iQ4J/9iARVWZbK+iPa12uitRWEoBHFBEGBeSYTDt/c5Zl4k9y7653q07zpuky1i8HVUOWVFs9d8XRuEtowm0G42pCcWnMV0z096TN97I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hU6+aSvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hU6+aSvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87B3DC433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708847296;
	bh=9eD8earv70OayapEgQgrobcK02LAILps9Hb4Sgl/7Eo=;
	h=To:Subject:From:Date:From;
	b=hU6+aSvMSnBi/aXdtak5BSZCGSjE2i4qT7eiV/iz4AccTAX/kkaBjMv4PXTjU2Q/s
	 pWtyGjEc4MjLrbKaIV0WA9IiLYp6KnFnbgLxX24ubsywFg3m4PcTxWqA0eWQgKZ8KF
	 cpuEJglVqHK+s0DoQhXaR1PZpXdYUkaaHpYV9EpYG/XRTg9C5FTFQYyLb9mf8Pnoeq
	 LKw73L08MwSTGwTMtLgVQGm92Fsk1pj0R0sYImwK7dleqz2JpoJ6Ly3BsCIZ6lQ+jz
	 8ENI+gFvmjTvdw1qSgnsAKmMar4resJNAx9gjsmHQH3B4tHgegpgzvVfDszjhzM1gm
	 Uyq0FZYJ6zlVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672A1C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170884729640.530.8895643560756568465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24b17ac91c4c529d58be7293b99cff4ec13ff13e049caae4ece54e50b2ce78c
Date: Sun, 25 Feb 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708847296
