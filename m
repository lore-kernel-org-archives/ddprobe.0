Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6593B1805B
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747184994; cv=none; b=HPFUlynSRXfmm7I1ypFXXx6Xt5HNlupTdQMbVkVimmZAvK6NcyQM2yWT/INmqlPn38Tyy5uePB/GqqklPEd8rFmKWHem8bpRxHp7pSZzu/m0btHjNI5FiF3G1SMKB78WB7DpxShmQHrnXeUbLwvhzqgtzYpO2XsSfAVlW0GUOvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747184994; c=relaxed/simple;
	bh=BTvqlG3GxoL0W0Wikw/T4LnP7f6/Ekkjs0mQU5l1kus=;
	h=To:Subject:From:Message-Id:Date; b=HBrM3DG7uWpPAtXpmJZY/gfSQu3MLdZnZxrqND7vbNmfCMJ3vpLmbYcwa806XleDAauoZG+Ooxbddbt9dF1iQ8ezDeglkofsfSapZ0WkdqIdT7dbs5dybpBeA/mjOv0/Foh/4bbt6jmpSwK3lCwxiBXKfzwdWqa/u935RDU+L7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1n9eyin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1n9eyin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A398AC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747184993;
	bh=BTvqlG3GxoL0W0Wikw/T4LnP7f6/Ekkjs0mQU5l1kus=;
	h=To:Subject:From:Date:From;
	b=C1n9eyinXux2WNQ9lv46+lZYFmsrlb6Bna+tzCQFT2DjC8zZJW6sJd09hrbnag08l
	 YmEn9IUIeIT1BIN/fDSARkywAsSsrXM3jV5LymChFlk5SYsZe+ZKVX8VItPrUZtac5
	 MdgGqb4JRz8Z2J3NCCVwjfWvChOzciEwq5EppBN70Ik9LG/yG6o2LbU2/pzOipQml+
	 PbMTzfrmMVkhpwRFh5WS2F+nPzHvYLpvDEYzCjrJixeFYGhUxJz2Ck57wpHUxOvFCM
	 sgfXxS+VU3rvC61adusPMVH4mMJH7Hi1KGpQrYZMWV+eA+oddRtqDJz/AVC6bRgHor
	 vBtstggfPrxUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD9EC3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718499358.30975.10913970244069014293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3adeedb65c79922c6954b470a507af8367a7389f59f04ca904dfe22a6035f8b
Date: Wed, 14 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747184993
