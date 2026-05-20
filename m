Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D872BD5B9
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779238834; cv=none; b=cTg5+klSN77GkTkb0iMSEvvhbnSIh4AStHc3klnM2uEaAWr2aTp4q+nmnxDZz48wj6btFWk8Xl7yi7M9ykpOpG5Uj2s27LJYXd3Plqq8lm3rbtF3OVTgPdow6j0mKWgvhpFFY0yKepiYQBKld/eOvbUtfn3iXq6vas6imLC/8Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779238834; c=relaxed/simple;
	bh=vXUoCo+0hMCdVkGrgZ2TqolldMSorZmi9mCllVPGjro=;
	h=To:Subject:From:Message-Id:Date; b=LLNmwlNT9XxEOkCn7i0h4jyI8foVDHLbTEwOqvKD8AJGs9x5Kc0ufrbVDzi2XWDJAeSpD7XFfbNTcppOFd5+UDSO93apJKgL28f6RWqLTqzFK4bGXq1piJOnApCHo1fT9PwG/zqEsyOOh8ADMvmS1mv2I0fgyRDnGZE/muUl8Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+r4R+WZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+r4R+WZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35AEC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779238833;
	bh=vXUoCo+0hMCdVkGrgZ2TqolldMSorZmi9mCllVPGjro=;
	h=To:Subject:From:Date:From;
	b=k+r4R+WZ71x2tUH6BRduayQSBhic2SecfkRxWrdKjIETVxG9OTiVBt2FaTAHcg+SV
	 8B3ih/YvBADcknANa3z+7x+O7mTtLxoyqEqiBsKzvLQKEdN0v3vn0RXj2JBkQyP3w2
	 9bwd0keZpOQIJN3xKib8Bl7yXyNELg4+T2HF1wcE0kwwSiTs/xzc/CVP8XQ2DhlcC4
	 o0elg56rTsxnofhzQE8sw8uWmIZ1Y4Nuu4cDlb6C8GkXeDwCgoYA1zYmm1IfLslURn
	 clb7GR+fapeHeiYJiko2+a7bTDQjHxsRpOJ7hCsCj7PRMEOlxIRc666HD9XsKDkULN
	 RevI7jqx51U8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE07CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923883368.618.17096920380898090251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced43676317c703c45d00fc03421792bbe9e815767f7f07d9bb4abc9d37b032d
Date: Wed, 20 May 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779238833
