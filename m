Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEDA2BEC2A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758276594; cv=none; b=mim6asXv7+TVJxYUUoNeeWBfx4bGnMAFT5qGDZEBq0poC4fQK8xPP1VZFdJP87EPZokgZjlq+qJNQjgmb1Q7qyKtw9Kr4AULB+BOxvwxh5V9+vFr4MIOi/QK+YXhSKTmpRpq4UOjfzBrB9F8FXvzBc4Q/hP5D2CtPkHJ/EoCxEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758276594; c=relaxed/simple;
	bh=8P+1YnyS4eRcVor6QbOm1LuG8PREMPcYohT3/MDl8Jk=;
	h=To:Subject:From:Message-Id:Date; b=ZbQN+Mef4cTU76okAhOwcfWU9v4ITcGnthLGBg4MYepYcTTf7t/0HHbtgLfwk5zsWwNYzMlR9CBa0LNyYRxN0k5h5tdunQ0h+SRWHC0hdq/5OxuAcxdfwnCwci92KAwhCbGP8TdXdr2K/EFJbQL9b/hdw9TAUvM1FUNy7l2IGok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FN7ce/xY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FN7ce/xY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2444C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758276593;
	bh=8P+1YnyS4eRcVor6QbOm1LuG8PREMPcYohT3/MDl8Jk=;
	h=To:Subject:From:Date:From;
	b=FN7ce/xYlJ7B9gylpeEvke+aNuvqulYCsoOSHPy8zg7c8MenDWRIHMiV+2ZkO6RSH
	 pJIBm0LmXjX6LN4gxwQe16potIAtxtgURQTgW1lLk7RIDK8cvJgtJY0EhJC1jChURt
	 arNA2reu+PWdvQy+v5iZKhv1BQVLK+fjoujmLQRqWvZDtPqruXqYBE73CmwPNvuzZ+
	 oo6ciVFV01qaLIH0B3s7pgtso3wbQ62jmu2jaS5Ka5kcSbHbYIf9Iv2Ce59y96xdSm
	 YuRuKKjtLeFPtBHZeW99gp8MXKydNC2S/dsHHOQyfF94CjvSWvIjEFVIs4Hsag3afp
	 UEI70/ue0YNNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9049DCAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827659358.3774.13474372329759845642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4917d31016e9b6a8aab3851e423d08eec63829253196c53b3c274399bfe3fff6
Date: Fri, 19 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758276593
