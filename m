Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2525F3A6B70
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779277234; cv=none; b=O7ceoCeZl447g+5qn9adwrW1Gilq/1fTK3rzJHICUjGDspqri5I111wlhEka3cWmsaS6ujpR5RAGmSxFCshCTWncKnapibD27fNMG3mFZbbEC2hn1sssxINVVQaY/S77Hq6yiHbdB9TTKNDqw8S6gWVZT+bp6pqJSCsvJZKfsJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779277234; c=relaxed/simple;
	bh=oG520CdE1NCG1yW7qEJCM4D8z/WftojPHSXIWhaQqrI=;
	h=To:Subject:From:Message-Id:Date; b=oujIkuEmLUEme8tIvSw21u1FtrcdnsAFj93e+dz7rMQeLUM9+OJDA72FMzZoST7zy74ccydQJYIFlZ82Yd56zLT+DFFFguE6CLlzyX5MFf9Vw/4nidfyP0xl0OOvWyrDWH9rnX3Oo9hdcVZUmwV9aP50yPkOEvjU9OKVS+ffPGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uA1iLFjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uA1iLFjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6337C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779277233;
	bh=oG520CdE1NCG1yW7qEJCM4D8z/WftojPHSXIWhaQqrI=;
	h=To:Subject:From:Date:From;
	b=uA1iLFjxRw/oWWCEx3cE7P2bg3vlcM3ugfiX1UIUqH3WbEEJAyWlDwA+7LAVkyd3z
	 J5UfFUkNaSidvRQCkmuOT2R6+nClqginRabxtkhzUP2iVfPH22fvVZqtRmuR2ji4aW
	 RwSDBdyHhYSjWwQiWUg/wZTFlHRO3f+S5UuvqIlO/Cq3dfvtJnpiZVBauI49J/wBV7
	 VDQIYLTYaNKnSPAUfF3dHwBEMUB0aA7WPgZJyxBGMTCWc/U3mg9vk2a2o8Kd5gpymz
	 AtvMraV0pS2ZqXcpgkTWkHfKV8lLGFF6xnb9ItBuy7a5kbma0H899cAjtWqItWwdqo
	 YlQOMwcpHGnog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD56CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927723370.1516.8797984537864584135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514604a37a0161692488684ba91cbb37fb9eeced888889d66df8ab6e5c32594b
Date: Wed, 20 May 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779277233
