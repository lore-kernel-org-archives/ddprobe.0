Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242D6259489
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734945354; cv=none; b=dtmrz/Sl5mjiwCA7cvG4tHklTvOfXZWN/5izknG2vyUzpqXaWzDelPHkOOnXmO76iDdA9ywQa0jOAgby++LFu13EAVZSarfcS6Dq4lbjGgZBeuGe7BzSQv6MvbcAgGZ3xVQ87507N1wA2jhzM3JJit+jZhJgSabbjqTgQZKpndQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734945354; c=relaxed/simple;
	bh=Ft2mXk1wn46IUC01QkPSWN6pwkLEjf1fTrk4ud4gZqg=;
	h=To:Subject:From:Message-Id:Date; b=TMAHu6eU3NgzZwraZTM1d9yZ7nzE46hCqs6wI0TdU5e+VR75L87zoKfU0YBtCeRFsnrJMVkXorg8Hkkff3x/l5OGHIb2orUh/dtQF6Xcxy3Bqd50bMNLLk+eLXyODvD6sbyWoRKMH49ZYY72+ukLi8GBHka4TpP5M/564abv8x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTUxfqiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTUxfqiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3298C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734945353;
	bh=Ft2mXk1wn46IUC01QkPSWN6pwkLEjf1fTrk4ud4gZqg=;
	h=To:Subject:From:Date:From;
	b=mTUxfqiJw7SJLMc0ML0BIpcHVQZT1C/Ei+TZ8rIfH/NrrQbtp73l0WNMuKfx6JUkc
	 mNNW/Smq+NwiAEmA3cW5Ztsk61d1jKdlIT0w8WNwxpsnyzpCrb7052JbuTqFzvWuKE
	 KjWrEpjnajhAmFXDTHCduL9j51kgtJTEnc1cZvYf5Rt/HgdOfYPntaDiGiOCHBeRGV
	 2PpZSYSooLRGJkEg2QtY9Pcbtl/v9RGxb9IfPLfOnpO+Po+SefyzUwB34j7fT8xN90
	 rJQ6G5GnNA8wWxp/U4nlO/iwkN8rc0fTPA8UPPbBLbWrXeiCqF5x+e3p/PlJqOJBVo
	 R4zyKAp57gmxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E212E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173494535360.20832.15077173085879278343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db237d55aab875f21db72e85e14d8a8dd77960c10de599a536f590d924fb2210
Date: Mon, 23 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734945353
