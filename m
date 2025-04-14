Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D56E78F4C
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744603194; cv=none; b=R7bgvuEJsoN2AlWojHtphsb/HwEd7Y3YYgf5iw3vK1DRWOfPE35oNOiu+Tz5fQXDDNyXsLVdV3uxHmxJiZKDnWHPDEge9P0fXZXFrQwNVA0LWvPXweK15sftSdNIkHscUoGVt0KzgpdKb+Etcn/RBbbueDgOwJ5Tr0JDw69HhVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744603194; c=relaxed/simple;
	bh=x4E9O+BpBhARQofYKHS1lefH5wt01/41PUXzHRWT5Rk=;
	h=To:Subject:From:Message-Id:Date; b=Dr05+7Zf5/kGvKgDMfvHdqkg13ox11mNaSJDQIyiuU4yERtHuR3RAsSOZuOR4lVouQTn5st+y1I7x+qc03zcr7b2PNmCGW8PBCXwxZBJTmjbTac6U0H9aNtxmIOuHN36s0v9fZY377yv1DXKSgdAH2WbXz+mzJ/W1zmP+cE3F+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dct58wDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dct58wDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC42CC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744603193;
	bh=x4E9O+BpBhARQofYKHS1lefH5wt01/41PUXzHRWT5Rk=;
	h=To:Subject:From:Date:From;
	b=Dct58wDaF+mos/R5Pu533lBd6a/+MIFrhw7wpND3QTAghczqgl4HZR4WIPdeYERNH
	 pJPhtQcX4nTvGXARJT7ZaNnxbtSKtNudJmvmFGp6olhTqskam9XBXdDQUlTGbHo+TE
	 kkI4MJLcgBqZdYD+G3dUKLpKas20xG7iFJTn/4QQXsro0jltdV9kh72jaDGYzD3eK5
	 xI+I6swZxLB4NzNCQvgj5vp5z915c0H8cqH8fp+MOsr/a+wPxPbvD/GP7nX0k5l7Hf
	 X6mJIsuxu941FL+ZiSkcsxp6YESsI1ReBB+YzqlroQF6D251YOGWz9Tszzj0pE2oQi
	 OumtLUzFdERbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E23C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460319360.20165.8304493931676370495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd00d87a000803a8fa998fa6ed8e1cfe003a66541e92a62e7124ad8943be37c0
Date: Mon, 14 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744603193
