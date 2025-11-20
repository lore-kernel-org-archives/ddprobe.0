Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0735C33A008
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763644314; cv=none; b=i4g1j8TM/U1x1hhYhqg1z/3o1twxAJiBGLjRyTvWVA9nZkYczdWmOWblQnGpBx7ZJ7pCC9Mvs8B7v8IZ7YreCOWl0iXjpsvFw/T0laPZUlgP/KPZguauVkMV8FN3l1t8YzuVEIKBORrlgADQxQmouzcKLfEfLzpPSOtoOf/1VKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763644314; c=relaxed/simple;
	bh=lln30G708ljhpJXJG0jQLjUGoCC/ZaNKd9AsgGJrGbw=;
	h=To:Subject:From:Message-Id:Date; b=snn2Gn0iCZXz7pFqgehwzqx4h6n7zBznvv0uddpZVZNvpsRN7ZyDGUt2Vpuhzgop1H4L8997EMxnp50+1m/hPTgkKRErLhS/dZrhX2DpZLfKjnG0uV5HdAK6PTQTHYPebh30FX0O8wo7IYIDwGO/t5nC/ieyMKgZNFPtMhCpyoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ui/Qk3SN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ui/Qk3SN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F658C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763644313;
	bh=lln30G708ljhpJXJG0jQLjUGoCC/ZaNKd9AsgGJrGbw=;
	h=To:Subject:From:Date:From;
	b=Ui/Qk3SNdc+Tt+noKbN6wgPsXJ6TvDNIh0WD2zMrQap2e1kLLorQHBSkOtmHFTK8s
	 y56ug6PY/h6fhlCHUqbgL6fMQdQxuAs+91lq1KfsSUxb2rjzGbCvVKm8UPUpXPIZgw
	 c3f5TdRb7faXxtUA/rGWB7AYQRQ5O6LMWZdzJSlDadsnMGe5mwuE7iatSFy9ClPCIx
	 LSS0kvdV+fv89oEJbJ6ewIztLeADrM5gnIZrBIceiTg3B596t72ztkX+wQdnpD79LI
	 +rZBwtBD3WPIkHOY3RydPTdHDCNH0rTf73GUK07oO8qvJUCV+7DBGXJq5iM+KaoyzI
	 YhQie9oyAIB2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A1CF8854
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364431358.18241.1642729585807822197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3395a7ba59bbc52f555f0fafb8e3091e2d2876fc8797f768da86f6f611fa31fe
Date: Thu, 20 Nov 2025 13:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763644313
