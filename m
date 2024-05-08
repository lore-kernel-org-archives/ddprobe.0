Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B0C8F54
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715143943; cv=none; b=dkZVt5bFWzRJ6uK5bPTzvSk8VSfyS/ngjVUvOYn9QQPAS5r91zQeQdxsRVgp/tm+f0PN2PmV1GHPVqp86XoF5mJL4BJ95YrL6YRAiinj1EHgpFcWGTt5udX8XDH7dMTPOtqengbpATKOf1Q4VcRAX+MbHDu9xGMTmN9qPNUAX+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715143943; c=relaxed/simple;
	bh=mcjoIjBO2qs+1bUUmWcByM9oxcZMoxBIfrlXiPDTN3I=;
	h=To:Subject:From:Message-Id:Date; b=FFs4qmc63cWjr00AK+S1ODyGFmuo/3wILfwU2bgD7Bd+GrrhbS5x8Cain7AdGYy7/afGNQsCOxCqE+o8sJAsuSxzAkxQ5IaM0M9/keLmrxVPD1OJhFtm0m7Mz8cX04i6U+XHfNmFqYaxc4vb9hvdx5RZfPtL8Bi+Qe+NK/TcY2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mm8HHjDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mm8HHjDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E066CC113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715143942;
	bh=mcjoIjBO2qs+1bUUmWcByM9oxcZMoxBIfrlXiPDTN3I=;
	h=To:Subject:From:Date:From;
	b=mm8HHjDYsgIgyH7IbIMXByuyeC1FBmu8ZpH63n8HWYK83yeNA0zs4eUgwKuzn7p2T
	 IWBHCAw4SeZM7H5zmMwsus0kqX7+5MA/gthPZJJnYzqq2fOCjNFuuPvR6ttP5EYoqH
	 9Nmy4eg/5e6F2ZfZUatciDZXsW1ABAmQhcy1KiLRZNGH0hpmFcE0Q1u5OLaXuQ3ZM+
	 hAvDxuz5Mj0RIohWukPAqqFPHdh1PAXltkDoJIQP8wNIRmXRXDITtinmQxb5dmw4c+
	 kNHyGkZGNso1tUgs9j8hydBS+6lZLHDilAtMeYdpaXWsmGMXRxBHOKyEkU5HeIm7pE
	 0ikwM6HLl/RSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2728C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171514394277.25180.14169661202143243848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2722b3a9cbee9ef59a1b5d5e4686e5a189118ce264f6913e62c0242bf0745300
Date: Wed, 08 May 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715143942
