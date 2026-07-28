Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 820621A9F97
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785227434; cv=none; b=cNNy076ydmUbPqjCfGmlF6dAL+GOrX/IowLRKBt8zId4bVTbqNqYA6IKlQNFWZ2nbW4FrtkphundLM6u9H1mR6+lFnkCczgPBUmFK7j9x2urIy8nEm8YfuC2uTpdbNlzTHDm13zI90cPQDse0c4F+hRcPywxqu429NMyOb7hhaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785227434; c=relaxed/simple;
	bh=jItgkzVZMF9llQmdG6qgBYB05wfnOJbHLdL5a44Gnvg=;
	h=To:Subject:From:Message-Id:Date; b=j34yHrEW9xDYqvTLjJ8bTjKatkCY5f9GhTMDFkZA8rjhx8rkOIufXFWA29vZrJm/9HQj+uCV60QsowMyJTAz+j90k7b1s9KaOsKbg45q3PV0NEDAujIt7gvH6EPTRkxYDicpwfBHr/mSxB4Op2+RLRs+MsaVXRM52shJ3AJzQGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teS3+ak8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teS3+ak8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F319CC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785227434;
	bh=jItgkzVZMF9llQmdG6qgBYB05wfnOJbHLdL5a44Gnvg=;
	h=To:Subject:From:Date:From;
	b=teS3+ak8XwPK41NVEDP4mYqCpk9UgOrYh4rzhOGEAp+8TDGGwMCz6uZdflf8nera6
	 yn0p3kri2Ep5tycCT8SfSqqtp1IGJV79CGJeG0YBDoQ3rIjF1z82rKAKk1l/XZ6uV4
	 05aqfLd32LSkdwAb3lCqRSxxccic0yBNrFH0s3U1IO6b7JHbDzk5Bx6Imu+HdwV7Yd
	 T4xDHjlr1mJj509k3/R8DRBnLuGwHaR6S1OyOz04lKnvwsRaovZ5OkOZUYvMwxxCn3
	 bPf+2qPMOMv8HjhFM2V1s1QKN4o72p3+PPqwgQbUcjeev9k/IfCCfo6A4e2nb4Njwh
	 /cEPzOm6AmxOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDA5C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522743371.24961.11902642220166329829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24377c6cb33f3d6cc10f7eea881fe6ec743c7bfc0b0060890aade6e087e13403
Date: Tue, 28 Jul 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785227433
