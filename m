Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462B5DDBC
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744159794; cv=none; b=HWK5F9AgUCp429zyXKSwRYT49hfpmiLzGsZzM77udrGY0pc4a7bNDL78ed05g/gWTJi5LChIZiahF1c9NIwXy0wvd4V21N7+Hux8NtXOdQ3rp1G6+tlQPrXlWFeJ+j+FAOhtHC4lToN32nCQV2ZBulYfLJBZktmo5H5ASEpMo1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744159794; c=relaxed/simple;
	bh=kuHdOLKEA841Ium3pfQKWyDcd3MsKe1PqF6WTU0FYqw=;
	h=To:Subject:From:Message-Id:Date; b=AQ3YVlHHyV4EKcTF14g2DLWCtrEb+Ev7a7l4OhK1LYA/VvT93e7/pGeVgDcnDUEpJ1iGOjTZKb8pUb+YQkGrVCAMvxnlLIvfrX+zayVc6FYaqnZeCEYp+6VaReIhHjmEePAdakyI2E54QE/pUjig+Wkgsx/dAJyWbLqGjRPqTok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+GKVia/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+GKVia/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1760C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744159793;
	bh=kuHdOLKEA841Ium3pfQKWyDcd3MsKe1PqF6WTU0FYqw=;
	h=To:Subject:From:Date:From;
	b=S+GKVia/y9j5oUgS57QSkI6RWtyzRGTnNhD1TnDjt8xt360jEsCU/qY8fX0CXX/EE
	 Danu/Z4UT3TGrT6dovzrmEAueTYklo7iHS+VDcu/JKEqwwLzJkZnZ1Zo8gZ9hgPnAn
	 +VH4sBhVfnwbGxr4PZSDfAcHsswDKLu+qQU2m/Yqx7tzVOvNNhDK1VTLcnsU8pgs4p
	 +HPhKtBNfqTQN6PgKw0WSmHa5TbzlbFGea/cmrSbLXCiyvy500b3uTfQjhHJlcFGqs
	 tCK9kLjfgB+UGS3ZR8iONq3/vdRPiVCpLfgbvNyYhwjyauB0Iv6buCrc0kdFDeBqKI
	 /7CDm142Sg4nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A995C36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415979359.29333.4527685996369409374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27975e906c2e86005fdab861099a9f73ea11d88d475b1087d3f9a8dd636d8fc3
Date: Wed, 09 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744159793
