Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9581EB5A
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706204297; cv=none; b=r1OuA2itj+9mqlgn3RHSZz025OrQ488+cR/rjKs9tMtUncmrhSmCoryGGvCuCToBZUaio/8/mb+47Ob7x2lqUWatttoHgg2Oqq69naj7n/0z1hQxVInfuyOXy1q4HtfTe56MCfC4R7cjekPERzZehcvTdyD0q1SoR/Osaqyu3iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706204297; c=relaxed/simple;
	bh=o0bFaFvU/Maf6MqHTBEcsWgkyOJux5QsMVGTJW2JTPQ=;
	h=To:Subject:From:Message-Id:Date; b=Kca4x6EvtnVPhsjdQRpIgx080O3IRqLEwAhrk+u/HJP1c2AkjAc0UTeNxgoHX1+6Q2H0UI3rPdc5sI5K49uf9vQm6UTyBCUG9go9EUSQ9IzGs+CVGFxrI6d1NNnDzmxEJ261T8dYziFkYoKUaHT+WjcewdfygusSXC+QY6hjtes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMwvoB/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMwvoB/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 860BBC433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706204296;
	bh=o0bFaFvU/Maf6MqHTBEcsWgkyOJux5QsMVGTJW2JTPQ=;
	h=To:Subject:From:Date:From;
	b=DMwvoB/QhkthunNoSXJPwL4La/rzlQZt/o+AaFcEMxog+DEZsCIWkvGzB6+7ThTiz
	 a7wTZmkrZ5nJ4M4pM631YWNyfAYGcTEYoqCz4PioYOS0pQn+KcA7RE4QwqwbnqpYLj
	 mn0wrLm8/A9dsDXgThWqJRLFuwlGi0MFHXL05YjdlszGvzn4UDSaXsZK32GKdAf+fH
	 xwmQhjYGluyJNdRraGq+CUj9eJ+N+xLL6DEvVvSP4u45oReJeqD1x0X1J1LgIyiEiW
	 6eJrL7GSHUhOMkfLc74UPY9gTOr7mH9hfooGXzN90ftxv0TjGJNAvmKEKCc/z2uRng
	 6+l2jo6LrJtSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68503C47422
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170620429641.4159.17186197866809000936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072764831dfd0c238334bba5defe086a8ec40d12e0809d46e262454d5b9c2d11
Date: Thu, 25 Jan 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706204296
