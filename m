Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2636E1862
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 01:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728782755; cv=none; b=iSoSXlYRyHk6KyabzTHN5HYbYuTEDJCiVzmuW1Av5wfqcE3NeZ/EMUul1M9fwGmMZ7r4pOrylVsI8/DPYpf4UdZMM0u7g92eVmfeBb5f9NlvDJPLmdfjQuJjy4FiIXpMDa5hh673ZTeV58NJr82J8g7e71UAVeNnjeBIKa0hUvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728782755; c=relaxed/simple;
	bh=t3kTZQRYuq7rSwTsHszGkbIa5VabSFDNhZJlwUR0Qqc=;
	h=To:Subject:From:Message-Id:Date; b=okrLfSZbilLUk8CoeHp5oRR8C7I8FPqB07tiy5Fu0MUyoBGtjFRqFQy791442OU4G4QdmMklml7Miq2purRQbiJbpJKNkOHGhafng9+V0PgzUF3613AlmINxK0IpD0RHe5N8Qtihow+FFUPT5dfj48SxoLn3yxSB0ksY14MSQUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e550oLTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e550oLTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A353EC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728782754;
	bh=t3kTZQRYuq7rSwTsHszGkbIa5VabSFDNhZJlwUR0Qqc=;
	h=To:Subject:From:Date:From;
	b=e550oLTubPzxlycPCoLEc8Kc12+yM6f4MKmomBY1KCBmBd7oqLjySyLjjma/zLDRp
	 dHIeKEWqWaNnAphDZBA74/awR+4b9O2s32qHBuRiBqYRNJaBJ2tOYoPuUoeYUGBSa5
	 aQcUaJg9g01+nRNzS8V1cerWNeeX5M7I2LMNSBNciBI1ZWGfV8YtsgC9kLAXbvn3Wb
	 SdH1pA10n+b7S3WUT9E+pIU1WW361Ryovhlv+BAmDNbD27lMC7qEvdjZCekU8pia/P
	 eRFHVdPHDXd4Xz0USHaPfE8G7DQfO9u7a0Cs3GiZaQZqerzzqj6P70v6RToytXoWtP
	 /3tgVXDDmYafA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC53CF258A
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172878275358.27115.15046379992048611726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8065289602b9bdb940ef5b014df86bf95399816caaa866e0e9e0ed9071213674
Date: Sun, 13 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728782753
