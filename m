Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D13932ABFE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762181394; cv=none; b=ZDmPtlWcEFDYcNSsFyDIXVEJ65ZbvDSSTOoMzCJsaIR5kSWLSSgMqgxtjHQ7Xl79UVsgcImKy6r6V1TyRi+OKhjutVNP+G5XPXO2vsd7IZmK/IfIOep4jEZK0kWc7g+ojbLXwt+k2lu1tfKmAFbrfZarjoNF5/8NJoKfWv8vCTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762181394; c=relaxed/simple;
	bh=ysgwToEXKuuRCN1tI5sYwMVkMEx8jg2BGu9kjn5Xa54=;
	h=To:Subject:From:Message-Id:Date; b=VxwpKE8FkJCN13rsHjIxiFmHuXjkZ3nuh1N30T85WdWEegCcLZOLhtWJffOKTwCe85xTjJF3BYGhiR8O+PqyF0noAtFsojGSYox+hGuMmlCSOTWEAn8SJyb0WJ2oB4pL7PowQsJz+nL7yszMa5jCkYI5LDFaBqPX9L2K7g751gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5Q3sDve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5Q3sDve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 980F1C113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762181393;
	bh=ysgwToEXKuuRCN1tI5sYwMVkMEx8jg2BGu9kjn5Xa54=;
	h=To:Subject:From:Date:From;
	b=b5Q3sDvefnfKeSolIo82vvVvqfxYUxtZwaP/iLzMMgn+7vH4GjhqtET9q0Uc2rltq
	 R44pRE1bvkatdDGITwyiXN9lPpOaIx4NNGoXmhdsvK6OyXAp2RkDdkx5Cm9TBdhtPB
	 6rBkpP+NQDzHCuupczTW5CUcr6Rbkq+tdYVG6hxlfWpQd+AzCWmZCmLfcp9jgjYXNs
	 27Vf7/oB2/UJCRwwpyUOUrO5/6O9r1FhPDlvJnusTw1a5uERlNOIIPZmf81dUxfj91
	 yXeqplVHscaEzJBTBZjQzxASoXy/cGks+WO3ZxLzX1ujSuH8Snr0IxoOKY3xO0ewfg
	 BKZzI9nKMsBaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BC1CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218139358.11661.11234514104690654839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628db4bb0ab1400b8ab6ee91069c16e972cd92aa045b3e66da3a8916af2e7205
Date: Mon, 03 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762181393
