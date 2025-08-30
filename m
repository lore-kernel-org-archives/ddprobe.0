Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329A51DE8AE
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756547394; cv=none; b=bS8YipNNzBLPNWmM4LO4TicS9zHMq+5VoHAQCNeObuBJys9WMkVZb6LKpSJXd6NlfM8E/0Pph4em8w4YX6vpfn32orKn7/wDHJkE0imXEmAtr+1Y75vbA9b+udLDF8gE6q28WycC5a5IDtIb1iSKT4vknZN0k4akUhcNfKcB24Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756547394; c=relaxed/simple;
	bh=EvsrZrXkYXvvj+WRWeDF0nxW7SkX1ZqDnKZDY5O2nIw=;
	h=To:Subject:From:Message-Id:Date; b=osf5JeGrp1EgX1p3j7rI4WHxjjJPoOsrGKcm+OwTJN6D5IJWpCAMoB7yFDJLMPORoZ3fveTlkEa98YaNQkbnalYx17ohW3FRDl82+oa0HLYDA2FCtjDNzeSkyouD7idXvFaIGvKMesdMvvrIk4LhZySxdOQf6utVi9gOGtIsyZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrA5OaxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrA5OaxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A585FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756547393;
	bh=EvsrZrXkYXvvj+WRWeDF0nxW7SkX1ZqDnKZDY5O2nIw=;
	h=To:Subject:From:Date:From;
	b=JrA5OaxCvjWE+nm77HF5d3LHPI/tKVyEzojYBXwHRz3SmhcbP1ygNTxiFNWt4Wu00
	 2Qmtsxg8NtBOijf2qeBfxs8Hkf+P+tskY9iM5iTs8MfD/5M8jt8Csas8JGDjLuu3i9
	 UqeJlMfPxdqTEc3QAbzwagpPJuS79WZybUllGnn9yNXBAwX0lQm3WvFl415QP5CCPC
	 2WGKAU9+naCHqW2dhhaPcu4hiasuoKqkoj0KmU4FwpeMMonMLe2LkqUiP9qDXpYRSd
	 BoxyLeFt246XKL8KXWDkX+QX+bG54iRJUNZQNwfcnVXV9v1n1UioiHOdg+Ck5ToP14
	 xwNbs53zkAfYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914BCCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654739357.3530.14920042578190539218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06d012fb5b8583e726d9391d65eee42d9ffa30c0fee2c6d8fa49fda695388d4
Date: Sat, 30 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756547393
