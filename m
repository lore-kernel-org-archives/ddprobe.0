Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC90F5A0E6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706003897; cv=none; b=OVV4wq9F/Apm4Bw8Ua8gBHZVXQJdkvw9YslFKZjStXRMcqgRlEdZNAxVdQ7HizbfOaEzslx03KMVqZVyFAz4biDdd1ZSQSH504jDGD5Y17ye6bTg0eqTchmq+tjkfRx9cyRoNrSffE+9GpnxnE+nk4FwLfeHtoMVIRAH0mZzrKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706003897; c=relaxed/simple;
	bh=RmfqUFStj/s2Je3mKYCD91ow2eM3fBpmuwNH0mkFZ44=;
	h=To:Subject:From:Message-Id:Date; b=m+1JhNnV+A5v4Eqe1Vjkg5IbkoQa7jDcNcsPY1NSiQ2q3Q/yCxqzsjGI2694Ld2uy2jVhYIe+pwwD4ENRPOAx3stEKWZELjQQYdotUmV/8PloD2A8RCjzx2niISSEBM43S3fR/n4LkdOsDpn69TbJwxQg4rsTFJ9Ybpz4jeaWYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rnfjr+wR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rnfjr+wR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77029C433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706003896;
	bh=RmfqUFStj/s2Je3mKYCD91ow2eM3fBpmuwNH0mkFZ44=;
	h=To:Subject:From:Date:From;
	b=Rnfjr+wRNwrIXbY8YcC/0JtotHTe0dWAeEVlp6zuVylp/HZQ5jqsDbDRWK92qL0A9
	 YuWxUjLR7/0UZbDC+d4lmIN5QlF4eW4WjtdvXLGofOfOazqqfEywVySWvPjdHl5jI6
	 fRGJmoLPND7jMNgB8W9D8ZywSUo/ElT5y3zYCqxF0v1mZWmNOxmSgqEX3JIuUT4Esg
	 zvUeLvtLRDu8KLU4hwO0zxKz84yfp7hVeR+NdwrSCz+1IX3gJVrtzNL71EpbXh/wZH
	 APrSg9E3rs85w3SsKwB9UvlB+wln3HSjxGF6+BsXbkjNTQyYshP/2rNxrvNlRhomQN
	 cr348/iWTqsDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63060C47DDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170600389639.18610.9997684710074480246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613e06b5888cffa86210cab9207738bfdc3c22876cca6b9c937b6e7ac8c1bbea
Date: Tue, 23 Jan 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706003896
