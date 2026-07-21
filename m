Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F401A683E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784612314; cv=none; b=tVa05kdlb4IHKMStah4TtfNxLMtkEbMELOHpPxuOm3FemRyTysI+aAavUu9lbaUUs+PDBo2W1hhLy8aSuJlCN7pAkvNDmkCfU7jAs+FdUPPj3xzht8yBO8rNQlLphS4OpKw7DwpQgBOYS+S2JqLmNkRbmfpGDLW34nczLdKZDKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784612314; c=relaxed/simple;
	bh=ETCUnjVwDqo0Q4om8OCE5WauhedwpEb3qc4epV862oM=;
	h=To:Subject:From:Message-Id:Date; b=LdwPYuACjsi0b8XYI0+kctc5LB72ZoOCz+G5I2ZwlKYaaM4uJDTJ3Ka8uQ7nkEzuyPKm6pjSeH3f+drZUo9+op1X1eCWCFXBmz67exVfUzQJkdfben/8J+PHlvM4fgZlsSV5jx88AS6sIxxnUq1WnUWE5QWkUPiH5Mfkrc+kPQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMKaQpO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMKaQpO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB75DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784612313;
	bh=ETCUnjVwDqo0Q4om8OCE5WauhedwpEb3qc4epV862oM=;
	h=To:Subject:From:Date:From;
	b=gMKaQpO4BAZPlEtmNMQOss7GK3AOzhyBNCJyR/xx1NuZfMfLv6V/d34WnQ5vmSkU1
	 w9mYEp89nzQP9ZNY60yoloEwD8xutfua2rYbK/4cze2YKrTMOYeopW40f90NP1jpaW
	 08lEiHeuu1DIPJi8D+QWwqE2ObsiIUGMS7NOWBqqnOOl3nl2LjLeqdrnsGDIpA4Cop
	 dM+Ng9Eb8hkXlKWLLB3y0Ay3c+xhddQ7kzsmgjqFST8eUyaEo8gIscg7dwp1b2FfQz
	 Qgzbbumgw9TiFWp2zm50UgLYluO5l0r9nhbqRzrpdoj+bBONts7jGKTPSloCL8pJUJ
	 5d4YSnRzLOzNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C1C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461231368.27404.15390935807439917342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3aa50560c85bc1fb927c8d0108c76eb4603eb9a7f38bd4dbd959f54315843a
Date: Tue, 21 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784612313
