Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487AE4C92
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753157394; cv=none; b=FVVyOpQ2jMBm/RAULQ8IKPAmBhdpBX5Zn8ZcZyyndiMPycsxCYVYPCN6zQ5JZ30zLBlzYr/Z/B4p5j/IaA2qLKNnLYo3NdpMkb72qNIikD+n38IGDiGKn3zhgXQDldNhWhVC/LZkHXGYRkzGjSktZiVaa9rEn0QwmxdccVFd+cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753157394; c=relaxed/simple;
	bh=uFFvMdH9TRi4x1YHLwOsF1pj5Ry1gojqJg0i3f/2T0o=;
	h=To:Subject:From:Message-Id:Date; b=OO7OYQ7YglyuWCOMWn+FeQuA+s4LMr5Dh0xA+ZpKytNAPVHVfRJtgK4bCQBAj/lxGljKdfsVoUa1o2L+lPSwJlgu+aYUwCSigTnqlRSia6sZ1nZe+ctJpmRc7DngDmQUu6XiQox4eOEa/XgalfylyA9rHQiy54PGw84oq5ccl6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QY7deGPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QY7deGPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0112C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753157393;
	bh=uFFvMdH9TRi4x1YHLwOsF1pj5Ry1gojqJg0i3f/2T0o=;
	h=To:Subject:From:Date:From;
	b=QY7deGPvm7cuXLqE4xCNkvX3xPdEbDGT9ReaN1W/+h1EA1ZU7wyAuFcoHpIbZjckJ
	 IrRJoEeZtD8Ri4ADFP8DN4Kwpt4OAqvjaI9X4TTmuQDNE/SbxAYN0Cu8L1c1gwyn11
	 of0FBPVUCo5DE/aHYs17/S3MroO6oMB3rgX3HXL8+YhJVGb60h6RFST0t36C4o6bWJ
	 RcVhuBvrk3lV8sb7apXnJMvsMWSzslcqH9bw5xTU0IUgZtWJZu98Du/Y0TosAe3PPa
	 VclhMByW7X5gaiHxN7uSJLZAA+IxouPCeLK00tkhtiu4DOiwDIgt4bcFt+agumFXFG
	 y3ZrFWv2ftIXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA7C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315739357.1924.8185015090877977166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa31f84a4aa4b7698fdde9ee94b38d589c4ba956c72f8bd8a4af177ddb2b36ef
Date: Tue, 22 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753157393
