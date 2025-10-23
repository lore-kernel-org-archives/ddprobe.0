Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F2835B135
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761202194; cv=none; b=PsIHy8Fj0tOYRJIiKao6iOqddldWIdOhZQ6R2w7uc+4r9sviIU+4/wxZcxwUgwqQ7WeGnAKwPjeD7SttU1+jYxqL5PbUKqhc+fPQzsAu7iAO75zcwZWQORzYIq7HFt+/5ne1sMj/6LwtC+uiS9GBCE4Ai5berQX6Lqupf8HyTs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761202194; c=relaxed/simple;
	bh=2huo3EXGP7aoC8vh6LYj1D9z1W9KgdaL3y6MijOQ3JU=;
	h=To:Subject:From:Message-Id:Date; b=GbATP4VqJQ/D0/79kgyAPY7CLgSuBx7SeT/X9jl3vPAgJ04L9WJwA49Yk+yR7/8K6vEoHNPq2sIBGDfx4W0E7PXApsmDTB3JVMFHqLBykaseeEYYhtNg54/X+xyDnkJx05Wsnv25hWOcNEoKfg9FRF8Ei2zHykn8wKJSmIwgWVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9uAmZpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9uAmZpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B07C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761202193;
	bh=2huo3EXGP7aoC8vh6LYj1D9z1W9KgdaL3y6MijOQ3JU=;
	h=To:Subject:From:Date:From;
	b=R9uAmZpLTzbWrzXm7TFiDGs15bcZ9F2qOu/SKJo0f+vmXLvNA/jWf9W4AEb3rd6vk
	 8wdDrqh2TuLeDIbbxFAw8qq1NsvJY2+QgWSi1TRIPz66eZIn1m3rFGLKgbvrENGKO7
	 T25cwrCrcPe2ZKaH35MBLQQnPFCH45oR+U1DWx0sWLzRVa3IxyEWYVg8Gxjym6IOfn
	 hNPlUgxQcm3MmIpvceEUfKHDHzkYMLopIZqTWMdvRaW6hVIOL+ocoI+xLgS2RGDqr0
	 L9OCLgR1QKczlp6aehSxZUW1zfHiUnXqFCJcR+TgxKLU0owW3lvTEtiYt4NpaVhy3Z
	 czVY50MXgCeVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93151CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120219358.24575.9697798736172023128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6dcbcd56ff4b93d7c7f488e45b4bcdccbc67b3bb6ceb4705ebcf23578cdcba
Date: Thu, 23 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761202193
