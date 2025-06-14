Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF8C3FE7
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749865194; cv=none; b=H2ZzS7HF37og3VHuBC4mO5n4gcNEGBXq7oppUH9svavX38ncr+SI4FZLZ2VQGhR1YRvW/mfJyYq3w7fVtk09lafMPspACz67mRonWOs7uqAsj++hGGqom++cjZht/IL6PiloxZTgMHP/FnE2qoKpZ4ChxzJgPkLFuoDL3Te1Va4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749865194; c=relaxed/simple;
	bh=pSo29vd0MnuMJVzE9f9kcSXNZxnFW8Kx7GmbQ3jKKcw=;
	h=To:Subject:From:Message-Id:Date; b=PYXU/K1REUgH/JILFJsm4o3j1WI1LO2mYmEDAdowNhhfGg3h5YMsx8MCPONdmi1xhi8vKK0Ke5UcLog8nIhHBBEcsyHxBnAJui4OEixx2/VkL8YRqIgtcH0q7hq2uqEjxTCPaPJxkoTc6B8uaPgK3dhgYKifS1cGmLCjII/o3UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twFcyVti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twFcyVti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1416C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749865193;
	bh=pSo29vd0MnuMJVzE9f9kcSXNZxnFW8Kx7GmbQ3jKKcw=;
	h=To:Subject:From:Date:From;
	b=twFcyVti/qCemiTw5ra6LnvVcFKsRmQPChOorIwD/tG1W1RNHuj2BAgV5mCt4EwLx
	 fAGPDoyIPkBGHEde51RcbhcLHtSuug4cqqOsPjw74FYO6CXl4IrOYsj1RrtJ3fWZPQ
	 l8WihPvLZHJ+EH2mlIcv0tHvk/9udkiF8hZgiSwL2X44KVBxeQM9p0yDMu2VQOR5l5
	 nK/V/WCH4d0/6DBFshUbFpQBq/Pi4k8V+L4dCQrwshWdkvDVma1o4DDlsQmqlesHFv
	 4euSl1+T+8sf8+MHhfBw+3TLnS8bR7j3pCp49OfYs3VX5v2kOMaccPLmZ1LENrsVWr
	 7++H0DSrFgxqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA09C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986519357.11182.5855261963935405081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa533884acf6074249d890dc99c5c5572a92a50e735f1779fd57dbbf07c658da
Date: Sat, 14 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749865193
