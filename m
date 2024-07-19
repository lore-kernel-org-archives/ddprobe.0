Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306133F9ED
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721375154; cv=none; b=CXH5uWITdMEOPn4BzaSfJbPTB4CFsQheAf43gEEuLsaF3bY0mNzeEPtBClRv2osZ0et8BZgNlOUla/1QiVHgiIXFtp3zi2MT9NrZJAmC271Y5xDm6za1+xo/fOoT7tsjeS+PRIhgZr1XtHqh6n94bjcLBdKG+VUYbiZ1TtjGAsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721375154; c=relaxed/simple;
	bh=oza8AFLVpEQC+tGVwlzzpNQpGxolVJj2tEEQYkKVp+s=;
	h=To:Subject:From:Message-Id:Date; b=NASKyDGfVg+2g9UvuOb9O6R2NdjNDTDHMjB3DQwn0JETPmjpQtV1/GKk7YcowYUGXDCyH7Rs1tCKTfdDxnPmNf92hMa/cAJ7QX7ohtNVbWidVyw8uQY3+BHFAi5dt8EH7QL2BL55e9zH/kO9x7ss38jWTdlbvyq3eCdC1drbEmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLKt3cWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLKt3cWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AB1C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721375153;
	bh=oza8AFLVpEQC+tGVwlzzpNQpGxolVJj2tEEQYkKVp+s=;
	h=To:Subject:From:Date:From;
	b=oLKt3cWsQH4srjvmlj+4mtKyLlyITi1zW3q2tbEe3qw8tB5ggG8l5KezGtykC/sv9
	 k6ADVCI5Y4Fku2WRxK9QqMRc6Yf0Yy3UbV35G5RQpPjdBSrwV8xJ6XdW0MRhPNJFdb
	 A3hDAVJd9ArWJrDr3dziQSOxGKqcd7Q8Y/iXGuCzcBLtygJ96OAO7VgPo8/o+2edJj
	 tsJUL6NL0TXC4tfyLwpZ7E0JRbyvKYucslIQLzhqFzGq6MG5NlrwsEKRGstZaKnm42
	 jzAUuYbUZIqCV2z0ZQZAiwmvNYx/YmvRSVV3SeeNiCVgypjl/pvLm0myjyHdiUZwpJ
	 mgPVtVtReMoHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC68C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172137515361.23719.4911558450828667569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f8498ffa362650d71206c299c03401217a8c788fb6b3f16acfb4d33dab81a8
Date: Fri, 19 Jul 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721375153
