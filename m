Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F1B221731
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744767594; cv=none; b=spDCFZ1WoxcVax6siaicLuaPGVVNoVmx5wj6kkYF0YDaqbof3NeLSx5+u59XP9NGiE7L5e/gl3bFY2/hvmQ0uhHOgDswLD7L4/JQRrcRg77VONOMU4ycYe2V5/t+f3/ujAMDx4L10Vnx03bC+CSDRsRo24sSx6Cl2y+YF5hdU6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744767594; c=relaxed/simple;
	bh=rSbMpVaAWJ7gThxOs+s7HoMa7JfgCzhzRj/zHp5O7uY=;
	h=To:Subject:From:Message-Id:Date; b=QHD7iD1BBLyTRLehI/eJJcpLhI0GZ5R1nPdA/lh2w3dJTGUoWOmyIBQatHyJAYoZln84ZmcG7Gsua+FTYoV9jEJQNUS3mJjk26VNeFg1c5Zuhk2WYlX0CykqmVYLrklVl/CoofnL4TRA226Hr05WOsxpc9tJNM9hvGYibmZF4TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=on626Bt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="on626Bt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF30BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744767593;
	bh=rSbMpVaAWJ7gThxOs+s7HoMa7JfgCzhzRj/zHp5O7uY=;
	h=To:Subject:From:Date:From;
	b=on626Bt+e5ctEFmBNLQx2mJo9eMLx+PAECL4nYkRJla/R6l4Xew5ssIB9MrDMXXik
	 8ThAzuODTtHsz/xV3gkZV24G5a8xRAIJqPe6t3ABmPpkrvryL7E/9fqTUPziRiNb03
	 OrkiH8zOQKMt+N8lcrvXOe3oJ4aAu3HixJ6Ola66+WBjapOZwhNLDPbPNiINdpwhHu
	 6VTNqpXaUctI5PGtYCmQjeuIjdU93sEUkU1Mv5C1I697HgL4wBjAYgQzo9GaVOZGQa
	 AfJ+rlEzMLVYSld2W+TU6uhHlKQ3M/RAWKm+yXCggYYhNqF6Ln7vIjh5wvvO2wDY34
	 v2Ux4trrs1ObA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9A4C369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476759367.5110.5692979009950788490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b14af6289d9367359b3142e49753067b4a7aa0a70dd2483be700842257b0be
Date: Wed, 16 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744767593
