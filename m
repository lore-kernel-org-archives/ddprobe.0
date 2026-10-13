Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5987447D94E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791909034; cv=none; b=povmle8bxeS/Kt5Y3PZcXuq+DZgDSXm9OTG2K9q5R+UHxOXZoCclTU5t83QifkVmGsH0ZoLwLmyKtH3fNcsEfM5gOk1ynj7GQBQM6VPY/S91JNG6H5NZXTOg+75H3XXpkNrbsgnpOZiKdeN19BIk2Gi0EzBBwFqyj6NTSv/pjjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791909034; c=relaxed/simple;
	bh=TA5yy6jbFcL6L/ucCmolrAO5KpOYzid0w3GuAbhgZkE=;
	h=To:Subject:From:Message-Id:Date; b=on+vM2DakApEBoaNzj0Jny7tPKkFvPuwdjY0ye8wCG7CsePVSLbfx6AZngCOIpf0Gf19vo3mfge4VLR1WiCFIuuxuKu8bHCJnMJrHuumATtMI5MYBRNe0IMzK/0+YB2JS1If6KfaNcbAturWUk7IkgbiQAWQ6YCVou0TG97xPhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzxnjLDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzxnjLDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C2AC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791909033;
	bh=TA5yy6jbFcL6L/ucCmolrAO5KpOYzid0w3GuAbhgZkE=;
	h=To:Subject:From:Date:From;
	b=XzxnjLDzmB/DR5WM3AWHtvbKPctbBB+2CrZZpSVzbhLIrRiORGqSWKvh9gRSVoCk4
	 szaMs5x4caRZCRmJmWo7SREyjmoAah0FRZFIxk9D7aJ5bJXaOxSSxT2xOa+TaNnTrj
	 eDQL73+Vet6k8clbMrfa5yYNyY2XWfWivs/MuSQAKTuY5+kduh9VcCLuX3Jl9YiNq+
	 GmvA06V9KqcTB+g4NQZiWYjPo+APrXmz4t4RiLru8Iw/ou8h34L0W1VmDdEFe2HTsf
	 N0U/KMERQ59SnLWplWoFc081VlmLmqIpBvK6IRvdQ/bjK7j6DM4fBUs0olsw78EWk1
	 caLAVFdJjF0UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2284CC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190903371.24286.2201007477565345390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0126584324fbc26b698f65cecc8e5592b6979e6138b2d1c57b8d40a7dc511758
Date: Tue, 13 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791909033
