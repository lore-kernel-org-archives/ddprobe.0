Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596224968F0
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790946634; cv=none; b=NLn9ibcTgsS2R+dWtAgiEYfrNBPeiyCE65hJtE7MI3nITd1c9B1vAGbjDt4m8Iyj+QtBoMMuqX2ro9NrJLL+ZQGFvvRo/ZrJ2dQdpdAlbf3xHe7ofrgmdWOaZC6zyDx0P8J3jjZ8IBTEXoLqa6PW0pPV3EG+c2tcMuA4LCB2vPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790946634; c=relaxed/simple;
	bh=TyViQwEq6z0i+YSHmp//y3DM77+duYy0Yi7NpDo2rbw=;
	h=To:Subject:From:Message-Id:Date; b=PQBX1nSiNfjFZr+qCHzmLuo+lnC07Wj8YdMhI8LRufo2a3u27AtKwrgb1xyPk3+IhBfDjznAzpw5Eyq5rGHoQd1BmNsqtFJ8YjsYW2buLlYTqB2iADAQ7LJzYSvTxHVAIun8CJ9e7Xbt4IOvVjC9mRB7Z4WEdBpc0QSp40tMcoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShgxddQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShgxddQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE26FC2BCF6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790946633;
	bh=TyViQwEq6z0i+YSHmp//y3DM77+duYy0Yi7NpDo2rbw=;
	h=To:Subject:From:Date:From;
	b=ShgxddQFhnm6cby6Gx8jX/b6tDPzTrtAdcKjCNDDPfpYLhzpRwLRqYsu3uxXluDSE
	 ByIXH1SP2xfEfL9U+zCtjNU4VgWb69f1MJjJh36UhDfw94St3SyOQmnyuZAC7sUeyl
	 QB1NcJLCQnRzcxkXQ/wVe8VCczWRLnZ1oUvXaNe7c/OrJLoAqhiu/x1Sbj5sKyA4zL
	 6D02C7+dvpSfYMKF+ozbSkIDCuX/lhKT2aWj0s3/Q4M8P2MP/mNzwSN4ax/rcm5Wz+
	 LeTgTc8YAa4al26967m6johBeJZ9BPe5KsbbZ3dEXnFljQApQBGQ8E5LstffeiACTf
	 k6QOxu6VWmFDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93BCCA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094663368.10237.4149133276453342744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ca7d11b6009b5ddfd460e7eec6e970ee93357d22e84eebb5a873c91f430056
Date: Fri, 02 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790946633
