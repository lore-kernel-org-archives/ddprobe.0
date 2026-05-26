Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D97F3FDBFC
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779819754; cv=none; b=ARy+y0B39uVyTmmuqvwOO9nHEO8AWbKcUHiQc6VKDCIE3xjAPoIe3WA+c5KehJc1yRQZYa2aatk4F27DGzGotQWKQ6hdO7kg603PeQzx5GQgsj3sL1v2OFXxhlSamddG/+sjKOR0PT1BW/c50mOeXw9r0aFphfr02P/OFbxPpS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779819754; c=relaxed/simple;
	bh=GIjZcukOkFFTP+VSs9rdhYJYyPHAiLk3LPSYOXf1cxQ=;
	h=To:Subject:From:Message-Id:Date; b=iL57WlptrEKxfd3y1pY6f9/zU/Wq/O4dsZvCTyExkovTOb3dm2zIrbM0FC/QfS0DRDh6yXabtuvI2IUrMiqmC2mySVfLavVznnNXCch9SjvpIAsOxHm1poI33FXdOiRRhJ+9CZbkQ7+HUOSDBrwFXOwHj6jv/UsGAyzttLPW8qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6xTrwyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6xTrwyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB701C2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779819753;
	bh=GIjZcukOkFFTP+VSs9rdhYJYyPHAiLk3LPSYOXf1cxQ=;
	h=To:Subject:From:Date:From;
	b=h6xTrwyvK6xXquRoLmN0XqV3EHHhaqdZAO/0u+7pqZEyabZ9oIk1Qh7TY1pSERh1O
	 S+yn3L1QiCPoo+Hj9x7ccJ2ynB09ekxwsbRhOZgzb1xpeLkxLdgCDlkd5aNhDfQjMg
	 isHKw39FtmJNUoaMszVXFGQAJWItddP9Gh2TX+aLKi/PXRhI0ba1sxQpIGpkuEcpIr
	 6TVWVgAmr2AeTGtdaMg0gm9w2CWlCyjKWZFq95xkkMwYuiTWIFcaN9WEF66Dufyyu2
	 mxcFFdUuRVwcyohivh6O0nGlBwT0+hqvmT3N+OjKOBJzT/PbKECOCWASo/fJV80vrC
	 6r30SMZ1r9DjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF39CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981975369.16892.1556872854247747344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ea4d913644cf6becdd3b1817eb8d6ca048f1a1bdc7bc389bd551a79a0c4602
Date: Tue, 26 May 2026 18:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779819753
