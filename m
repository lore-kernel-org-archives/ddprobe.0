Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED9734BA47
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758153594; cv=none; b=i7doHJwziCOSX9F80GkYwcVmPN7s26+8aO6E+sslI25Ji44jv0hIwXdGR3X2N7VXF2hvREygGDfZwNXUnjZVFz1h226RYeGZ3/8vRRvvrBPD2zaxHuLrihD1jxp/pXd4DQdBB2DX8dVitzU12Ux3RA1Gi+7KF3kFfraNMKK4r68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758153594; c=relaxed/simple;
	bh=3HCCp9LjdU6cSgRuZ5+6mTTKp0QYjXuyISnV1VENFtA=;
	h=To:Subject:From:Message-Id:Date; b=ZABUIuMBOYvb9+zn5QEg+NAByI0OilETBNygPw87S4JpDkMssfnIIfi/ZuWMlzM8GDD+60vzgdC1QwXL8eqCgDtkbPDwE7AF5BxerPywtYREZRWtjLV5+s/9cpmz1Xgidrg7ohyGn0Sufx4hIG6s0w4vp5f5YyFzk4IzWHiZP74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTouopyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTouopyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F360C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758153593;
	bh=3HCCp9LjdU6cSgRuZ5+6mTTKp0QYjXuyISnV1VENFtA=;
	h=To:Subject:From:Date:From;
	b=OTouopyuHzJsF82JLzb90q36KxyN5LJjVOJFxjB2VdXpjBgm4W6SvAzOksBFC3j3T
	 G9O+2ysTAoRFmd6jHgUKP4Lnant0xZTWC4fvCiCNqV5wTqDGj5nMP5uVKlMewiwyuH
	 4+FCjCmDLkMgyu/h7k2TJ9IM6blpZNkkOYyvZ+7hiMv6xB4cmjzi5709XOfllkmZ8g
	 em4K8NEKa8dTovPzvmD79LyeRuacl59tahaFblxE6Z7ER6VlvbkjBTHc9ZKvhrEKQg
	 j8/eHysrIabSg6EmsO+jMRUG0Qv9pyB+21kMiBCkHBM+NMD+tGY5qzA+RYlI5y2p0X
	 l+FRCeVZ2p4EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F407CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815359357.17928.602278172955788331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ea6aa87fbc4a5784d32d31c943ea97e39c4ea618205832868352b19a49e570
Date: Wed, 17 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758153593
