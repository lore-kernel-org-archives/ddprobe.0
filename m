Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B6715CD79
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737739554; cv=none; b=uJRtf4a3vpcvaOr5W4sXFwCDYb1RLduCV8EmIV38HGXti4xvOaa954x24vKz/yy2x91IPytp7DDuIpHgMq4JeVWs2hntCTbeLD4tAhThNSx/ytQjNJaXvdyB/8IPB6/hQbj4Ndn1h3iZ0IZpveRtixfBcG2ODY9JWRUVb6AUxJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737739554; c=relaxed/simple;
	bh=EGfQSr9L7N48WGvAneP+m5yPZcek8aERz1K7Fymag3o=;
	h=To:Subject:From:Message-Id:Date; b=FTavUBsCIvuRw2nEGVZentic/q8wyu/Lk6RkyZ290IkpWR5l2y3paBnZ623e31e9UO2rYM8he8TakhZD7DV7afJ83x106DtdmfO0apINcKWf5NjBnnDLSF3LaKKRbS2QygiEKcx5GylUBT36EC/9kmljgNwBHPSKbHLUPL4IqQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urZCJaqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urZCJaqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A9EC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737739553;
	bh=EGfQSr9L7N48WGvAneP+m5yPZcek8aERz1K7Fymag3o=;
	h=To:Subject:From:Date:From;
	b=urZCJaqvjbDxGDYCsDW9cRfXBhNYeFiGhvypfYrHjVBgEWlz+G9O4K6t+RItpzp2M
	 9gvYu9UCozWsbnEmCRYljCnMvZ1pIHAbsdqpqPNVKt2dukka7BtcJY6AUW0PZCSdJH
	 GirBaK8D8ilZV1+USTZlUypNuQXo/ibQF0cPY1b2EFtECHe0S6eTJwa2Q6thRJB79C
	 heM+8DnXi0Ercr0WVyD9Idkoa4c7HTFzYFN/QMCOvii8gr0VlhuZnoTTXdfniqy+jT
	 IIJeu+X1IJMN+sqZ2zOd5y/lOqLostN0ApRzUrjdh3rQHf1HTeN2/LvkUpsbAxojK0
	 Rmfdt2a+lWHkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95928C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173773955360.28629.13862069035678768985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35257593efdf9df378fd0cefd65bd82dad4ee6df64bc31f7bdacd20601634b01
Date: Fri, 24 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737739553
