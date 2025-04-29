Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351DF270542
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745899794; cv=none; b=TLeZrNLC+sDjee+RiRyyQ3Ujf7ESYnMnKbb6CTDuDNkLKNkjR6XnhT4tWgLv8TRl+dKm5mhfavYRt1ISX7LXENjfPKCECGb23rn+ZhKKxAU4V9sbkOvtoWsy321bUBSYDfi3YFHdWBa0jTiF+WhvD+XSMcU7L3ZqVBbo54b35gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745899794; c=relaxed/simple;
	bh=b5j2uzNjLGQecgfa6ToSzigrJNp/jWjjIUN/ERoG12Q=;
	h=To:Subject:From:Message-Id:Date; b=b0YcGtDLoC1rf+vDiK3cWv9X1qFaekCHOIbwjhdMFLR9goB+rR7KjWd6xoZtyMdaAh1HGprqtJ/lcAUGMpu7peJNy+ku2g8Jq92pppX9wMlIjKx2STms/ujAllotVOXJZ93zumN4bNQLQs90FAyiTcqTdjwBHdTHtWq0+UKzOME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9NYT4IY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9NYT4IY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F3AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745899793;
	bh=b5j2uzNjLGQecgfa6ToSzigrJNp/jWjjIUN/ERoG12Q=;
	h=To:Subject:From:Date:From;
	b=n9NYT4IY/fD/JNvwUvabpRfr0f1n942OcMfEuaRy2x2XA7S8MZBeXfWsHLjy52Bin
	 /4AXvSCD7NRYTQizUgjtFlcCu2VrnYJ9Es3f5jiUj7rwv1rYqLjnarSFX60iILZ3Dx
	 xgmRtBGEyU5aHrT6XJycyGRYSASl7fnBB+M1bBVk0n1HIAbXHLXC7BQRKA8cyfWjXz
	 6ncVQB5L+OYJXGPE2dNXzU1uYrICLVKAG0S0fPx/CLabIkUwxQDZjzeMfg4QXq81LN
	 c6N3csuaZauJ1UhwTOhnZ3h3itbjjatTinIHnewLqv26hpU1Z0CZ9tl2kNnSIkrlZs
	 +aUHhgbby0GrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CFC369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589979357.32046.17028207329161121663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3306df70d19b85c0a2cfecd13f9c5d21d3e922d4f5af8dba98f9351945fb869e
Date: Tue, 29 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745899793
