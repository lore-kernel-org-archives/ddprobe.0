Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427A929408
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783286914; cv=none; b=HdKIkitKnoofeSmrFUWdoaQ0oooh8nE9jQNyejixp+OF7P79KCNuXYIrk38cZHDs5D3RzHrO0D9Q0+I6jgydsFnZmRlSYUunREMCyzpbA/Sn3brJgAXJpW+lnCaKWr2rurijxxBTUH+yl8rSS6ckav4eWXx8FgpEWCinDkZtM/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783286914; c=relaxed/simple;
	bh=Ejh27UVAUh9G9unWaL3dz2ekwQkiWRs1o/a3xEwVXFQ=;
	h=To:Subject:From:Message-Id:Date; b=YVj4D8ZUj+aPLoOVyRls3geFx+mzL1REkMqvwAEpFPcMCrFxG5AYPe1EYluObvSiAGM8l0t66WUJ7RMwDnM4U3wV/YvNVjTOZOtWYmzDUPfuyHE649q2m7tINeeAcOCbEHVohi4LLCdurgq7PBC/7S3A9iUHS9IMl2XYeKdGGFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmLZLCNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmLZLCNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4519C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783286913;
	bh=Ejh27UVAUh9G9unWaL3dz2ekwQkiWRs1o/a3xEwVXFQ=;
	h=To:Subject:From:Date:From;
	b=cmLZLCNGOSVaS6FhFjlEQs5s6faGYL6Op45NPCEls1ojGdOYbyeX8yu/56Dfl+oXN
	 MNnXA9/t07Q1i6zVQP/FcAA3R+1lmuyfFgjI5qokD7igsZAnTDzGKRCEuNTFHaoDEF
	 P/IjWQFQmCPqK51LltQbO/RNh7hoflSzUywkgqJRHLQDP5ijKbdb9gfffEfY8+zKMO
	 l37b/LBtAhFbqtFfqJf7qp52Q5K28/ekT4kwNP0RNqniwYq/BtY+dqiDlQnM4icf3h
	 g7lWASSwwyMth6Y2RYfAMCSscEeLUsKtAzKVXdZGoEPEjHYP0PaHtjSEk/ts7hCuIG
	 xTSkv8WGBuO0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC20C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328691368.3032.13259083900185612600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4edc05b6a4ea0c12816cb46a16bf19bce963ccd07b5f0f8e07528f5cebaa2d5
Date: Sun, 05 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783286913
