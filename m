Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345D71DF75D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751266194; cv=none; b=SI0hhNSoDJSuP4HzFM8ScIwL6CSwTot6I7gfOxk1X9Ggj5LSfPRMTStcisocXH0BxEHpVZsxdeDW1byjbia7R5TQdbb9a91zLBW3+f1V/flvA0diE/9i/ctgd3XWUC5SWrVY2eMZk0m9zyhQCIpo5kBCnVceQRelNNxKWX1Nf3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751266194; c=relaxed/simple;
	bh=YoGJxrJ9hDKTX/05pLq628i9AQdcc1tgmDKWfmHG3AI=;
	h=To:Subject:From:Message-Id:Date; b=UqaM13jbRt9HwsXjNizbFZHjRz9oY79BW5K8oxhcvPl4wcRQY+Zvzo3BF6niFLH0FugYiJLr0/9ZImWL7oTU28vTU+yyQTIZkg1ZNmtbjRNfbIyWOFzSQQhC7rsSmhjcU4X/KC3UVU3EH/zGyEegQh86H9Z6gqawfes0kIz0spo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqGcHM3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqGcHM3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C72C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751266193;
	bh=YoGJxrJ9hDKTX/05pLq628i9AQdcc1tgmDKWfmHG3AI=;
	h=To:Subject:From:Date:From;
	b=NqGcHM3Hwl3tUblSgPhns3xldsDvbrdya7beECZs9TdXX0CDmQAAaC+lrT4KbEnbZ
	 BffAVPSAI0D0vsk9gyfv6qeCwcLyDQnjCHwXRteX6KlcTY4E+3WtuVTSl9Px6CIn2n
	 gvXD97pcd6R4QcYkOU1PA+Y2xCrww88vMKBj5uuvklqDMM+/3gcH+AT/pKuSZY3rsP
	 vVYkP6ydbFCmXhMJqzP4N1OuO1REvfi0gcfBkfZ5CmWhk2TwlxonlYl3b9aYXBwk6V
	 B4Aai7mhG+I/YWA6idlhZd4W9ue95Xl4Nwuj4x4yQ3VyjE1p8c82TBGIVkUJlHQZY9
	 89g6B0dPThBPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9357AC83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126619357.2816.6187198432300390403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36e7e8a4e688bb5a49c9a6f483270bf3f5e5802128dcf43688ca0ff072e3dbd
Date: Mon, 30 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751266193
