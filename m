Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AC9B67F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711795097; cv=none; b=WjlVtHAfD05mtWMeM7oWgITfJsfXZaTnpTqrAD8JTnm9AOXLfOvxa4gg81Jut3nrT8ZjxpPmBtJ2OLSOMEIBKmMdDZI/FSXjSJH7nEvsnCktr1uOSjMWuqUBfSO7sY7ijyUXgYRkf4QBOYs+IeINvKmLzggdJega8JsPvPHm/UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711795097; c=relaxed/simple;
	bh=f/JJRa2Iak3HUirjaNkwkBraLU5V1d4gMUTDSO7I+L4=;
	h=To:Subject:From:Message-Id:Date; b=rZ0LglOeO6umag2/ttCW32khkACDs3f/oD4mjgraPWmNKkI2YWd91bjWoSPBzuOhdRz0p+xkoMCg7MeySwalN6vi0jXeNm1hMXVE/nI1bu8t15gmLxgeHSQcmuBjkZD+DdPrqxkx8YUz1TTPiiWzfd4glJwVTUlvE2zg3nk28yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbXaRfXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbXaRfXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83413C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711795096;
	bh=f/JJRa2Iak3HUirjaNkwkBraLU5V1d4gMUTDSO7I+L4=;
	h=To:Subject:From:Date:From;
	b=AbXaRfXd61eU95zoUqk8ecAaYazBaTTxBYihaD4dgTxHKQuVmKOwB73SKbY+Fa40h
	 LOgYv54NIwbavTR8jjD/wFo/9cGC2cFj5UUZJpK70QoF4i8Zlbm8vu8spDy4I7M/WF
	 u5R+wqVX4/Riy1I1LFRxe3HYLBskZXV/wv2OEOCtd2L1YNuOdoSkcviwta8tkek8F5
	 Suu+CqP6uAOXTO0YyJnljnCSS3t2tZA1b5WLRVf0C6Zw0wqHBTfbsPrxrytfUKFuzf
	 rWd5s6fuUVhHceI2be0vKKC3Ao9n/xBKCsdOuJJrLIaxbpGTaUxKboSnExQzjYV6dq
	 272qTXl4lpfaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ED96CD1288
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171179509642.25312.13882592381198942964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c885481360b32bb49f8b9f186c10a2faceafcc87166ce86b42c17d1aeb0776
Date: Sat, 30 Mar 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711795096
