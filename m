Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C787082A
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761095394; cv=none; b=g/qOY3BBZ8lHJT7VCX4Xe2kmgRI7wX3U3XbxRVv0GeWlrJr1H1lvmfI3kqR7IC3zWa/5asGmmgj5bHM3uEefgk77TFUD4SNzXf4r2o2qsO+Muqb9645qU3ealJNfwqQo82a9T/XqwXES97KuzslCz+5i3pNptaE1T8dcMQ76aD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761095394; c=relaxed/simple;
	bh=qn75QtPeQ8+QfGNRl2rvNx77ZGxauVxyFJBWDBBd+V8=;
	h=To:Subject:From:Message-Id:Date; b=n71ACScSAOGUC7FjkIy3iKDY4kPEfTfCZ1efdt0INZQ/S/vumLwxXjsE29PGxpAtu6UL6etqecokAkhEbORVOGtQpLFTZ/y1YI0q8va4MhRz6A7Hrd+UumRrEJosknAyPDyI/OqxouE4KA8WtLGGpizEH9xaW/RgJ3l4lA9c4nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KE+1WqPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KE+1WqPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C41CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761095393;
	bh=qn75QtPeQ8+QfGNRl2rvNx77ZGxauVxyFJBWDBBd+V8=;
	h=To:Subject:From:Date:From;
	b=KE+1WqPIdwO4UVsmEUWzlYx/liG0e7Tjif3dsZ84phbQ0zirLpVPlfjidCN484QyQ
	 FwdXwxHnRTKlscd4jgHsCGbqyxMcMCzLAOvbYG+wbg/TCZX3i1fTo1Mf30VHPc+yIP
	 u1o8GY7aWMpSkP2tLLYHDf6YiMUPnrWW3oLgv958L9RxUX9aDdyT5bHkjIM4NnGix+
	 e2Hdj2eluJBv6FHUuwPdaWnunbc/VTgxuZFFIU4wBBv+0w9OmJJZCwbVN22T+HAQhZ
	 A+18z/uuVBxqIdfXIlwbxtMewVxqSDKx6jn3RyS8sL1rG6uhjZL5py1xq0wMvhOD7U
	 xCeSn/RbMQFxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C6BCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109539358.8461.5618088500519477300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c801845fe0f7782acdb40ad47177f0717a37b31b14c9b0433514f445e0ad63f3
Date: Wed, 22 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761095393
