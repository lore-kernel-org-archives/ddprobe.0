Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A52346AD3
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777793854; cv=none; b=J/mU379BxdASzeppCOJyUW0SL/JFIhFb00FeDllqESqLI9XBym88AR6a/hocMF6LNqjisU2G79QsiRdBgvBAseQd8UBqf5JsSw3KpyQFyOmeOmWIkVOz35KZ628MjQJQPsRZdnCJ5ndIGrWkWX2gk/sxENB8EfvgSupVCJh4QBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777793854; c=relaxed/simple;
	bh=//UE02rHk183MGG9hSo3UuMUo/LFbayhqW1+VwxeqdI=;
	h=To:Subject:From:Message-Id:Date; b=X99tATydbeZZ5mYbNs6v9iIRp+7UfW6PIPblsljINj6C16G4EKaTrR9mbgqHRGWf+UQvMVPt1bnAJ2x22EkVaHMA2+0OwcBM3Tt5kMFiFn2gvgHFg8g9x0mkBsv9ruDEOvdkiMerbigpN8U9/BMNwjoRe+ytAfZRODb1mwrWswk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gknzaXQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gknzaXQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC8FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777793853;
	bh=//UE02rHk183MGG9hSo3UuMUo/LFbayhqW1+VwxeqdI=;
	h=To:Subject:From:Date:From;
	b=gknzaXQ3B1U3HXUYSSiMiAalWvL25dT6ial89h/z4sEaYRU/g19w7aE8B6Yc2ehxd
	 guHyHJHsJ5JDxJmRRlDoSO/1usfwksmktOeSVtyOicHE29CzyzSfYCLWKPTId/PTEP
	 Ardo+HJ4AE5e45PKc744QTJIcI8Ht+HcKH3SxsZHlxXGOfl6Z7vB3fu6GWeh6mqpJ8
	 9uugz68I44D4JU1mVor7vyb9rxbFBirpwg05d5Mk5SUB7tmxGbi7Co4LSS9D9tHUfF
	 D7pCZnfX1P1e1rUnwGj1N4r+pHwrH90UCLikH5rUcItSey8HTAMwfZ64W890fxIFhs
	 /tB2LRqGGPprg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD35CD3427
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779385369.4598.5358276335656001722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7e7320cc5ebea71b6f4c1479984ad4fd7c01c69b55a44bdc77ca558709b26e
Date: Sun, 03 May 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777793853
