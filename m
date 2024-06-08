Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0E418E1D
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717857443; cv=none; b=qsGSA3wmf10xhDExrj7T8dIDaoZOQL3xcSbcUg/biQPDzOW15KpQjX76GHXjlOrmqUndvtaf+EV+AVnVkrUxZH4ueBiq9kiL9IaQPMKQood9dfF9pd1AaGwri3PEYtS8wgdV9KReKSx7xxt41SWqI70rt5aoRSPnXhmSJUjW7o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717857443; c=relaxed/simple;
	bh=+WZFLCHkmIwmj6DZJMKmfrYVl9kwjvBARoNASFFd068=;
	h=To:Subject:From:Message-Id:Date; b=tllScn2EpBXCnHRQ5x1EodEgd4IJWLJarf2+CKTKF0S7yFoM8NpCyddkxQhNWmnyDbD2BjPHtzOOneOYc+AjQo+YwC9eiLO8qWD/Uj36clwV/M5zoExcQ1qKhYQ9lI/LgBEuQ/AWw4F934JD7V/EAjAsP7AyxIh2vikGKJZGlWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YL8f5cYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YL8f5cYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA69C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717857442;
	bh=+WZFLCHkmIwmj6DZJMKmfrYVl9kwjvBARoNASFFd068=;
	h=To:Subject:From:Date:From;
	b=YL8f5cYSDKDsNyif9AORCLgveYFQ/9Dig5O2eXha3debIWhp/OJrLiPPQjRqECqHd
	 76Sav8mUHdPx2oiauHRpaNzdE4aNwB2BtnbXlKCLPiGARGaQiMdqFW3OIgGSb00EKI
	 Lvu4W9DAMvwf05z7sjB91ArQBKW0qLomQZtJbnnjwaYf3TN+QJA6i77qE6fuW1vsDN
	 fNflUBT1b3Zy1MZEFLk9U6OTd7ne4pDORu0wpcdUdUEZc+BNCXqcp/c9q5HCW+9a0V
	 W/EK0wVrqMmrzZd8yoh89m+ONxBJy2MAuVpHKdphdAT/lJmAd5IdY71aF5D2Kyax0F
	 /ZVYfzpTPzi0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF0AC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785744275.25337.9729239965364060190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f261f4c3b91a5799a5560946261b904d5d16f3a14e2ced221949887f411125c9
Date: Sat, 08 Jun 2024 14:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717857442
