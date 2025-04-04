Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1CD1DB154
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743776394; cv=none; b=oAez7O/Yuf6OXBbMC+abmNWf0+PRJwkvjIQ8RCAudB+2Kx+0qbnQYWr/wo5sqV+3pnwmdAz6lV5yQc6rkNedE7uZsHC70s1gODpX/sDNql/PzmhZ8SEb54NaXaVZo7NdyDLmm4qE+LBvOzgccsQpJUCzorQIIvE2AD9stEEGi24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743776394; c=relaxed/simple;
	bh=lGzdhMu7nCirKckzBykTwTRuUKt+EzwQQiu1a0NCSVI=;
	h=To:Subject:From:Message-Id:Date; b=tuZL7zGJ2leVfmN92LMhibxOaw+F0uPt7shOvhNa3whvsBDiRPG11lPHS0QV/byuPP47UECLUAJSvNMOlXiigIQdqgtE4Dh8ltnwvm2qjPpOsU6Q7GrTWGv/tcApdLYqTOb/xrvlXOV0TI/JiHZvD+tbK2GScECMsi1hSCfSzn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRbceH0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRbceH0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF46C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743776393;
	bh=lGzdhMu7nCirKckzBykTwTRuUKt+EzwQQiu1a0NCSVI=;
	h=To:Subject:From:Date:From;
	b=GRbceH0IqFuufY3baePH1oNcRoDcZgpqMimKVBrt5Wo0A2FcrXoBQ0PKnEXjeP0JW
	 W2rmUl5UGK18SkgAktp5TkKyVrWXb43mVdVuMK7RtYkpW4RvECG9k18x7kteHLcct8
	 IvyZSpZ7HW8w9C+t4n5iynPNfE3c+iI1V+wACkR4lBVaxQC69HYIuR86RTWng30i00
	 +PmiHm/1qXQPS3HShDKLTn5pruBYlRnS84lJt2ATYO6JuW3N330swEePbD7shYHgfp
	 H9dQv/S7yVRHU5RmB3J6ZFUmhFkemZdKXb+3SADohueNkBMxQRDpXv62TMW4UhFaQw
	 hMudHWvVnr4Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2A8C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377639362.1617.8591181488313723603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d2568d65f2040f2575306792dfbfe8fc739d03fc783f233255c89115c78acc
Date: Fri, 04 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743776393
