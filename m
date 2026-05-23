Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBA839DBDD
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779545554; cv=none; b=O/Td5pPLkgMxEfiIw4lt8m6+xRBop5jKkTscgObPlF5NnwBxsGoXmQEibfHidJ5vOPCfxbCj+CzDzZnbFv2/EaFkZq8imhmkx5W1ak2jIM2iXwZLflXNoilKEiVkS11Hmwv9wS7kJf3f1J8Xu/bLio2bvK+QMKKtEx0NexfkQPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779545554; c=relaxed/simple;
	bh=fSIp0PUi34DHzSmIAxhz0GleuALuT/v+xKuv9nEy3G4=;
	h=To:Subject:From:Message-Id:Date; b=MbKED9ykJtneCQmcu9PI5wFTFyJ0Yd7TtJdUBC31AtaF5YPE5cL+UQAq/t3ioR5T5X4FNPLdbPTxjwBlqTt8dMJquxXBqZgUDeLFLb2FyvPfi3ptyFxvr0stq9pqlCoiqPEGlHv+LdwskgZUaT3sIizhiwKfgdD8H0NchNrEQvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqqLxLTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqqLxLTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D7AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779545553;
	bh=fSIp0PUi34DHzSmIAxhz0GleuALuT/v+xKuv9nEy3G4=;
	h=To:Subject:From:Date:From;
	b=ZqqLxLTalc7LxBfK9D4Vg5aSjiy5Ej5AjL25FmGE2z3HWq0EEMWlUeN3CT0FMXJCh
	 GkGtTb8KARXObhtGFUdsuFDb181HrPfXzMcVmU79UmI0LpJITQipRyn8r+31ogdxAv
	 RF4xs3/p8fQRq1ky+tM4NM+K/KvlgguVe0c5UnMMk8oF/5Xm6CUIzft4FTtgXcnzv7
	 FiN3+nl6EGlorpTaJaZybgYtXLgjrjFrO7cKCitKwobmzrCF5ei6+zDj/0sObKs6c9
	 n2Z0r/RvUu8mOaaMWMy8IZX6jiXqe7zdoOND5g8N+JEZGhy8lRzgcO70L0mLe0GBzV
	 D2qgJm24JlsDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD92CCD5BBF
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954555368.7649.5729789763784955179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63719e3fe4a69d0a559a131162baa6aa3bd3f49e7d0885217f6121ef0068a3fe
Date: Sat, 23 May 2026 14:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779545553
