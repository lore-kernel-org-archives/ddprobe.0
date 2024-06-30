Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EDF39855
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719776663; cv=none; b=MoHeC+M0i+eHXKCG9QH7qNM8LEme4geYSM6i1JBuHJGtuCpTkGYwAkOoh41NvwLtLJe33+Yf2ZxpIhLnj60W0SDs1phwBhCcOak1q8Wgd5kq8B7e+LJUzRgbIlbInytITwyaEG96Z3r173F/6gma8/2AMNPUBtjYvsDkrMZme28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719776663; c=relaxed/simple;
	bh=Tx11zx/kYrvVH2aHTGQD8AHBRNomEHLaz4Bawcq1b5E=;
	h=To:Subject:From:Message-Id:Date; b=oyism9TfgBz9zf1PFoeSkqhljXBxlskyTOG+RBkT6fNTAjer/8JlCQ7fKZ+gn/JIswAp0S3WRxXUbbgJPo5OuCOg0y4x/M4NN8eBcOuyikzhwkmyJg2Z2czM9BCLbbRM49+J/E26TOYEV/UwZOFmyft/7yRSNmKzFlU9+pLLOOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJv9MknJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJv9MknJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF75EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719776662;
	bh=Tx11zx/kYrvVH2aHTGQD8AHBRNomEHLaz4Bawcq1b5E=;
	h=To:Subject:From:Date:From;
	b=AJv9MknJUevUzE7y1KgnSzus8UoJQkw2RxDQ8xrk3GY/7+BuUN3ey0/K+PuTtrZjk
	 JBZz+YUBMofaghZAN9BeAOjirYMXWRBtxLEcSqfeUPCPESAx2NheWsvXNhkPdEwAq5
	 Yp0K2dII4jzrxtO/tfxVWGtBEcDWC0a/k/Z/fsyi/ujcwYxmHFZletweEBEotl33Jv
	 qBiZiVveCJoYeOyGRK/8mOWesCi1CCMKG/WMhvh/63kujWXNSs4GC0yR9grVc9503i
	 l862oUkALR5yZzcv20QHTbYQ8Knrpji0hR++0RGJ+N05xum+crTHM32rNsU91gcbmY
	 QpadB3Z/HpwjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA637C30653
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977666281.15821.2086025976457589069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b59632b69242811d83c33bbf7b6928518b305b368a9a6d27ba7976ca982095b
Date: Sun, 30 Jun 2024 19:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719776662
