Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D293546F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761821994; cv=none; b=dJqxphxOSS/LXw8l6OWT/A859MZsO/5z2vTxSqIF5cgAkEqqhrwk2mDf87/9x1fWDSoFH2gh9YI8oQcJbbUKqXRHpL3OIMbea4yX3E5058F0H8DDPoaCW7Lec6qkoloKw6ShnJ4ghboMyx7jEvL5j9Q8FGSQxDJYnFoVdUkKY9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761821994; c=relaxed/simple;
	bh=pcvth/YeQ3BV+HfrIXdkx/VOk6v9VdAtFnO7CQskbOQ=;
	h=To:Subject:From:Message-Id:Date; b=Pm/QUD/E/2+tmTf95CMTo8QA1q2ZN0J4shSoqJVkEjwysNO/Lbg9tP1AmK8Q7QPlmsvwsZ2QBl9jgC6MoCNY/NpTBAoKFHGBi7VwKsy3D4BIGSjjQIS3Wn09ZpseZOVAOgrgPgJ4E7FkGOgLN5yOXjN3jyalM3VAzQNdMQi+74k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwSt+fe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwSt+fe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBDFC4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761821993;
	bh=pcvth/YeQ3BV+HfrIXdkx/VOk6v9VdAtFnO7CQskbOQ=;
	h=To:Subject:From:Date:From;
	b=OwSt+fe1feZxRualTK9Uac7Ti5K0DHeqZsrywDISByMYRHRxcAYcfoe+R/klDy1AX
	 z9gBs2YDY5LIvO6pLI+UX3daaEuObfWWc6jMmULWn/ZGA7AA220Cwus7RTtKUY3bgD
	 wY8lv8PgSXyhdqk20N7wGiAGVVB0p+XhJAI3fz52lIjbNgotK7QCC8jc5L172Yx9c5
	 O2rsv9wO5Ru4IOblkCky6CD2fNSzEuJa1lcRx2uInH4cm7upg7UH+aUfqCkhMkHn/F
	 I5krjzTAfM1bPkJ7wX8KvkRJ6TWm8fkKZbsKffViALv3kQyuhNeGXFnvKQInpCi06j
	 +THAGRLyeCu+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D0CCF9F1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182199357.19615.17022827744068698679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7494177d75128a793738a41a6452a9c340d7beac69e9bca802b8cea54815b6a
Date: Thu, 30 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761821993
