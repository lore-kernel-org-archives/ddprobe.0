Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C3930DEC9
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760560794; cv=none; b=pzNLd7xWp3KJX1BOPIlZ1NffuC6Xpb5SEx+uRH6si5gy3y4SSPhdfNAz9j4B9B1SC7WqSg4i2v71IzIT6ylZ5HYNxpOGenCxcbIYmU4G0wLJQ8GCNTN9pCnZeSpZoexgympK7yiC40Pat16ikCrYR72Sr3dJUNDMIDUY6v9Mm9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760560794; c=relaxed/simple;
	bh=e7uLgr780cjUIFZWVfkujSsWpXP8ZKZN7WuM3ric8aw=;
	h=To:Subject:From:Message-Id:Date; b=loE46Zhdmd7tqbvD2BkH2fnGj/3z3OQQEm94cRdN9MwgR07dK/9RkrgIffeupuwO5Capnad74wn5aZZY+0BuSCmdAHhSnUrAEm1C4X2Vpy7qiIhmNtV5+a9Zsmwwo/6WP5mbNIVAOvqtS8gFAkRc+wTaqC0czylXfyqrpQHoFkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tExR6dN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tExR6dN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A077FC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760560793;
	bh=e7uLgr780cjUIFZWVfkujSsWpXP8ZKZN7WuM3ric8aw=;
	h=To:Subject:From:Date:From;
	b=tExR6dN1F5wor6JRhDl18DKxBA79peZwMfgYEzyUh1Q/hdWoaGoFtpY5rEdJScTat
	 9rRiPR9/EHqJvcSNsqXqmeP+aZW1ohEnbRD9bTq7ozUA1bRAE/5KPM/dYWgJTpivtz
	 E2veXqNVy5814dBxi1ePOY8UmK3bn3m1trssBGKq4ypKCJpL1IdgWWtb7sAhwrbARB
	 DX/5o4Q8bakwNuNHFnpqBpIHFhfkYxnxO+ToHX95itqeGqD14yLvHnq3eKP0XhfGhL
	 A+cseImUVGz+EaNnB6uPlYI4qSFDWB+k8xcUtAxcp1KH89qtwrSBCRnNLcT7ziG/dO
	 vyg7zQ++qAIsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C0CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056079358.25125.17456875054031949357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c6f946d275be306048dc1bd7fcec6c484f272041947ee8dd0b3525ecbf3ad5
Date: Wed, 15 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760560793
