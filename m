Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE5A13AD26
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765236774; cv=none; b=PeoJ20XOKxagW/BbfNftElPxYvxUlM17ryyFiFc0CQMPpay7E5y6YXWL8pBq6OqC5s75qdV1gZvludDgB53Gkcl1Hy9KMUF1T+hDu93GgL+XJHqPDnpoBlQl230Dpyr5ahIqHHQ1n8ej8cKACDQCuEYHXdtAkt8Cf1O8H6nCTwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765236774; c=relaxed/simple;
	bh=Mj7UCF8zOzjoREWm4PMmK/xLOcYCpq5FyRk0KNCT79k=;
	h=To:Subject:From:Message-Id:Date; b=Ng0euUteelOcV1ExHyLUPlojazW4paD40XOF+4AyNsY5w8Smbi4yce+4HXmB6g1aEqkejK2+dK2AR3t2J7t40xrtZmbGLO1eeh0t15fz6sr5V/BXY7lWcj9TawSW2h9FHW1/Co9+wbjOFbNEQ0vyZvYPbKq4rULdVZ+EvHcY7u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMh/UHMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMh/UHMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7A1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765236773;
	bh=Mj7UCF8zOzjoREWm4PMmK/xLOcYCpq5FyRk0KNCT79k=;
	h=To:Subject:From:Date:From;
	b=TMh/UHMgEgJ/EnZKbcduwp3tWzuGuDpHDN5XO9raJCQBUKsmuU36R7UigIbD1qxbP
	 uIFHwJ4c2t2Ag4b/TPEFNSnSvqpY5+rt6heZH7E6iHvJm3D48lgoH/JAtckNc6b0Gj
	 s9oWb9dUo05ew76S8YBDO5zsdBJHef6WBBoUkxvIMUxFNdrFn2mABEag2+Im43dd2L
	 M7TxNlB7nthw2eh3DTwQ3AJhwKSbv0lCtE/ElEmc2iRwvxFE6/7gno8aWPJeEmS2yF
	 ckmWt8EY9wzQto6WvR/8gKtnBbaEArFfy7qRMAC3R+8mSUXIlhAlZVCl4yfM9oPD1h
	 dNGq5dS3XEmFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E6DD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523677359.3567.13484140463345049644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5772a273d3e26e785e9c53ef5c0aef00986b1443921fc71436aa2340bd0caf1b
Date: Mon, 08 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765236773
