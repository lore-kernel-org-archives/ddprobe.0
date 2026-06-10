Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE0F238166
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781099134; cv=none; b=XGsm2Xkq/hi9j1fNPcXX9+g902rKSHDYG2lTzwpyOZeiCME79Ux21KBp2diyNjjph3sSNt5rsJkkg0ZD/J3hfT4UAfmgs8umro6WJUk9HHU45X1klLAAXo9Ol749sxdjUlt4obITtZGkSpPrXc1gPKMXfWGwp1CaF8mAtS31wnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781099134; c=relaxed/simple;
	bh=jbrITdwuKASSdVAl1jbmOrJaXguz028itCM1JpDsovU=;
	h=To:Subject:From:Message-Id:Date; b=cdp3Ut1NmhQTshJXBY164w7d3kNNh4ZpgoubAPpF4euYSJ3p4GuPC++r/t3mqzp5JOJ/dF909pN0Gj9YDJgWQHiAJkP7A26nRcxM+EqiOmtFdpdFsQ5u3kueacDmUIJ0NZ5aGsZIChBHw5IWvIQWLniRW3NX0/uif78W9/irers=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzSF6Gal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzSF6Gal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD78FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781099133;
	bh=jbrITdwuKASSdVAl1jbmOrJaXguz028itCM1JpDsovU=;
	h=To:Subject:From:Date:From;
	b=qzSF6GalKIXEzzV1twOEppMS4wGx4ZgvlbTI2h5ReUpsOu6BoOalI/ygFecy5D4Dj
	 1dKtFkEhC5RywJQAU9WR4tDb9rlAM1tFdJ/3q2piwtPG7GtkzZdpwFYCUNw3HQcEaJ
	 uTLxcGkgmKiREfps8lo3oZLgzmtIaP0/lqHgTrCuN1p38PDnTMqPt6j5u5W0zmrwb0
	 xS1JkQNVbZDy4527MEu9BOyzPBvbYEk8GGwhr+YywM33StScC15hZpSoce/2ltJTEL
	 lRzchao8LAlTcM0k5FJ6CDO53NKxK0d44PxdIsYw7hXP9rN4rclOQyChhftbIqTnag
	 FQnK7gP6q7CdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC49BCD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109913369.1089.17556146622749541178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82105cc291e721cc2e1c4207c2154b22cc595a26e696cb90a8efc1274ae5081a
Date: Wed, 10 Jun 2026 13:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781099133
