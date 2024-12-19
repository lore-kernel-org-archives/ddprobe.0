Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B3D770E2
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734578154; cv=none; b=EGkRmSIgjjzDs8S0jGW5gQSrakECZEADaSMOqRWTFfJ6PNNDBBVfTkSCJoBmi19DhMITXi7aX3nDJfxPvXRC1RqeLHKRP2LAAfGimNfpPhAkeIV7jMW8vbdEnEtnqWjpPlwbWHVH2u5q1BYzugY7WrqMRI6RcSeKhUOLYzCzn+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734578154; c=relaxed/simple;
	bh=hQ284qpvGcIf4iCfUu+HUsqlI9JdfZxsWF7LRjCsMw8=;
	h=To:Subject:From:Message-Id:Date; b=a8UbzZ9vpiWx2dtDMfcBICWL0j1KCkIOab7s2UkKkmhzyx5AnxJiSOr6qN57hQABqtH5gdtz7Vd9WC5xxlPNzv2EPCwTVPTHBZcdJbjauieUfLU1s/sD0BSE2ejt+bd1sVFV4RgCg2T7zV5J9PmAC3XHwFQVmSb642Y6ZRP3UpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQkDl1OS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQkDl1OS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85B4C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734578153;
	bh=hQ284qpvGcIf4iCfUu+HUsqlI9JdfZxsWF7LRjCsMw8=;
	h=To:Subject:From:Date:From;
	b=VQkDl1OSGBP3gt45CoRkgUY0fgaQWCqlwgA3s9nfm52n2IQ4Xnw8SxobjSCNPguD0
	 T9yugXjBGhnqGSJj5cb6FPcrjsW8MQHHb6bYxfoGk4RzsRnIdySP12hvSDr+uRL6V4
	 KoaDZ7SZwP4tu161QSKexxwnk+8PdblL13LKQ/x0KEXBlTw1Q7YpUNwGAavVW6fsYe
	 ZEJTACTE1EvK7vJOzF57otl5g5NWW3b4gZzqXUq6JZG/SmwTS4UhevYiYlP5eKkFFL
	 YvW+X7cDNzn6bGd4ZKgtZ5HZH3cTsmv316fcjdhz+vGpB8yfTdQLohjs+9km3QksRc
	 ELspeLnS1MSCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB8E77188
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173457815359.25987.18050558227744445333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c638d19b2c38da3f00f43a88c06cf27f190b0f0dbf661596ac8e2be8ae0608b
Date: Thu, 19 Dec 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734578153
