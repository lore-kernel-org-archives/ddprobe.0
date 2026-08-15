Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC71189B84
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786819834; cv=none; b=hag+m/Bwgm2RqNOi8au9pZ70taBurwXFNBoI2XkP4i343zeYh8okeIf0K7ROpxn4rWSs8ngldtoewfZf/LpEBMKcR7Z6tHqvWReOtfvpxVpHi0dd+v6dk2+Kua7s14M3KcvXpQwtRxsH/rxC5Sawvcuvri4m4xmqnZC3Rp0Nrio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786819834; c=relaxed/simple;
	bh=VaQSuX4uBYKV+qF80N31CxN7lQL923NEfmtH1zpYunU=;
	h=To:Subject:From:Message-Id:Date; b=MndU94u+BgMTKvWVI8qoHV31aMeYw5AN/O0E+btxdM9z0Kd3c00F307JZBemSLUnGlMRqG6BQlLLL5z4uSSloioHc+Vgf+6CTjUYruep5f2u07G0gZFY0++s0T8FYUNBZvry3eETW/XoiQM+UU6nlcxMW1ANUr8gl/mr6aSVFNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwAe+lXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwAe+lXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37E7C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786819833;
	bh=VaQSuX4uBYKV+qF80N31CxN7lQL923NEfmtH1zpYunU=;
	h=To:Subject:From:Date:From;
	b=rwAe+lXQdBD1Tv7mzdaScDR2zg4MuxJQM4+STakVKGSY0sJ72weJk0cO5Z6kvNNEB
	 6UHuZXQc7It1n0KbndpsPCWPX4Oo9ScLMcFG6EEsP0NqBBwzCsUYN94HBCE+xo22GW
	 rUtEchXrUGmJ0tXSrNqrIBCpJxeh28gItq6hOmjLUhvzmpu9sQkpoUdsmiIApGYuZB
	 l+YGV/J5My94IDlFrCYLBFIanDkDp4bzYHFuAyUBBzYn4Gq4fucS0E5ZyX4IcxmNt1
	 I5rMrO69/XIjB3cisSorxwe9XOvMoxYZ7YpibaT4BEWE7YYFFZaw284QSB9pX9Xivf
	 SemNTU06EsJWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1CAC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681983369.2894.9397861072170404537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413533b9c97e505e24c61ec459c0b77e15dcc623c9d1a68ecd464e161095bb04
Date: Sat, 15 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786819833
