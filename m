Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1162EC563
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767895434; cv=none; b=cdLdebCq3/C1bge0wy3Fcbn7r63TX5wkQhOcoCb40jeMwWG1zrSO6xExZycdTlnPgV1WEVsL3RjxaFwhP5FkGa5zLaXQLCO0uEYwP1AMRoFpQmhy6Z7zlPiWh+ZLWMGh+ASyaFQHbVg6iLvbynLnZzjYX17berHY07OwItEjiB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767895434; c=relaxed/simple;
	bh=WAFK/X7jyzjOswsfhoH5VMcH48+fSmVBPThg81TnTtc=;
	h=To:Subject:From:Message-Id:Date; b=uGbbMAynUlgWOCiz+V1aOqviyocxT/WYSUpYPGb7FuspnYu9tJ2zjpuRpUZ4ChkNAj/jJ3KPG4fwPrNC/iM5RwnxoOZ1t6Tpkb2/sGKo9X5CSyPT/9OI8Gqcf0FZQh8qjubSGjnHT4qx6igWffhVxrT603TTKlmG4LuNdCe+hZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFoYwXNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFoYwXNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F339C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767895433;
	bh=WAFK/X7jyzjOswsfhoH5VMcH48+fSmVBPThg81TnTtc=;
	h=To:Subject:From:Date:From;
	b=BFoYwXNFe1hKeeUz+knAxpq+qp4vZliOEG41amCgxXn06hqE6uS5v8/hwb18lydKX
	 cg0PvSgjdREXDSUbunlH2nwdePFIB2BsphVLYkNbfYP58nG6R60oa0JkT9gB33tjAR
	 aKudAVDu74OLsq1vJP1V3BqKTo6pHzwJfUuI1MYmsJp09x0bPr1bKA4r/l8hkfWdsP
	 Xj3nGY2S6Xyf2Z1eVGCTU2zuqC+yHWz6S2dcD45Cpyt2dQvI251wq4fScHcFly/VXs
	 zre9z+hd9K9QSoqYs3jWIcS/aGtv7/oBVxW85iY06ckvTiLDcTA3e9EeyUtiflUPEX
	 E48FzRrTkb2pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB7FD1D484
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789543357.20878.7380163535548910199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3c30e8c3d572f3f2155a105c72612e73d32c640977e1dd25354de6696b15a3
Date: Thu, 08 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767895433
