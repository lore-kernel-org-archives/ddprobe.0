Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F20637F738
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788205834; cv=none; b=h6Ag4vOm3AZ90bze9JRA/oRr2u5M/Sn+wMRfBRodZxHeVtwtBrK6995EIMNR4gqJJs4Q/7DF/Gi7idetJamONIxIn7w7oLY6rswGyZHKQdD8NKWSzed+3my8NetljXUhWDhtDe8ADTHTA3OYbWgg6wlw/p2gaYApOPAIhe5j+eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788205834; c=relaxed/simple;
	bh=ic1sVpDN65r71C67AQ8foKOwHHz8awxB9rIJaz/yC+c=;
	h=To:Subject:From:Message-Id:Date; b=V8diW5ZDaOHUP20VOnKa0oOBo1rUi3cvJcV/f7aZHREfBKuHcummYMpcD94YpUR7J8jKjkEzyZuOVrzRjWuXx9pnEwpx2d5Di03UUmbqShs1pQyzzr+gBMXCpbM2MzoQ6qyVPkjqBhY7B00VuUJbmSBbEt1fZzCfei8zLCqZF1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrAYYMM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrAYYMM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF01C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788205833;
	bh=ic1sVpDN65r71C67AQ8foKOwHHz8awxB9rIJaz/yC+c=;
	h=To:Subject:From:Date:From;
	b=WrAYYMM0VnsnGc8KK2rr748qkeThd0jLaSDw5v/iTPGQ80zZGU0ALGKj6h1fUgzTl
	 LQ898VF8WAwcwDIe9c/q/CWVX1zZn9/jB8I7uGZoR8PBr80m7cE1B2B14BAERybBDf
	 MAJYcvTPe6EA16gwX10qj2MrzFQS2YrAS0rbgVMLXtpGWthdkXcswlZigmNOLusgD+
	 56iUpHIEVSvnT8BpYMOtYpMfxA2MjgmwkGPbK8bkbECImpKRL+dfTTuq0+fKzd23KW
	 4JgI5MTtsk4yrobcTh57iK+6uUzX7Ac/0yHVrkIgat5tIBJcHnRkrDM1SjRU2BtJHi
	 UHDAgh+xPPcKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7E4C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820583368.31342.9378199295021930013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0abc90af8fa1300a43f6b72c2a233eaa5af7507aa7419a712a0f680bda3b2c2
Date: Mon, 31 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788205833
