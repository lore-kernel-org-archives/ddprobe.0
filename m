Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2935E248F7F
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759206594; cv=none; b=PIYE9erdplHgf36FeEs8djQNGpnajZtkeZk8UdeWexVaPLn9Qdz282t2sSDElv85qlsDqDv0b6/VnWywYItI6/E5W4CG5P/OiuAq7l8dNnWNZtSDgaPe+TLboaLF5YK3jCZX1M2gDISJFCkch8Cdw1JxbWQNnVC19yMr4JfRjfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759206594; c=relaxed/simple;
	bh=NMLhPHdfz2aW7Xr26W0lg8qe44DUJA/NDa+Y36p4GkM=;
	h=To:Subject:From:Message-Id:Date; b=tLe+uTTh1b/i50a7+J987eEJBNOt9OBnf7s1p4SDSevG0La5y5en5VEW4yNUUPxxZt2j6GJtSHPUaoaiSBeEZj1Kyc4gYAfVoFR2yE1bxF/tkBl7ARsJDpq4rvPdJvsMOt2AfdvYihvjyW10DZG0VJYZRsBEBbQF7YppOd1AlmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=il1wGbtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="il1wGbtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB302C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759206593;
	bh=NMLhPHdfz2aW7Xr26W0lg8qe44DUJA/NDa+Y36p4GkM=;
	h=To:Subject:From:Date:From;
	b=il1wGbtTUg15RCRGmRxH+sS1p5R1LTGg1jcPJxCv53NBZ0QCHoq5T5UoJn8/kjMG0
	 iyie4RTXwFdPI2Z+ouwHxXDleI5Y+Tv+R2tXkBI0o7YWhZWIbBJXprVjX28Jb2VLtY
	 kRE+oPd6RdgDV4hDoBQv6dLcEadI+jFpogaXpHvluPVo0Sv353OXd6sIxqNU3eA6ue
	 g8Yu/eR3u8BWYmKdcyPB1CQ9HweW+anjbNd3EpI+nr6qlR5KtnhSlMrs+R4G4jmWss
	 qgPZOgpizeHpGFCPHoqG+qDqONP1OvnlMw8UxO42dnBi1+FGkOe0VHwD7Q+/VgMFdr
	 V7Is8UIbqpLpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9453BCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920659359.10780.16321940938405406513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c94fb04d66a142d8dc1b6069bffd896c72d529f832c75edd61004fa195fdfc1
Date: Tue, 30 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759206593
