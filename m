Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427FC14A4E9
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 23:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740438534; cv=none; b=FrmRRkeIy245K8YrrnTn8aVuWvv8+vCLI5QpBUS8R981Rl3CJ2UYVyE/KLldjSLbKcHMuwXqDY1X16efjvagHidT26DFHK4F/sJaL6U/IyHV0C79U9LPk1Y2CPSAeafAUOk7Fc1TFc5q9RfJyZ17nh2J66IX1og7Qwtb5AaOH3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740438534; c=relaxed/simple;
	bh=55+5fVpXNvOCHcr/4yOyJ2vnbtF28OrKBBsQ8ONBf1Q=;
	h=To:Subject:From:Message-Id:Date; b=Yg6FF16UZsug11u0UOy1ceoksyZ3Ve9cGbTXgrmafl3fmtj0b4qxf5KUL3I8I3Z9teE71S4G9WKU2Fl0UUNjb3aJFQjwne6WiGyDbtBdjBtBsSL1sSbtH14qQwtqmmqIPYK6nQL+esRnynUngOoXtKmd1ynbJkMDzI+0QFcY4jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVmyciu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVmyciu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21DEC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 23:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740438533;
	bh=55+5fVpXNvOCHcr/4yOyJ2vnbtF28OrKBBsQ8ONBf1Q=;
	h=To:Subject:From:Date:From;
	b=lVmyciu3dT30+ySM9bBvX07Wy4KMpSm4m1ARHMx+BfWO3VMlglHjbwbfsFLPusRxR
	 Pyw1KfywE94AgbrFqFi3wLP/TZTuM6TcpOWucm5DK3DdC+SejYzs+MyHq+xuH/K2PR
	 OOlrlWCP7Hb8xUC4b/fcxLE7j60ADxRrjMZ4fYRAC/b6EC4SzQbTIFg59Ddj8kr75J
	 QkGfu17rGGMhpAbPL0q+i1B4DK5BPSDHaqg5R7+zVxJwxdD47nXkNiJhCwIhCcHbQ2
	 nFU1ydrY+3TSZKQVo0k3DHYknwDEL43Ha+iHHEpjCtOsTdHHTpR/2ZZICTTqRgFmTd
	 xbtXmjNPUF+lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E91C021B8
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 23:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174043853360.1676.2212364331031611767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df952726b3e0ec4c0a134eb0058c09b30b4ddd5ed244e8bd41363dab404f242
Date: Mon, 24 Feb 2025 23:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740438533
