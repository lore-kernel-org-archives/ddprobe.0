Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2674218D64F
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724435754; cv=none; b=W7YlADxqFpilcVZtdQW1+u+9QKDBUmpyhS6QxjUvzpfqwO+dZ/2fE87eJsz2cTgglyi/RkMQT33SBZsFpfwWtsezdmpGFGu0TeMlnwvgxpaMJsjIUUXQyDYDEmQnIyJgQNL3VBTaETxH9/XcX6JYpJqguDjeZ5F+TMK/4iRpV3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724435754; c=relaxed/simple;
	bh=iK9yoEst6wVyVPrYamy+OH0HyLoS8TIEDyIrFIAaTOI=;
	h=To:Subject:From:Message-Id:Date; b=seWjlKUXELkcYvkISzBwPNNECD2m8TDO08np0sgBz0dv+oJREhm8r9Q4AZ+8P+usEtr+2TWAlBjIdtm1ynI5YfADurZ96pd3lfNRDAF8NdVO540jJqD/vnmscsDjXdzGCzRFGyV00kKTt4ZVqAp2P5N0g1T7MHzLtcyzpzW7Qds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IK22jIs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IK22jIs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4ABC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724435753;
	bh=iK9yoEst6wVyVPrYamy+OH0HyLoS8TIEDyIrFIAaTOI=;
	h=To:Subject:From:Date:From;
	b=IK22jIs7w2yosdXLysHzSMu/S1cApiqzzKDrn4W/riDi/TxVa7Grji3MvYZNTYyrk
	 CAbOIubzPT21ppYV5Wdap6vkp3TD6CVDw3SuPRs/2axrB4vZH/EePAHHKy1xYCXxEI
	 o33FgQ0/cSTqguqgwJYgVa4ScRfLuHyikSiv20yw4R0+qLjej6q5Mup/zFi314QeoJ
	 Xb1OoD/TiQ97ai1tDvUuF7il/wFKRa35I0iQjsiX7A2Fg+PUX1jN7cR6oj3OLBjDon
	 VwouF4Lr/bz1wTJGHktkMpWJ9XqAkTPD1oRsaAZOUwcTinVdQmJ+MLUqkDSj2N42Lc
	 9uQPyeb0kQ3dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9997CC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172443575361.14993.15070688490649934064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84d9ace18498e41bdbc01baeeb6f60898431cf24943feba55e14cbcadf9378d
Date: Fri, 23 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724435753
