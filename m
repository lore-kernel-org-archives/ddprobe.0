Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CC331E82B
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776191854; cv=none; b=sT2NCg5rTbexbCqQNxrmitKuTAQRxCwZPbHit0RfFIclr8be3bCSciV3A1SX5qdu/omG1gcMN+jmWFSpWiNSUu1f+ezQD9yeTVOsPMl4gJid0rQxmAC2BrQcZ50UQCxyZlHx2b1oevypRfX0p7IuEnBqhSz2pFLM+diOOFratFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776191854; c=relaxed/simple;
	bh=5aM+2ZhV6k0/BMiT1nvlcZiXVM4bQcu6+HzbONeYsOA=;
	h=To:Subject:From:Message-Id:Date; b=BWniiCyhlpvuwhJcUFbdNf7l4+BMQhzHBp0ZgY9nPxNgDuxioFjn1HWgtddtfDPylvlRid354UggX+Da4O9La1fGbr9v7ilPmapEV3X5+zpzo1hilEIroKAX6HyydcV1KBwuM9V4qnn52v/shi582Puse8jWPnf2+CV+S2D/mNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGkWDOvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGkWDOvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96F1C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776191853;
	bh=5aM+2ZhV6k0/BMiT1nvlcZiXVM4bQcu6+HzbONeYsOA=;
	h=To:Subject:From:Date:From;
	b=AGkWDOvRfrBpECgsKHYhI81SddpdW5WT2BASYSEvmHUajr1VZ8EggqeDhguOdSzjh
	 +r6GxGkrbDrVcMq+xksultv2BWOLnUi5/MyKEwfVZGmcrudqiYHet8dlTQErsceZ2X
	 ayN5DuksD2ahRcir0mYw5sHZolyjOqTIaNpThyGix55h+xRpfzwv7xvJFVxAkm1fUD
	 vEsuWRWHpWORNTRNmyULrR/Pcijy2uk9ztzGdT+x3gQXoU10bDJpKtDHGxSbvzE1DW
	 lqXeSkBZl6wvDB1UFXUj12hhwu5aynVk2K+szabaFu8ZxCmSP5WVr6uuSdHF8j0Oz7
	 JU0Cq5xLe/oWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A993FF9D0ED
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619185368.13500.6332496984424423921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a6005df36a1cab6d40b3a9ec3db8103e95b967901a4217f1705557fc294f16
Date: Tue, 14 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776191853
