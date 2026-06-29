Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4509D3DC4D3
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782743914; cv=none; b=Dgr0mi/JPuy6NF2LQ5gCt8XOmngOSHOP6D8RIn0YXBHonmF0F1lv+MX0oEuKCyqZAAIR43VuOS3TvduSoZnOb0YFrguzpkjJWc6e+nWr22JxgKGumGQeskkJ5xuhrnAvD/JQrB5syVhNH7DpjVxS4l3w2Ir1N/rZEhEslKmNvb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782743914; c=relaxed/simple;
	bh=Bv3nYAer4UX3CpgPldzi3nxrN8JmYaVmRmSBkI+Sl4M=;
	h=To:Subject:From:Message-Id:Date; b=ZmPwoNPAMr7CQo8pbLvm+thIxm3vLXqKqn9rLwYHme6DiEPbg8+EC/msuIvQvgwSnx9KWUnfixbHalz4pv5R7aZThN5Gb2dIcpwVyTz7sCAPQwOIyF3D9WGRUkAKw4JnTu5UgQzhqTLd5ROl/k39QE1nET0fUkTsLhAb9LjHqks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8Cfbfa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8Cfbfa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F7AC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782743913;
	bh=Bv3nYAer4UX3CpgPldzi3nxrN8JmYaVmRmSBkI+Sl4M=;
	h=To:Subject:From:Date:From;
	b=T8Cfbfa1G1NQx0O7ykIK+vn32YbLetO1XkGBidwJXW/wQZ8jW40wa+HrGcsSeEdnG
	 mhhslJTraudPFtxTTawAP4vaFsD0rsXCh2dw9dYLO4z5faj+lxqQzCmGT7inDsSVh6
	 vr9t20Y8GyJI5Y4vO/9yXM7foEzkf/EGByYkgNZgTcujgffBGrSKZzHv4PUe1KKCRX
	 VD6qv8N2WlT2YbDlylbmdlwSiWcUZf8qpS/hMG9sm6iT4DgvW+kxkvzw6MRzBCnlSt
	 70BONXQ1Q1HBY+tU4wuRsDeJ+u3PHSt3QkGiM/jVgzWXc0CTYvxxDB1mjwqjShMaFj
	 DTtY+Y+UefWIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1B5C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274391370.29944.14461825157212362601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b8104ab3e1304d50dfd2a197a7743d5f024cadbeb70e8b7deff44548695d4a
Date: Mon, 29 Jun 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782743913
