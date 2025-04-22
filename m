Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AA81AE875
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745352594; cv=none; b=ktg9JD2CTnA/E/U5Tmq7+Dc6TkqlzCm6Cx+N56RqZ/cTGdSlT4/iL5VkSxhoJzDxCs4JWul45MNd2EnhASSMMz0bqV9zX494itsXjCTt4Xsp/0bXDLNvGnarb5XzZOsjQy2ZgUWJSNedLRytl72daBwgPUDQtyHsXb5EzkxslYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745352594; c=relaxed/simple;
	bh=SyC5zf2bPL1Xeaf+lLarj5racCHxtgvn13Eb3yuDkkQ=;
	h=To:Subject:From:Message-Id:Date; b=nL1IVpUmmlhP0hw9ltewh17cxA7aCaD8val51IKdwer1dJPtmEUSH33iQNQPr6LB4Kewmj5zuFJRNXzKZHl0Qq62vwYN60wcdUUaat0CdV8OaR7wkKOS4UswkhRkegavc0EMi9254mqbbm4oX7yqKlNGVa98Bs2ar0JAML1eNaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V55FWJAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V55FWJAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19ECC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745352593;
	bh=SyC5zf2bPL1Xeaf+lLarj5racCHxtgvn13Eb3yuDkkQ=;
	h=To:Subject:From:Date:From;
	b=V55FWJAva7xxlVJ6zmZFTG1V36bV13wpiZQuMNY8rSY5VDo/2AR+kkVdZzb/YDcVF
	 6gUwgwP5DnrBBdQiMYrzBEq8T/VEbzxBhvNH1E0Egax22gwQoK53GKS8MY2T/zzstY
	 +cjz210vocsC2JOI5F0tOBAIbCnpDgW5EvwizSnFZQ1Grq3x5JDz5mRA1mEI+8X91y
	 wQEE6EAphcR6+bXEWBcVs3blK+IF2Bf+IHzRTs9PtP29oLw9CKQxKMmKL+qFgH/g7l
	 lMSZJWZarqNiwNYtKxeKD6zd080TE6fCClB9Evz/juwXqs7p/NA0PlhFz9CVpVeRLl
	 zi6NdiREu0MHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93851C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535259359.27983.12178033322436220059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c60f71abe255f551426ae6545c46418f73df71c250b2d5bba565aec55ea8fe7
Date: Tue, 22 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745352593
