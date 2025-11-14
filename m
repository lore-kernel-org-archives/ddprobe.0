Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282812192EA
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763082594; cv=none; b=PfaBN03MmfBYRBYC5DmlmdVPB4zDw8FojrDGjqcQaHNTFsFTNnNkD/fPEgG0B3y95T1dd+tRWGrGLWorrEfC7+DOdx494GVpElGKAu5Y1530eHKAVhXPpw0/z0gy13MeE3heqheqDiiOGIKG1DKFn52E4+Dw9X8grqofdO7g/Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763082594; c=relaxed/simple;
	bh=cBMBtdzjtDoMoQTYrxixTzj2Aj9ona8cs1ob39jCwMw=;
	h=To:Subject:From:Message-Id:Date; b=dvz1l8VIOmsJQWieIgsFWOglx1Gb4IWsOvgjM2DkPUYeWaOZ5XLHrKsneQJ41IWcL/LrtikkieiPdGHfaOtauvDDyKg5TsBOB7+lajl4VYsmP6VFUIR+z7OSb+C1PtESwWGDYX0YNcmZ3HjMF+B9KmPxs8rrkoblncWn5Ke+7YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8KKEUWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8KKEUWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7575C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763082593;
	bh=cBMBtdzjtDoMoQTYrxixTzj2Aj9ona8cs1ob39jCwMw=;
	h=To:Subject:From:Date:From;
	b=W8KKEUWyu0jTz/zTva+3HsdxSSaIgE//W/1vzGgaJpnrtrir3RZelDQzFsZEs1QDQ
	 07iomLZoNQwhdi7iOgWdWNYtBFuDD8UZiZrOIjEde7JL3TX/K6eitNxuyjWm1aA+q2
	 KbwaZSEOQ6a3AwOVrzBXR2zgTIjTXrJqlGJL0VwIJoNYiatDhUONYChPexdLaM5NcD
	 8BntmfwKphBVcqdiQ9n2Bz7lv6S5Twif5Fp+//r9rGTAbwpoLlX1Y3NZt/1HO+rYn1
	 4sfvG2DZvqe6QukdlZ5dm3nUPZY3DOgtTRHrVfOpQhIWbMeOE/N0pZMm9JZgMkxRzN
	 g/APHdMAfM6RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990C7CD98C3
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308259361.4214.9530437574516341353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beddaeeae6b45b4328985226c150f5828a98135ce783c9ce2813f46546984469
Date: Fri, 14 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763082593
