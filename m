Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD66E1D696
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735133153; cv=none; b=L030bQXhPWz3O3Itha7sRepMLQP4boLQGERHtH2twGqC3R/0olxmAcFwLV/eLZnyXJK+BusuTUt+K7lHIc4IbsuysI0DqqrZshn2hyIOjRxse1QyGICyWvn3FL37g3uGhlpzTjjjz4U5WwBtESNUgBMnYtOlx9X5XGbq9huzRdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735133153; c=relaxed/simple;
	bh=Bjxb9sHKnnn4EKPayWY3vwSP37v5CacXY1GCC4bJ8y0=;
	h=To:Subject:From:Message-Id:Date; b=MPLXCCu+kLAH1bawdCIoHNOw+jNLeEy1Bps+W5ICxliLBFuf4b5YIQA8iOVXjJig+zZW8Lyqb3sixnDGM0jxvepnkQ43HvVA/YXgNrpuNiAMJmtOuj/RC/aDgPXDPnPsFxNj+GKdYCwS3DPXF6ALP+yWOPRoQmjeToPnkdNuQpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3ZkCJoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3ZkCJoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8828C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735133153;
	bh=Bjxb9sHKnnn4EKPayWY3vwSP37v5CacXY1GCC4bJ8y0=;
	h=To:Subject:From:Date:From;
	b=A3ZkCJoHQbVHu8CKEClGQqSAXylCENW3ymLuCEFSBqqiGfhl+LX2XmSdP1el1L/7V
	 Upr1aJapSAFtJjB5h0eZJDmM/erkZClPWdatZ3TAszHGrtLqA0bhK5mT6vU3tQgv8t
	 vxgMcPfQBl0WBIi8n9BiaT8qO/D6tWHXeFibpfG4vsakJFtUarvdm+qHTfy3snsQm9
	 bkma03MMzIbexsNMRJhQmHTSfOIm/3WDoTGfV+mexW22ViGz7nncsPDozTcdkk6Z/V
	 HRnXO0EvmqSfWkueQcB6igXX8l9WpIAbXqc3GzCvtzIwXLbp+/k3sR5MUawrcfLaxG
	 Cnz559nrgJcWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93315E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173513315359.24723.10497700355145092874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2bd1d40a0fade46aab317bee9b381ebfa6e61eda198605be2c8e8cd79fb5fd
Date: Wed, 25 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735133153
