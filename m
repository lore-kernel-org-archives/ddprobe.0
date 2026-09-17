Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4642C1594
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789608634; cv=none; b=p2Un/oFKTpzT6e83dj1M9koj5To+FMSZ3Vy9N/co1wNmPP94Q7lABchHWn6pg8VcsTKFzUI2M3rrW9Pm0ZDN0WW6ZuyDBgScLsK44YUMaN/qucO3UxYy2qrka7j9JYDfDKa7fXqxvjUY7Nv65RWa5hU225aQrJDe3/1eiqkD20g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789608634; c=relaxed/simple;
	bh=h+mvjMEHOtWH41e8o8uB+HtJP9n7y0USks1ODb0a+lc=;
	h=To:Subject:From:Message-Id:Date; b=m/lkOLGC973faK85sOydASjPKMQ/G8mCCd12CZ21hVmTLpqAvenlHSdtWx2wJ1sz+ni6Qu8UNWdUB54fBx3DU5qiPuSlyKU1HMYZBehbKx7f3e1gZawH44VcjAwds4SNrNq9/pntyMZVrlSAqR3bYajN3YtvIs9z4hsXbfquWzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YghxmvIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YghxmvIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD50CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789608633;
	bh=h+mvjMEHOtWH41e8o8uB+HtJP9n7y0USks1ODb0a+lc=;
	h=To:Subject:From:Date:From;
	b=YghxmvIHI/IK/pMoRMOV0QyYMAqXpqQPD5TIwl1iZ5yXlqjyfn7WJngys1lnV4Xio
	 WRnCCysNELJdIVn9ywqvILBA++DcfalMDtO7zVRAJ/Isgk7PIm2XbmVyMoAfcq2bvY
	 YEdELYUhf/fZoNdE9SZcz9AT1mjzlwtgJU8QKdJgtuawCjoMrGL6Kasg00J/VRxp1s
	 TOOi4tJoM1jtN1dKGvZSRI0mKWMk6nch/BkSx1/TSEP0GgEaunIqGqIaCvemba/yAw
	 sIL1j4+IeQzgKp7/H9799PdJW85wjoA5binxlG7RXS63WaSbcbYRCcCVuHH2prBCUy
	 6BGqqvL9VHLKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A89C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960863368.19051.14670574498743006635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ab3ca59c0543642f7a9c5954e89ec1311644c58a2cff4d315cbaf8786d6119
Date: Thu, 17 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789608633
