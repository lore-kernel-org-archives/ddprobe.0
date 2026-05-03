Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2244A374187
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777846654; cv=none; b=P51dlqrSkocKQ/qyycOTHXuhW/sB1Jn+FH0VSHmnAQ+7dfrZzTrIWiAIEwLQYgFrWgKasUtqjJnBV67KlQYvtZRcTmPCM6zC0X9SFIIfq1w1IOba6f+0EIk7f0zdQSXc2wmNhZRGfvzBa417U3CaiI4F2Sx1vGLIyFgsQK2aRlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777846654; c=relaxed/simple;
	bh=/SL2ZVM/5xKJEeGQVucw77+F15UC5JqDU2wet/Sv5Vg=;
	h=To:Subject:From:Message-Id:Date; b=UZ2SM8r9g3PT/7+cnDyHjXjpYv8uIT70bg94xj0y7h64DI9QnCHHGVXPUafwCmbhjSvjQCspHfYx9fowuu/+x7pWzXzS5TYrvCPCOEzTEkqydsSN4j0mUvzK0gZIeO67YiXsk1srKkbF/P30XD9lXBN+Xf15guGAmFQi+WGdKgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmX7qI/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmX7qI/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E13C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777846653;
	bh=/SL2ZVM/5xKJEeGQVucw77+F15UC5JqDU2wet/Sv5Vg=;
	h=To:Subject:From:Date:From;
	b=BmX7qI/NAm1UB2OPxfxe8WIkVwF1kTBP4KYuljA5rhGHX6rF6gn5eL7YUxxx9AaS2
	 CocsYPL7VyhByUVBuULv1SXZnlhpBmVXHf6OYQY8c9vWvDA5zWMqcIdauytBvzdFUu
	 XDZl/fpV6b6hXRoZZcusQM5+1stgSp3Dt2DISuZ1YuFHoZLJnRqK0mAYcvU7kJ+7JX
	 tqvyd0//W+qfeMxMV9Xip4ldsxe+UqELhKeEM0Q7ka3jRc9olf/zvsufI3VD5LoZUs
	 /T3lcBbTE+KwZNG4xyXMgOvHY8gG0VDPgqICmNc91/OoOfJuatOn5h3byZObeDIyiJ
	 /dNRnvDspzvXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF785FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784665368.24713.7692469587744284354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f23ff50cd11ecff0e326f121e8eceabaf41d776629d177a83506e180bc1f04
Date: Sun, 03 May 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777846653
