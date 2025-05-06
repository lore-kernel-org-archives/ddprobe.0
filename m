Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2F73379EA
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746491395; cv=none; b=Ikpyx+KjqDoZo6cQ+To2lstqhyW+i3uTPwshUy8ck8ejMmnaXuanqoJ8dhYrglaXn0B7EBMxP6+tKF9UswTo2lX3DDD7+A8gF2x/tKR6+uAbPSD4JFoI2h3SkqG3Tgyn4TwKyHSL0sfjKoqDCCXCxlutLTPcP/dlATQdwH95gm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746491395; c=relaxed/simple;
	bh=J2eDQ3T9ULoyA+Uc28f58AmZbj/C9Qq94nsxgLc2p3g=;
	h=To:Subject:From:Message-Id:Date; b=TQoyMIvVNq/TZeYNoV7Llkm3u+/UYCyMT9RU1gET+VNvJ+BjR9+TRvFW+uQUEMzVx1TrAa4qD40GX0fAtHlxpdawo9wFpkdilYos1zLFnuYvNMRwfOr+GpH0qinlIpwDNxc3RzN667nO+Fmdupw4bPKm79o5gmERvzxmcVvTYrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9lNxblc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9lNxblc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A480AC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746491393;
	bh=J2eDQ3T9ULoyA+Uc28f58AmZbj/C9Qq94nsxgLc2p3g=;
	h=To:Subject:From:Date:From;
	b=Z9lNxblctulRFJEtbcpduYTehj5avkLQMYcGiKUr1ZGe2JcnBgFDdtXZLqJjxMRS6
	 F1Rhs4oJjiMSzMfRK0/R9/Ek8Yiyf30LF6UxF3peuqwpNruciKc1n158Lsb7sXjtQy
	 x5Hrw3qEHYNklQFURWyOoF7xzCO4irhGIjmIq3khOJpRcmW907JX5O3GRRjxI3OtKH
	 gkguy2cVaEds8oFpiIPlX12iK4mtpe/WIJJpQ48tvPhigDGHl4DdGAiaLgo2eCZDTb
	 zWRwsDlHBvssh9HVOYbPgO93uVhDcgL5tg8Pi9kg4vlxsnrj25F4my2f/QwuQo5KXc
	 Wy9mCsKqnKAfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F211C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649139357.29524.15328530325233624559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b67b649010adc7b07b65e2d966a40060e54870cb6ffda33376bf0b3ba589630
Date: Tue, 06 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746491393
