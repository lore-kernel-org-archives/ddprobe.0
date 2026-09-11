Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545232C0303
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789102234; cv=none; b=AgybY6AJpCSVpxQYBPmJWC/xHRG6FDoEprgd+I22rjU3f07b8xjTbOjbrSHv0fmd6w7MUABbH1FkklRY3EvSe/7PJ1q5/1TvTtZhjG5JgTMc3RsHIdqLQoQoTxNTAVBsh5YKYtUUt5QElS++IrjwRQv4a2wsPK8NisgeFogBa/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789102234; c=relaxed/simple;
	bh=WWLB6pdk6BD6TCyjy1rC01wFekzWV/3a6ztmQbFDYxI=;
	h=To:Subject:From:Message-Id:Date; b=EXYvXjW5pha0/jxzQUwTOi3XBlk7xyTY9GQ1xochXi8fnn7XlV+CVXOQdFrM1j7cl9zo4zrNX2yC2G4eOTQP3UdY884JuCZDHwhSyhEd2q1VO6bB04mY8/QSBsTjqDTsUSVzHJTJUHQ95dzjxOTGwRHh16qreLBtvkCk/Fd+mIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRE0iDnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRE0iDnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB277C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789102233;
	bh=WWLB6pdk6BD6TCyjy1rC01wFekzWV/3a6ztmQbFDYxI=;
	h=To:Subject:From:Date:From;
	b=dRE0iDnSWIoFB4ulDlKjAPXlICIUbd9Fc93LLQOFTpD/twFc52cThHMzr2N8IiGmO
	 4Dzq0nASmbR3VGYw8Y1IvCcnF1GvbyajEEF3ubvrWUSh1Zu3xM67W1AwBpOiXcN3li
	 k31z6RKNsSqjRJciNbHKunyfwD6nHBoq2m5NPUfe0a1jhWvT/Oa0VRgA1/XjR26Z3w
	 /9+GOeu1Yg6KleJy+r/6v6iAQcsY+HHt0fpPbNh7g/+Cb38WBA5MJ0WhybmC1O6Iy0
	 Trm0HX8dc0tYQBygNW/x4++GOpO/n/byq8alcCTe5yiHvIyJfpUm9Px44PMWjGvE/f
	 bRuXGAQMVK0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4F6C79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910223368.32539.8521345466729537842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97a2bd38df9ca132dc1df92b206ddc168454bc5a6d84a0f05746988788a1148
Date: Fri, 11 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789102233
