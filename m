Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435DF3B4EAC
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787253634; cv=none; b=Bu1xIepv/gLWm8e3j5D2IIaUva91Q7l8KHzbN6EPLaUnm+Vip215C3sh2cLDMDcJmnst7FyErEAPl2YvWzOw3ICWtJqN5EvZo98atzvO6twP/7uaySeEFpvGXT+HoRqFOYMEEkmQ3fwZ4B8QB98eQ0gzBGQUwFs+ekZM1tGC+xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787253634; c=relaxed/simple;
	bh=YZuHr6tgy1ziQ9mwGzMHclLxnYgL2ZJoLDrVD9d2oW8=;
	h=To:Subject:From:Message-Id:Date; b=g7HkkII1dJKC+SjPz0Y9Aw//gP730xuiIB7luCut88dWFCTpc5urGI3G+hr4i4e6u/vofxai2MMn9SRaquHTxSS2N/MLIb8osIrYH+SJZp6pgyg6JKG8hj5iUYrTszbKo5WIn2AbRcIxU2qufDaVgloprgSYlbSKzWCgDJ62a98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKxHa42e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKxHa42e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF0FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787253633;
	bh=YZuHr6tgy1ziQ9mwGzMHclLxnYgL2ZJoLDrVD9d2oW8=;
	h=To:Subject:From:Date:From;
	b=aKxHa42esmK8+Fe/EyIwV4hW0tVElGz0sbez+cqmiTXJVfSIqP++I2EsxsfgF8ibh
	 oSQLIUjXax4zE1TE0m1QqaqbOFwXtCLRhidzHy64g9zQ6wSiFAEIqgB7FEbV53mpth
	 UZJvG8HJCufp6es0sF4/pjTvL4drZ29ZK8tq3k7GcRG8m6O8edLIlOaOI1/1IRiWFy
	 Uso8vyTf0DVZ9EOpSxV9skDaZf8edga2dSVZF1zBqBEspYNGxx9FNjPCN7QW6jRkxy
	 0fJjnAGiZNNjicVgY/zDvhoH9XdsjTldSSwJG5qqeSd9ctovdBpgcpzOA+jocekvq8
	 h5gL/lejmoKLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC9DC5DF86
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725363368.26333.1145338738297191056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d7a550089df3f809ad5c12e4e325333fa4429f73ef3437dc065cda123d0eea
Date: Thu, 20 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787253633
