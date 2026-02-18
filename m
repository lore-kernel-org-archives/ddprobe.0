Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BA725B1CB
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771407294; cv=none; b=cxi4/5kJfFGfQMobY8F/i73tckpOuwvF9pAkPxbbjWyj9R1ipjVMneWEEdD2WBTIqcmgiwNazLcFaLlczHaKusUByMQkdWgHSEKQMhtaYkZ9jqGKAPoIdjbvMunQf5Qxo6yVZqPg2VHjKQ3ZUBTtuMFeG+LYju4w5MP64KTBlR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771407294; c=relaxed/simple;
	bh=ux39V2uxq9k+7pEvv5W1CgsO2OzTezadDfx16WSLUNQ=;
	h=To:Subject:From:Message-Id:Date; b=Nq5GxpCdXMoQKptVr9kuuIXtK0ltPz0sNHkMzvxiPS4pgFwtu3dxwXJbiaSBENBmjS0dxMFhuZ86L4sAmK0zxMr/GO+/kHp5BWbZPg5DGxTxRMX7uhb8hCEDoZXvLVE6o22te3DETfNcS9dzCihIFfT1KfSPqsCWnG7x99NVrUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iV0R+KIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iV0R+KIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1843C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771407293;
	bh=ux39V2uxq9k+7pEvv5W1CgsO2OzTezadDfx16WSLUNQ=;
	h=To:Subject:From:Date:From;
	b=iV0R+KIPux2pvC1sDoFtCPSWYqjHTKoDsef5IGY7bTUZK0BmkGuld6PseuLRfn2S4
	 m1wkuJMQ32bO2pHa82Lb7oBxMWqC7Htq0OYp2I4pDfzMD4hENhC8MXoeUI9iDb4jQu
	 i5Y6grXvD9XpvGTXyO3rJtKsexaZ+XHNGeojGQvnTsnt/ALHgJ4fZIGYQIeLIQf6u6
	 ZWtBrb58n39vwyxtmFW+ztzuAMAq2/H2cBAyxuKnhEJf0SENQmwLhx+yAYWciOlJHg
	 6ar8qciQ+6xMy01SVNnVAKdlNrLOc4i4KP87YPJ7GgSDOxHO+L/H9rNUUhrAdx0kDx
	 NKs2wHTbW/fUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BEE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140729358.20026.4318525179877177991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33f402881e7d4939b1aae9d68fa62655ead239fafa33aed2d52f3ce4840e731
Date: Wed, 18 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771407293
