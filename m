Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455E613AA27
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728454554; cv=none; b=rEzM018GigylHDwLH4ukoiuErl9TbSS9kRgvCkQ5R0YRFy8U2wNMq8TeNKFcl3pJ3CtwinPAL8NN41S6lARs1ROVAlOthKl9S2uu3QfwNf1bwvykUFO+h7NYdHRrT9G6SGK7bBr3bzJlnW8Vsgyr1PYm0ZInEIUqtjaL/mENUn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728454554; c=relaxed/simple;
	bh=aBfyuZGtVOzY1Jac43s4pXKuFIM5z1/dQ4y18EXcxes=;
	h=To:Subject:From:Message-Id:Date; b=mSNPmXeUGbGxJdIQzHsJwuS3MPT1KHG5X4BMILaiVH22SjYDLnjdOFTpYNPENoagYH8y6mFhfylBISW2IaotZn0URqdXnipIW4RiKcAtRjgFkhUR+9IMvb008CeQME8mVKUtKRBGTOKk8JVngTRTEmNvLPFFSvidN9/tUkwcZTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R41C7eBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R41C7eBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5199C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728454553;
	bh=aBfyuZGtVOzY1Jac43s4pXKuFIM5z1/dQ4y18EXcxes=;
	h=To:Subject:From:Date:From;
	b=R41C7eBpbiADd7/9ZX59wL1b+0gyFnKaNgROBMDyFtrSRSWReRqejXetQ2mAfdPfl
	 j4fSnjANJrRY0RWeHmiWn0s4vQvH8qoKKpJCs8YgXwXDr5WuereY/dsKEYtu3O7Clm
	 L46fB8oyznSCHaYBsd9/ucIE+pyrqfamnCJDmRCvK8uxiK8hskH5N0D+pZvkWRPz6n
	 sYVHrjudAyPsEBdODOsRm/E/O1V+g7EiY9Fpg7GevCVIQuWNonfBqU7xO278xm7pEp
	 c5onemJayghl1E3qI7a6E0R+J12v6g9fS4Ltua2bkdDWQpQvkUUUI84VuyUEKv4mPx
	 f413cIloRnPXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06F3CED606
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172845455364.9631.16342913595136418319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2257b7a7c7a83cdb22c21f91f288a180b9216facd83498ef2e7ee6e62185996b
Date: Wed, 09 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728454553
