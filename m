Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BFB214A88
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736537154; cv=none; b=SMmBfmap+cBGF2AA5o3va56toE5DDak4TYmbuQVAzYc6Nq7Gj98BM4hgE5z8bgGN2Sc8Yln/wlBdC4ipiAH1c/mn/XJq5xAKAyNlZnAu9b0LNc6qi1PNKeqh6sLv/RMVWI7uHHZTCTaSWkLcvguTn3vrOYBx5IIZF9YlWbW0axs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736537154; c=relaxed/simple;
	bh=E+cRmxSpLw4nIxJhMahe/pa1cr6obItYegHfjRv3bZM=;
	h=To:Subject:From:Message-Id:Date; b=HKp5aFdE7Eo7FJDSLnbYPuoIIoQYS6aum0Xg/JSkuYNii78RN9tYb+Q9mEBluNsZKGhJx0WUZSrjzuVa9xVxu7/xnnpMhbjopDDT8BoL8IN03abY+ls6driV5Dzd/i4HcQ+07tWSA0sRvs+pGmXB15giGS03E3aPOxPFlQ/Qtzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfOxgJLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfOxgJLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC32EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736537153;
	bh=E+cRmxSpLw4nIxJhMahe/pa1cr6obItYegHfjRv3bZM=;
	h=To:Subject:From:Date:From;
	b=nfOxgJLV+ExKAi2t8lL+cRJgt9y3JaG/6M5iUUTSGaTU5gHLJqfNhtR5hNsbwFCPC
	 A5otKecWEr8u3mHbDbXS1Gp1x6Hc21wcHrf0bRCJKkwb8F2jxpca6VvgsxLiMhwfpH
	 Tf97FlXwq5jJymKZI9ILe8A32Ca7P7ukCQarpy36KBd0Uk8A10M8caEEiqYUpxCP+J
	 h0gEbFBlhJtnqBOSf70rAOxsQLKlkkTEtZDZdbKb1CJXWAi/vUwhyWB3N6wPs62SU2
	 uh61oB8F6KvdNvYgUJLlQra3Q0jAzNDqyfYzV+rnOoKh6I4rhJD67sWzmMkpU0pjpa
	 lsv73nGzqUzXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DC9E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173653715362.32276.13284303744459650683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119baed75dd2e27d733861acbdfa31a8a3a2495e84d48e65f942e6b5aa262f0e
Date: Fri, 10 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736537153
