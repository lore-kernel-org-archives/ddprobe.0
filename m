Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365C73AE70D
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775666134; cv=none; b=kLsRzaEzMoj8PJY0GjDN0WNs+bpJsJyk4tKlrkoExE+mVZUsAf3w8MK8FI+H7Igx7ZkXEdWfwcSyg1vZv6fSsVbWlNT16pSrAKRz8olUQzEzxS+HamI2wTgbDnt9j6J/o3SZzYPnJDV2pqeLAqyR1hsNtOfpUjjgvp8lCvz2YvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775666134; c=relaxed/simple;
	bh=kYxjloaiDr0KLkrdBcH2BvWGSmXPHVoygV67khBSKxE=;
	h=To:Subject:From:Message-Id:Date; b=pWL3wUrx7Aeqyk9laqTdOvJV4augi3ESTA9sO2DcgxwhJJTYvX4ItglOmIDDENsqWLtDKG+HVzjotMcRrEnYs/zwbh2NVjQvqme+W/0CkgRiSM1vlN5WSzNECIVra24Vn0HmGs0gO6lwJh1O2g3nrQzzalZLgYhyzCoYCc1zbmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SC4Xg/Pz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SC4Xg/Pz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59C2C19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775666133;
	bh=kYxjloaiDr0KLkrdBcH2BvWGSmXPHVoygV67khBSKxE=;
	h=To:Subject:From:Date:From;
	b=SC4Xg/Pz0q0TmjCLJXEMpdabs76burmOpYP0hmo7M9ETrjQ6Xsn8ZWYSbY1cxNrEc
	 M+P2WH5ZXiowP7uEnTCYyyI8eD/GGM9qxx4ReFFwlIlLwNESTxlXhFkbsi6b4ZeEE+
	 phGoO9SBA006oC1dPkDQBVXc2e34nxcjLQacIxf0XfZbvpMsfSN2wCNXOHDSpwf3fl
	 YTIN9bEngscC+LZEwNkR5hEorkHgfHuFpDePnR+qlDcfEGVcakNiGGKgxCb7XIJ5xL
	 uxKW+C4/0vI8Kj6CYurQ45/xd4Yc+Qt6AkPo3va7+fKRgUefmlVekr6CjzV+rUgN5B
	 Q5lTod01gpWiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63B510F995A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566613373.15595.7292449141343544604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb669c10a21bada2cebd8d54d9bfb8b87c2ff6cbb21a1e0c80dc614546c88b8
Date: Wed, 08 Apr 2026 16:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775666133
