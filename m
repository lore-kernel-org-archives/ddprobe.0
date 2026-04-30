Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F19C30E85C
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777524454; cv=none; b=gLezzc9XCBgcElI83TLs7WPGNaAfkxgPIreeejOCvZx8HZC62ByHCuWzse8Oy8EnlB+J6t22o+9tL2IA4VQi0Z+niIJiUGfqMcyGej3Bg8U9pesJspb2IQdh6a7FinYsNmk37HYLZBXdbCoIlKongO6k7LYTig9S9S17WWViL6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777524454; c=relaxed/simple;
	bh=hyC6+pa+tAXihId7BBiK5SGmWFVU7bBEf6RIABpOlgs=;
	h=To:Subject:From:Message-Id:Date; b=aflWB7SjSDUjFWkZUfPUh/o+h7lUv9ermLHoE+r8k7AJAQODKoZPVzMz9CHdBw2DeQCsDUUXoqrWzdhk6Enw/BchadprKep3VSA48YvfLZU2qgcB2xJUB8O6RJ7nzobMWphhm2vjuDW2QbDX/+cHPSu83E2LjIhknvNbWXHmWsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTpDjNha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTpDjNha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B871AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777524453;
	bh=hyC6+pa+tAXihId7BBiK5SGmWFVU7bBEf6RIABpOlgs=;
	h=To:Subject:From:Date:From;
	b=ZTpDjNha88oTUNDDDixl1YhjNoDCiNofT67gTYRqyxO5ax/vZwnwJV2eCRN3CFH2A
	 FDEZ/j0ihqIp43MyCu/SZ6AcO43hs+2V9DWBb2gJDR4I9s07o0bO8LQYw4jUcI6dg8
	 j09/w9rPa6msZbzsCF7n39OvoWbibycNiuUlBYnhAUq+1yIkihUeEpemeyE+UG1sRj
	 TV/SJ6uTNy+eq4Nq04Glud6rNM6wGHn0expX68+itMnbTHRJNyugMbnbZqsX4c9bLq
	 ZdNl8xgE0OFcU5rZDyFbD4cr2uoG6BBW3vPfSxxMCa9C3YqP6B5eYaQXbO/UvenZQZ
	 Ikxw7dXiMHsEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F43FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752445368.16967.1647518080813534158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0258642227b08dea3d4756366064d323a209a34d2733f0d784aa97d8c94da5
Date: Thu, 30 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777524453
