Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365CC2F746D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780873474; cv=none; b=TtNtmFhCgifWOfXuieo8/C7i/rNYycP5wvgL2ZWQxlDo9a5HHcV7qgLRtB+23HjRo5x3EoTWOXMJuHrFUWJXd3uSzSYVE+ql5NyUmNmuXmcsdsQb8g3tl4Q2OEFvgJ/onArAmgFqf9LjDUgg9GFPxXR4UzxUVXO5qr4XwG8iRTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780873474; c=relaxed/simple;
	bh=4+YpoeMccouqjRGy5hXhjHc0/IKuJeLzrFdHydKPgCI=;
	h=To:Subject:From:Message-Id:Date; b=Q8xgmHmYWToOpOAsZg1T/klmofIZXnYf7gGT1yvUKJ5ElZDoVKkN2bOSD8RQPp4/Fyte5jAYbecrGX7zb9lP93bwzIn6Z/lPJnKOxsupIrqpSWuBgoBz7uVlb+2vwddQg08twTnf7Ucbx51RCUXdNvRLQrtaE8AqB2NAVkn35hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGxgcJrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGxgcJrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D56C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780873473;
	bh=4+YpoeMccouqjRGy5hXhjHc0/IKuJeLzrFdHydKPgCI=;
	h=To:Subject:From:Date:From;
	b=qGxgcJrQOYVSruJrcxMMjoMa3FHuxuBQlsMqNRnIV+DNuO7FPDbDJREYL10QsBCr4
	 HLwwIgq1qQbmVS9D3hECwMqU9P1dpNbLDx9hWtOER+QdqM7Q/mfE1piYnYLEcgdEtk
	 s4YII4QzD8wq7UNtYQqSt8ll8Rwbq0XdmZL41wrNShiZMh8VxNXIVYFflLuFNLpRRx
	 3bbDMy4P1jBvmg+6N9iJjFnEypqn7IfHdHSHjuPA9dKSlTwsvZFjEItHtpuDt/DB8G
	 wcpvG98oI4k/TZqgzDKiDTv3L2b6Jo0EwFqQF77FG9QGtNB/ymGqWoPajxq9NrdIHH
	 Z1YuWcv98+InQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF64BCD8C90
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087347368.25251.14037582486992049443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b78e0f4dcfd83ed5ebfbebf72424bb0ccc79179eebbbfe93c8212850156eda
Date: Sun, 07 Jun 2026 23:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780873473
