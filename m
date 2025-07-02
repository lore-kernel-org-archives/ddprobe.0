Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C821F13AA53
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751417393; cv=none; b=ZkVdvBnNk9uH+ZK8K8CCAhD7/xDPwSAGf5DrTKpqkBDMNdRXG/hC/XTXzLGSoCJlPNmU2qJOxoNYZ6hRivs6le3DFy7cVAsN+yOY6hP5C1Gj64zKO836W/7EnFdPG4zYqxm4OWPstvPceV0LlemjnMbcA9xETRYP0o4nwsHrLm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751417393; c=relaxed/simple;
	bh=ekttu2Z+6OUEUfym3A6hD4gLdkSe8hAGGZc0RhWJPek=;
	h=To:Subject:From:Message-Id:Date; b=XzHQeaUORoA0SRzYDultA4uGbQ1GDzEPk3tewPgLaNTDKWJzJarR8B6gxI7FuLrbcbiBW25iQQM+VucCsG2kW6y7DEx8i8DapKkFC4W5/HFGIBxba3c4HcdiuOsRGKZNn/s3ljPVFz1QygggjyuEnR8mnhXMZ/zFiN5jtexzdOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhIBSJEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhIBSJEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DAAC4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751417393;
	bh=ekttu2Z+6OUEUfym3A6hD4gLdkSe8hAGGZc0RhWJPek=;
	h=To:Subject:From:Date:From;
	b=XhIBSJEtdJAvMtCwF2PcJJa8RPVvxYVOhqFfNZJz4ZzHHCnXdinosjfxettfL/61e
	 MnYxEKwU0Rq2s/nkoXEHm+pemefaSJOCZ/hiuuctx0FPD8vlsKGAte/5orv9yPgFoB
	 EkYSjebayHibWtaVnGr2lgQG9GeakSNnFB/NR6xxWHPR2iSqAvBQk5TqpEDoRsnDfU
	 jxrRwQAcIbH1ECQW4cYSTII1UfooPh0u6fZgacaR3FI+iRLE+WWKOPIziTPQh5cpX2
	 EU9wq5Luz3guONRyTLq85owqLDvcLbRjId2xEvJmMt5ycdCGxLJRZX1tIpKflUFYdy
	 HiyRpzW6pP9dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96811C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141739360.28032.8650846808244184430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80001d0d77641a31fae840fc2379d42309ee51f6202d2486b77cda3e66a2bd09
Date: Wed, 02 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751417393
