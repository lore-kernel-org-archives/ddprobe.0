Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316C8BA4B
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732859754; cv=none; b=dvlhlXzza/8cHlUtCW6FCPznwtkvzuIimkmhuPICDWh0NNypj27yFtcIPuqKeX0zBRl2Zz5KRMwo+Tr5lmOt5K4c7JiTr0HcL7A8/hXwpMgYFHwO3WeLf1QsXdnOB0QXoutlRq4bx0/uszzyxDgKeKIz/cLQdywIsPTUt/0SwlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732859754; c=relaxed/simple;
	bh=dzvqhWY6ptrDW3/hK4Y2YOoiYWF+4u2TMd1IQsxOB6g=;
	h=To:Subject:From:Message-Id:Date; b=Txyd/rcGYS+lCAMLCEfV1lQHY8CzH0cg9qGOz0mKOcI1u1uKWRcIAV3teIWyeeWLHXTyRQbbQ8DVNR2HukPGkJSBV1QoV4Wfo8DXv6mndiGwPWN80NMErgqfBy7EgYi3j5qM0ugoTaNlaxZNDppJydeS/c2L8zjsIj3ZO5moqWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLNkich+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLNkich+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9328C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732859753;
	bh=dzvqhWY6ptrDW3/hK4Y2YOoiYWF+4u2TMd1IQsxOB6g=;
	h=To:Subject:From:Date:From;
	b=uLNkich+0cJcQXoT5T8seoKETt27nTMJdqnZev393EIWSmdsruvL/lXuhS5cy6668
	 /88t0bJHPJKM7Q3t+LzGKL7KTI9a0ZZysOgeGRf6JbrTDtwPeNTr5bGv/yR0bDd0QR
	 GD95sZEOta3ynnV0YM/zU951pS5mPdm+w5Mp9nFXZrEuU9sarNWkdQO2Tkc3xUVimz
	 86iB79Sk9IeRjSgd6B5B9NXKqF/cMatu7GV/zcwhFQLiHPlqtmInmN02Qh2Qlun175
	 q7xpuUOgMvSXOQwSX9N+MwpNZsEXH3LCBgkrEYiEHxDaP6u5sEm2ZL+UO8UyjWHhlo
	 UzFyj2FgIflbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1325D70DE3
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173285975364.22287.14235790855818657863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a897860334f51177291ab4af99324145927f8debc914c3d2506193d15f1dbf1
Date: Fri, 29 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732859753
