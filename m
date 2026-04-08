Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60BA41760
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775651734; cv=none; b=Mfp7SkNY6Emw7w9Vx2x14IIETlLUdB5MT8uDIaFdhLS6BCNUSxrErE4qAvWx2d3hSgPCDE01nCse6JPKGjSf17gvjOGbsCMLTm7frPV2FMEu+eEPSf9LaikA8l3USYx+tH2v3N8HVXLjO6KMxRgkWSt07lhJc9awY2hrTU0aGxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775651734; c=relaxed/simple;
	bh=gJ5as5uquWPg+SndcrWJILlhgQYawCxhCJLqV8xoU0w=;
	h=To:Subject:From:Message-Id:Date; b=dWi+Z624D4LFRU6UjLMKh/p/SKCQEYwKVYDEIU6Wdvqwp0HEf68b1Za8fmShmkXPei6xjfZpiaTh8+icvRRncoV5tLxdenFwxaYrlhhmoa2gD4omdweIKGAsK9eZJh/4PSy7i18u9AijGR0mqfvH4A5BJE11NW07JKmuXdNa7t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qscHathv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qscHathv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F96C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775651733;
	bh=gJ5as5uquWPg+SndcrWJILlhgQYawCxhCJLqV8xoU0w=;
	h=To:Subject:From:Date:From;
	b=qscHathvBCBTBhiiHCJz3frD12/01A5g0l4+ypkhUm13L05RcxWzWz0gEJrCwAgUw
	 lE1RdgGU+Zmy7wGVrENHQ4+SVWMu27ug1SqzPCAw1/ET98wNNy8g5FwIQDY33Ci8rr
	 S93OXVxiGlkgGgCraRyd3px2VZXM69tSDTVmRMVBdI+52yXXFteUrVlwVxuLu/bBPi
	 61JVM3K9sSnvc9rufAncRWfsq5oFUQd14Uc3uiL3JcdaRGXDIVGYSlFfZ+DDi8l3ug
	 RNYJJUZrQ9sy/Pt9ucY7kVY9ZsNtp9TdoRwokDzNSmIM0OLefpOkZpdsWe3hfUiiHd
	 6JdcMwH9Tsjdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC371073CA8
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565173369.26680.45490273513378913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2144ac173f3a14a64d23f77b36d07db583b35e7abc57363ab16da779904d089
Date: Wed, 08 Apr 2026 12:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775651733
