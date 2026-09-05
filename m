Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F288175A6B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788580234; cv=none; b=eY1r4jT7EeqPNXvumLo6uCBq5SuU2mttMmMkZ/ZLKUFP+qlZwgz+n+YGUKxd2wufVuK97Au00w9JgjMCDbElh/hSAPWVxGn8U0Gzks6ck4FmNzT7MMbnYnzTNiNZD13DXXlIw+mTwqlWWtNDqtRKvVcC6ermXg4N/rH5bgxuVLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788580234; c=relaxed/simple;
	bh=8QhS+FPmtb5PLqnTxaalW6rtP/7T+qPXVggzLyTet9k=;
	h=To:Subject:From:Message-Id:Date; b=VirkZr0kNDfj4CpoTah9vs6Kl6Rel2QyMrGIg0P/jNbReYRtDbp9zFqwZYVBGES5QuRE0Um6Uj+AaEeIsRv/p6xzUEOFRbMZfuVLEMHqsTn8yraLo0sp9GjZX5XZPVtsXAQyJm91sHwm5REXFptOllKXEagzTsGkcdJzLmF7G1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLm5gp27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLm5gp27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F04C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788580233;
	bh=8QhS+FPmtb5PLqnTxaalW6rtP/7T+qPXVggzLyTet9k=;
	h=To:Subject:From:Date:From;
	b=aLm5gp27QsxycE/tw/b0s4oHN7JitcC9tKosqej24ZqNgxCr+7VlkI6lKMjJM2rPY
	 59iE+xv4yqmCY/Paeb3vFpv3T9MENNHOpKBTBu1VnTyCG1S362U9ZkYWR21/tWqRvH
	 cS73RjdC7eCuUzOPgP5lSTmBb6NYCg9Wnbi/hecfhu3wZz3EQIYfxayGNN80xDtNdz
	 oFmBDX5YfPzvYm+dZq4yyMN4ZANnchD3bY/1ZGvt5YMsDA08+sfvGjc2fbyTbDUPHr
	 a6l0MQX9S1kytjiSTGb4aKS39OC96mJ4pgGvvip4dc9y423xzRvoMESErPXclrCT3B
	 UsjEgm4bA+afw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFFEC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858023368.7948.6038872984769756351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10d705181d9e594ab8b6c87168e3b6e8b39da234e4b8a8a7c816a9964ae3c55
Date: Sat, 05 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788580233
