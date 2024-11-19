Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446D01D0954
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732038954; cv=none; b=pefEUXdkFDlsCzB1OW6pLGiXY0f6ILZQ7Dxp+D6NqSaottTey6Z3tFg+iREAeMUkGXAgsbfHv8bLHIDpKvBpJeHg3a0Um20lUbIXhJag527o77DnGhOOG59CQN0ZztIL4ZcIzu9XCmvU+Z28n57/gIHD65D31Mt82xqLh1HBSb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732038954; c=relaxed/simple;
	bh=Kf0Rzybv1B4V+TdV5sVJkxtyyt7jPRlbom+ri/1PRw0=;
	h=To:Subject:From:Message-Id:Date; b=Vn8Go5OEm1V9beHkIdL3xQb3XlFrGUkzWGwtDzDWnZXMF68TRq5F98MYGwoxeMHRMyxTZrd6Q+AFzoRdUqEIg4NbGCrnjc4wrycdZDUvaCuCacY0npWknwUycCAImCo+kMlhfELZuv1jFrD/5gn4nzoLCMNNsmdzOIIss+R5yxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTm3MmDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTm3MmDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD53CC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732038953;
	bh=Kf0Rzybv1B4V+TdV5sVJkxtyyt7jPRlbom+ri/1PRw0=;
	h=To:Subject:From:Date:From;
	b=WTm3MmDTgFMHFG5Bo9HNgmXVgTdKYWxOR4hYEvavcEsmN/CQ9zTePquVGfVMsuWJR
	 rxzndrXKK5KkexbhAA3Xt5rtnYfz1zs66NIhiE+FotrL+33nBA2DggNESykGyFgoMh
	 oxjos8pi06mEA66OafFqp1hrVVCADqwjjo20/zjf+fRJB1UnnMoDjg1STjDBQUyj19
	 ShGiCnaos1eFddKngaQEkTHUqpM1pHAoBf2X4vFzq5bXgTllKwKvPQIn0AxrMONRtY
	 3Tf77qVh6F8kkqQk4dqbNXHN0fYwSEvMVh5q3+YqaKORQ6Ukr+R4jQI7dtnnGws2bY
	 +IKE8hosNHjWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDDBD6C283
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173203895363.7655.18045269081936737825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c4b05b0d40024ff48c40e67b3b4eb72ae90e794e70f4f0d5be525d18efa24e0
Date: Tue, 19 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732038953
