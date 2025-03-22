Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB9242052
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742630994; cv=none; b=lx2mVng1dp0Ym3FUs6I1mGfjVUkGFbdd3Qc+rddWhjmkpmIFJVg+3IsrT/8wuhfhpaaKy+lZ5MPasEPPwwlxko8w4ajFgDQifSdliNgQGmR1efK0UEwJlgjZP4DonmmIFUpC/2MQaOksBSEcp/RYLpA8MjZPUoTBJBZTOdG7meE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742630994; c=relaxed/simple;
	bh=cNYGET2qhCLeANkgX0u/c7F+qbUKzV3auYv5KCghJWM=;
	h=To:Subject:From:Message-Id:Date; b=qiN7vzV8sX366rNI1IXqIfCXLaoa+/Ve7sFC/jl7sQCLT+7N23d7wRcKsw7ig0VYa5+Ho+NcfbQjEywOvXuWEVmlpfQ3REh+FUkJq1dkfMRozO+a/y8PM9F5WIRg8oF8iDXrEkJCsk3UvBp6ZyOFLb/+v51ygbB2oTqRj8E+ZBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fif3Mnz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fif3Mnz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30EBC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742630993;
	bh=cNYGET2qhCLeANkgX0u/c7F+qbUKzV3auYv5KCghJWM=;
	h=To:Subject:From:Date:From;
	b=fif3Mnz9e1Xz+InadehgvOqGg4lYNfKpghKImggeCxt/iOsMhFTf+PIh5aQ20nJyJ
	 LX/goYMTCm3w7YMb3hGzmh/aN2pjrKLwHpGbfqc90aknG7nYAgsni4xsjDcsMcoEot
	 dg8nzUcW90BkRYdt3nno5/l2cQNbfeoLAgPZLlgJMobEFhWkXGDPUIBgwz7LJvrVg7
	 IOZ3n60spR/XbR3iQkx52mYYvVS2KxKwtp0+voIMSEAGuF8havDDXUEPvGR9JHQ3dS
	 ufvUzMPv4+9Wj4E3jXfJXYzpqRy/C2xlWDE7fYG6uMApVszIJrnjq/QFfjYEaTE3mi
	 UePEtpCvvBg5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8354C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263099361.2258.11073966499553824756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44b1b434184463b15c0d185ce50044793b708eed017edae8ed7592b84b705797
Date: Sat, 22 Mar 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742630993
