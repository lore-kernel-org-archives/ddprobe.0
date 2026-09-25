Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B64526AC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790302234; cv=none; b=KxmmVm6x93yO+CbuMK7Dpxat+hWhEHwLGCoDJIdqG5O8M2tsk6doCbem0hdF006kRF4G9hR73TxuUHAfBmMTHkaqEpABtaBVjw53yaaJyJ4AoCjFsZH8Lp0L+kVUoycQq/sGqOfc/AF1tvy8cgutEc82LO5pqyaCXjWAD7PVCFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790302234; c=relaxed/simple;
	bh=9wql4VvijwXKZFjdt8hYhuUkM3y3YwIATYEKMpTjCuI=;
	h=To:Subject:From:Message-Id:Date; b=N883kUhGA0AMFa4DIwe0Xj6V9dsFLMfyifLuyQ9DmC9MQVQY2zMWgsaJjkVfXqtlfYGTv+qRtaCZ2iR0JwXHaDIBcZa4cj141ZRW2VBVlodEwYXK/RJDme1Ugx7EIqpJhaSaL/Xu4wHs5qS3ACbEln86n2jkrA7TXc+0TJIQNkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bK0c82Jl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bK0c82Jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D169AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790302233;
	bh=9wql4VvijwXKZFjdt8hYhuUkM3y3YwIATYEKMpTjCuI=;
	h=To:Subject:From:Date:From;
	b=bK0c82JlL81JM/wjsBO0DY8DPbiuY/0bemQI4LcVVOMLTNdwChIDlmjYpqggGhW11
	 vfpcqZowza2ovobftduEMX4eYuwxjUDGh044vZwagBoghu8WAfdW+fT8g1MMREk4hc
	 Hoc/MhZlIOf58/iGtyVbhCURZn1PjFAFMqu2Ul50c5Yu4pNKL/H8aGohCfAEopxu9k
	 6gRlNh8n9mDxn/BKCx1++2tf1ABHFbegpaPkDDI/YkstyoDy2pJzr6kIYmi0vXoZPT
	 vYjy3nk2NbL5KfSn8W4uR3QwTJY3hTH2Kn0CrnG43nvcv4vHA8W6D6stbjhyAC/79R
	 HviS7ChtgqcCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACECDC98318
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030223369.31024.10540563564310556665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89737aa54af10a6c76444435f06ae7524d4f72eb3785da7d0aa913183f761ed9
Date: Fri, 25 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790302233
