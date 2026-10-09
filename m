Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF533AB47E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791569434; cv=none; b=VtYn1Tv9U2S7SnmjgKDvY4F+yZcBgMG0Jaq+rH1mem6Qt9lVFDuN6p9exsaylekh4J2xhreeC1htdiFVOoys2KJ7kXnl/gwtg3sSp7wrx09sYFM+SBjDIiSa2zwGJCE6QuU5r+XBJIrH7vzRC5/4TDDUzfo96/v7R8xjmL0YSHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791569434; c=relaxed/simple;
	bh=kiAdQqLZ8vE0ytN0nmX52uo4vbI/jwx293e870LdRuk=;
	h=To:Subject:From:Message-Id:Date; b=otLpem3Pqqr0lFzRRp2JuLtUUx/91hPqDqVUQ2dx9B+BYDJfnlX81gObkB3jFnkULWXbq+Sc2CQHgPDFy1sc6vdUvujX+zsB/6snOCPAwD8hZJLYgK6OE3/7cTsUAl5W3U0uQON2A2ILQP8nzrFpDqcwy+OO9zJZsA8CT7rzhtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqbU2YVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqbU2YVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E01C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791569433;
	bh=kiAdQqLZ8vE0ytN0nmX52uo4vbI/jwx293e870LdRuk=;
	h=To:Subject:From:Date:From;
	b=MqbU2YVrrLmwaInsM/OPzVdOYcuJuyDlfXofpayfJp3RRdXP6cYL2giijyNMMRpjZ
	 u54s6pIeH5cbLsr5y/+ojXmEpRFqQXdA/ASZpT5YmdM7Rv0qJ8OCwff41eZUX4RYQV
	 zaOTjqjW62qCkime7zEdtjUmuCrusw/gflDyVl57xZO7gBwU01FCfyL7zIKQsaZ5pb
	 U9rc5zdS6WzySVB+Jzs6AZlfnYQfq2yIgqnX+s1xJxQ/e3GqefUZU3+SyCJ3ig2iaF
	 88FSGNY+9NmyFpmRsrO85O+dhctKKaE8MSPnyXV+K4QGlDlZjVXeNc1rpCaiO3kNQF
	 Rd/2NIBtlsjLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA731CA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156943368.17783.14338823464398667078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60cd988ffb78277315232beac36d8ace28160ff897efba094cae190820e2159
Date: Fri, 09 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791569433
