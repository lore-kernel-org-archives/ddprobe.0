Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4235835950
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748665194; cv=none; b=FO5cor2MRbnTOwHUYIEYGg+I3fYsnYZ6Ey8ckeOReb7BF6QBag5t1R0UpAkcdBWcOmF313k7hk0K6Roe7M+ngPw9I3Oc/v8gN0obN0jyl/h7VFNIw+WSFbG9WUYBSE4zC37e9nwQmBpPwmcYIGAFEhC+2DJoSNr8EUOwjU/cKOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748665194; c=relaxed/simple;
	bh=M8diaa4F0UqR1xBP7FVK9grrWRQRjtlRfWhwG/mdwXg=;
	h=To:Subject:From:Message-Id:Date; b=oGA6QX0YBu9WewVr0cfsaQd4hkiY3ma9qATIHZwahdajOWUcMZw9QyoDD95pRw/NtZTivrNKObtCfxAR+l7yZsNfQT3CUi20jv4KXkqfPIX1L5rjaCgIijSCEtq/Jab7pqDJBHIqqiYONJpXeR8V3nCnZFiaq2tJbwLvoGxYhSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIHLWC4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIHLWC4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B26C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748665193;
	bh=M8diaa4F0UqR1xBP7FVK9grrWRQRjtlRfWhwG/mdwXg=;
	h=To:Subject:From:Date:From;
	b=NIHLWC4OxG8j7Z+aDQ+y2gWeGDtax7RhbFLyOVZ5LkjffOL/iyiKLjk+SNEWZCHJG
	 jINu6wJMQNPJOR5o7mD50dxJ4+HsTi7RodkwHhyHwpAuiNvL5vH/IgH5+CcYKymuVx
	 20nWD/rUQ6MKlGMwiJZQQB/f8FRmiw/sIPelWvwaVE0oWnrxVvtVyWLDL/7yjCzvVM
	 wRSIU7hLJvuDvxNJH30/3T2IiXyOE1+Rkw8ogucFyehNGU3mPa2TKwuYxHAaBAsVFB
	 gzylxj45mxgC6Bj2vF2gKaeGt+cQ6TaQYsmcho/apKkUuN/FIeCDOVCoZIM2B2PQxy
	 g938w3Hup5ULQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B05C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866519359.12315.7954873632111756880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf22abf4ec4f6336d565f5629f817ee7bbb9fde3f629481d7ca991bfd035c731
Date: Sat, 31 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748665193
