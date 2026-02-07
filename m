Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DFD2D9EE2
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770468234; cv=none; b=Z3sB4WjK//JwpQTBEGs35gCscni+sb/yCRyGmew+a94SG7g5m3qPp+5psZOpXjLK2J4inTK2/7zZmMdPRkGAEhAaa91/c064o9TRhXc6NkjPL0b7OcIb49gdxvFmR+7vu5imxy6kg1AWspJh/ogy1cpqqVyul9Pzd/9rfC1/LDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770468234; c=relaxed/simple;
	bh=kqPw0LViNSZZuPh+mlpFkEA1ew0qHYNdxUCOgh7K8NM=;
	h=To:Subject:From:Message-Id:Date; b=tO6q7Pj8Ly6kKtXmtCxiZSDSHqSWRP+CvGyLp9x/8Cth6l9ScOHu9KjTM/dy6ESqzTn1IGqiPf0YFwNoSEOpuGaJpnDq+EYELXrV0fXhos9uqHWOvvyhgIV1dDVlYbGe6QmCnD1HUcfS0ayW0g5lJxGGJJRxJe8zKVuvJq20vTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOKB7P1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOKB7P1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C4C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770468233;
	bh=kqPw0LViNSZZuPh+mlpFkEA1ew0qHYNdxUCOgh7K8NM=;
	h=To:Subject:From:Date:From;
	b=XOKB7P1Ni0Tdeip+MR+uhsJ9dgUDRpQTTlNMKC27lGxVkO+hLDUr7sfhIEoAjyzU3
	 LbDzFUFYv1slXOOZpe+wta5z2tNlaEZZCwPBkPqV7GNDJZ0GIoHoSOBGEYPN7EIhHd
	 9Njtyjfn2m61LWO/qti7IQ63/AcGOPpbqzIekPXv2ud8BRCytjQhWq1k7yAhtDQiux
	 +h38LhhBeN7LhOSCIyqbJE0/ZCEeAkMVXdfcqEUzcr7ol6uNMBfIqxX/j+A6jCIiqE
	 J91JaP5Zu3mIZroawykK+MkMGJVhKvCjEgAMuBLsLnZi9jx1wXCAuD3aSry9i9my9N
	 waIfFKMyygBdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95528EE0ADC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046823358.30941.16118440562031709536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc95b867ae78c23a82c0da2845ba47ba32ab17f2ffbfa801115afb1a1c4f7c8
Date: Sat, 07 Feb 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770468233
