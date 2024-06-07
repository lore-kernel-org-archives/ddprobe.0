Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E8C4C83
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717723643; cv=none; b=EafVzIc3lRvqXY2fHQN8rZX0iFiO0UUgTAs5ohhznJRU+X4kbMB1+tn3KFVQe0TASh1e5r99VJmH3LQ4gsl8Y0lLymVesVdifhiyK6o71c2sEASFqjrDQthu6f2jImFkAo62byYU4qPQyTALv1O/cv5BTtMatnHA3dVB5+WhoJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717723643; c=relaxed/simple;
	bh=S5WRZP5NjQcmcM1Tud0tx7/c4kgC13IpJl66gPmgHnw=;
	h=To:Subject:From:Message-Id:Date; b=LU6FCIoxSBO3zGJ7uS+gV7t0Dydb7A50OjpbWzgprWgo1JBan50mbU71MT6mNY9NZxVhBGJkrRnLsFDORdS2P/Ks+ttvWZsvAmsi61N+p7I+3WVWZo7deE+RHGKR4PRCgNV4l3lCF1TLTVnIDkFMbDpHIUrxWtPio82zGz7bCpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARzl55rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARzl55rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04C2AC2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717723643;
	bh=S5WRZP5NjQcmcM1Tud0tx7/c4kgC13IpJl66gPmgHnw=;
	h=To:Subject:From:Date:From;
	b=ARzl55rsSgQFbsNFxWv84gpjqUoolohQwCPMYGRZo0C335rLvIwFemrGz7+bX19gn
	 XEoSV5ckPhV9wM8YXi3HJlqB7pEsf19Je1BVMSPLxGZhp26MQjBMRDcs3978tDpKnW
	 mAX+4dkdM1wPZ1w3AG9meJ67aX72hxDFP/R3UAPTBSRc4Ey4VZigXSUM16+imPQ45y
	 R+BAzyKdK1P9CadN+yLOdy9fv3aVaXuWm+/lgbBKOJQhR8h+RH3JofE+9ATaAegbAn
	 FfZm3H7si27E3tHNrivrPLQsbFIY75D3bW3BE7Hk8NcvdHSPsc2f4937EgH1lvj4cA
	 YeSgJ0C6l8FZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDB51C27C5E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772364281.22534.9579879204980525232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf3485a3aae093bfbb6e89752983e6df91ea8dbfbcd8dc39e7719fdc1c71893
Date: Fri, 07 Jun 2024 01:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717723642
