Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FF0285047
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756569594; cv=none; b=lnGUcqVgzIs2Ts7oTJRwpYyHpdqoXRuFQ0m1QvVPkdGu4pMT59wj/Cq+WJf4WQbOA8oimgSulIXD2nO0nWiPpFVs66wjrFO+ponOqD1RmcdcC7bPt5PTmyS1VHh6DAQ5I/PSt9LVHxfzRy5ch0F+4XWko9cvUAPDS7yR58VxQuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756569594; c=relaxed/simple;
	bh=Z/XDvxjBF4goRfBqYczjZzcYv+X5o3VLBePrtppZeaA=;
	h=To:Subject:From:Message-Id:Date; b=Fy8Hof4G64+ZZ/gy4WhD08fI/3w9ir6VQ6h+agH1KCsTgaXyCTkAhT/UoVxT7snW+DqIdd0oZsOmp82L8O6afx3LEcNKkNdbO6hBROLmLRZEG6mdvaEmh1i1FpvU8rC5gcnOo4UGpDY68PcVjEbsv2acxtOAdtIRr6p+jMikd9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6ua1fCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6ua1fCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A057BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756569593;
	bh=Z/XDvxjBF4goRfBqYczjZzcYv+X5o3VLBePrtppZeaA=;
	h=To:Subject:From:Date:From;
	b=g6ua1fCvP+rjng0rfBMOhugCLoJ2hjImDPMG7JLJK0RVm0lt8BIGbPIlZpklKrMx6
	 Emru4HEgx8kNQbXC8TQrgm+bFdLU3aFEk04TA/C7Dxg31Q6YqjJXAzRyL0aPVsJPNw
	 u+4PBv3IEeLAz5jstq/6Exv/UiRwCFmWpxtOSMUuT67KyV3O2EETdk0nz08I93de/p
	 NZ6AGyO6hFTLtkJf3GvpmK8UMO1Rp4rLApfobE8vvfdwOvTvgAbEhypbdrQUQ0cwao
	 L4r3QPskThOllg/XFuaLY4F8bI+GTUdwXR69VCJOVxEhY0Pr7QeJCusf9GQzSLUR/w
	 hvkrtoy3b4GZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE5CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656959357.3240.9546770946862553909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daaf7486e473045a24faf5c04e470004563de566876ba07442917524ed9a74d0
Date: Sat, 30 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756569593
