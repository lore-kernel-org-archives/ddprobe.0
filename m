Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB87543E499
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772284494; cv=none; b=LU4j97tjzurCZ3tqhWDEHRWdLcYVQbSpW9KBogHBv3PhaqQcDwcWR643HHhoe9AXskV3By8AXcJEbcGiuS6hAPYVAm46YLdmifC1FYOJlD0NGCDVRMn1mQBVU6PN9XYiWeu9+q4AVmslYuYpjiINFHIESGnaoq91c9O0uKhEHFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772284494; c=relaxed/simple;
	bh=bTd146BuxV/h3EDDi1RACQPqIy+elrvVBD9GooMtAJ8=;
	h=To:Subject:From:Message-Id:Date; b=KDqgDFaF5zWfX+n05ibPoyWwRgbc4K3h89+ygg+02JOVXwKx1zwd17j6l9lY0wrG47nSXPTy8lcblwszjxek6D/OZziISSTLmo9iE+GZ4h1zrlO1I1P/JhATviJnI+JH171rYWZfvSnFdnQlL5nU//YYGnf+sIoWt6/tToVWTIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCf2fdqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCf2fdqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AE2C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772284493;
	bh=bTd146BuxV/h3EDDi1RACQPqIy+elrvVBD9GooMtAJ8=;
	h=To:Subject:From:Date:From;
	b=nCf2fdqtm0vSdvv7efg4DOWS8RDfkVxSpz8rx7OJPTxvBp3EwxkC2a1toKHBEPwbW
	 urfDSmtweWznz41nVvB1afScYh/hLoN7nsesoW6wKnF5lK42LmO23N+vY9nsoHHoMO
	 lx2nXdfCOBYfDUoAGcFoufw9ICykbCl+QH3+MK4KqTg4uKFb57S0bpkfGU5WHtdAZA
	 kKYwX20H+mHmCkdL+ZSSPSQ4RDZl1HSdZLybcE20QKVpmBn1/8MSFw2FGIOU/HSE5X
	 Ar+s05qDOCiLQHg+l4+7ZJcdWlmMHXZmk2H33qlOEbjq8ljZHzoBQP1Pvn+MD0VzJL
	 HQZ1dN9pHXcWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BD0FEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228449360.4843.2966276414128033792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31fae9895d2e9623ca0549ad979ed65a67d544e9c97e66f858238c20993e5ba0
Date: Sat, 28 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772284493
