Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBBF3254AE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768952034; cv=none; b=JEmpMGkuqDbXHv7OYYojg2p2DapdKXplSIBcGfQ3kWQvb5EctZoqBP2qcNCkNOPgpeOJyhWtzsUHhrWKiC7jyUKE0uqIZ6W9aUBbLhjmzSbFgXh8C1v9phqYaCsx2cqp+eyX3xduHv8NqWMg9hCOrgi0qbaCNGtCxmoBn6Uhv+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768952034; c=relaxed/simple;
	bh=50/cNBFQLofv45cAf+yLjadcpg8Y8fF82STrSzcBSoU=;
	h=To:Subject:From:Message-Id:Date; b=GIB/+/sw7MsG4lNjegcp8koMcZyvvshhooYslxTfPW8ze4uLh+RH3wTr4oI9OIzAgRr9lNX2lo0T3zuHAZ5q1SXGeY0e3VkNIoyjhUShG+PF13eYA7roucvfbQFTEAnFcTgwoiSeJtkxClk0fptiDHSWM/k5NsDNBRbSJJr+58I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgG+G+lU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgG+G+lU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13EAC19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768952033;
	bh=50/cNBFQLofv45cAf+yLjadcpg8Y8fF82STrSzcBSoU=;
	h=To:Subject:From:Date:From;
	b=GgG+G+lUjUL3DBgbZSMJIx3mthOAkzDyWIH03c7dCIk0kRrJhQblAjGlgnxmXWmf4
	 mIpKmj/eh5p4aAWZhJCdEOC5WeKwvRVVcg+QR2cB9tqzYSYEbsWv3Msks2EDy25h62
	 BLQcAB1o46L6Rh9CoWqOzHhRmBINvf1n5v/2EJrt/CFjCTwHmh2YM5+GGox1gfowRe
	 dqPJ3B2UEGD9/00jcqWACa6A4ueWbYJK20KWgOGLkjFkKBibN78wvY/kSl4kdvbdAf
	 B0DENb6VR1ZF1437eU0AwHc6C+grlT00CYbZBhrtox/bt7CUGbma739hbw4C8cwPbB
	 O2/9Tb9Ni5ptg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E4D262AD
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895203359.25842.2004307741505412763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dcdcfa13503a1f51cdde6cdb5fb93e7d36c0e223e74e172de0d36380f1a7423
Date: Tue, 20 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768952033
