Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A027D530
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723089954; cv=none; b=kY9+zprFTJBoFrnyg6BMgFgqVs6dp1VDiOni/ivbX2W5MClx4VdZTYd2G5hX61vRX1KuYYkahJXTK3X/mN6O8UahQFG0DuOShiRCi2CEe33UlpEsvS3s0syGGPExF75Zo6FCik/ncP7jA48wtyoLOxybNqWkIJr/0gx6pCSNHnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723089954; c=relaxed/simple;
	bh=dXzLc1wUUsfzYRSsIDde1O1TK6MDmy7p+qDDG6wALRs=;
	h=To:Subject:From:Message-Id:Date; b=Am8u6NMEbSdtvyKv5hfjBleIGEywOcxVLmx9TV+DvxjbMQpEZcrrnCk38dGyvFksdbsb3sqpcFVUmTw+VZThomhRHK/6YQyTACt2E8Qj1Md5YiUlEKtKGQG9zqiqVt76YMp92WTeHRFwlZUXhcZ7gJhQGwS3JkgTppDXWyLmzZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3y/R2Y8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3y/R2Y8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4F2C32786
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723089953;
	bh=dXzLc1wUUsfzYRSsIDde1O1TK6MDmy7p+qDDG6wALRs=;
	h=To:Subject:From:Date:From;
	b=t3y/R2Y84gUHSUFufGDwqbc3NHtks9VExsEp3yLwY/Mnh1wQkxrdJ79HdmGTSquX0
	 dMpkWcD9a5Zj1/UK2teEtIjL16YT3AeGCVdrAw/DcjR5LXvdet9e1vzrd2L95kVpU9
	 qcaDnghz60qloD+tg3muvKVNHVGXeNjE1/5IYxO5Xzv6KKyzEg225rxUz8WjJYhI2X
	 /bj6LmvZfI6OiqDqnDd7vUUwukT3PtlX94fSzDyC0o/grTIYlCQuppWL5Qd9oP0f9/
	 44B2Suc4fiWRPkKXgNvE5hqskbTwleXs1UDb5vOZxMh1xz1Qw3nqP+X+pc0bIIOUoz
	 bAZEdJqwoz69A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94555C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172308995358.23735.7066569382054386152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0a508b1a34a7ccb88a42430e33b4afeef4fc1769893324f0683717a629a8cf
Date: Thu, 08 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723089953
