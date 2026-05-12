Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8CA495E5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778544634; cv=none; b=HQDd74HcgLylsxFYBrwVO4oNDEKPx5TNdZ95GpDzTPOZEhj0q8p8rdYPAVqNBaMOSPDrRcVqSHvKsTUR/1c6HH2UDnuK0NoeYWNvWXEP77TJ+J6JBGGmXL+qOTgatsJop4M0NFiM1BjWZrEZNoMSAOuMg2kMefFGwGiQ40yLsQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778544634; c=relaxed/simple;
	bh=3n8g0kiQ277soBnFOhLjHVsMQRVbfOIB4O+4XbVnO/Q=;
	h=To:Subject:From:Message-Id:Date; b=H+gvNX2uqbwWIPSWYqzzw7tuUI5K0XdVheeCFluJakzdQOC0EX+14jlFGv5MZvJHPKdhc0peRxWfG3qnjO8GjEWSisNZc5+LUlSMGFSCf+VWVxpG6Aba2kHyhL/z28QN6giW4C7+3Ja5KFd8AgdIFulNFCW9j6olhfzFygWpcTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0j/jlZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0j/jlZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE290C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778544633;
	bh=3n8g0kiQ277soBnFOhLjHVsMQRVbfOIB4O+4XbVnO/Q=;
	h=To:Subject:From:Date:From;
	b=r0j/jlZ9AqnMWalfwkEyVE4jIIQJY6mvDyy6Rp/fdH33T//2m+w5AyGYcujm1nq9y
	 UDEg8aybxMzhsBV0KyPI3dtXefpEeubzKrhK4v/QpxKg7+fEk/zIPLvdWOFPNS+bsy
	 3yDJtv6Ih2bWyYLzjHSFjmcS+qSvGNe+mwxCZwdOqr0YD1WAoJarNm1Pwgg2Pkhijj
	 njHjX33MeoTo2OXmF0Q4/dgs8Oh9hMOOwQP7HNPa148zRmatyiVyDdqDG7liEsN1g3
	 m3txx4vQ+7terd6JEAmdax6bhpfUcmAVE0aM9sHUnFFTKRsYZy9SReb92RFyN8qKZZ
	 tVA5MoDBaDgOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD208CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854463368.31307.674022282649355155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1507c7cb53986038da6ac49827cb9bc79764833028a4956ac45aafba5036bb7d
Date: Tue, 12 May 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778544633
