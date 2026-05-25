Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2297330FF36
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779742354; cv=none; b=ICa8pHePHGN20wgidqv3vlLZD/6RW5H4gi37iAOofKeXognd4etnLIqnWCK+Su1vRuh7cDT9b2w5dvgxXE3PKEoc86bdnKUj+z6zez8NedawWIswXxVAIQP16vOxKGKBzXFaQfl50RYvlUvre5CKH1aENBTg1BPBaLeJXbxm/wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779742354; c=relaxed/simple;
	bh=YKRj1DoYVIoi/0DVXYmp3fDH022g31iSoqQACK1s0mk=;
	h=To:Subject:From:Message-Id:Date; b=hgTdMkZmYvKTBxhuJ+eyuAgmS0Uy4h77VCvNEtATs/aOINKHYi2fe/0PMvxccb65r/KdS3FXgfVlPV3Wd0wQXRbrTiRoU4Xp9XQoSA2+QZ/IHTV7YQU4DUKbOtadoGxubWa0RbXR6SPjR7GdShJkhFedCYUwU0hK3Wgd7SspdmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBWyIGLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBWyIGLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D4CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779742353;
	bh=YKRj1DoYVIoi/0DVXYmp3fDH022g31iSoqQACK1s0mk=;
	h=To:Subject:From:Date:From;
	b=fBWyIGLBQOBqX7YqqKGtTiR70aRn9f/0RhwNAG2wDcvRtrUbqdY6I8VBFN6ilgXLb
	 LG6ybEiLTHmy4abBm6wL5MKGKLUaxKRu7VqmOT5V6qFkOE7i1mgWphYsjpmZMwICUV
	 MhBD3U1j3ggunquXAhHVaK1LFhELjZnML7/iTudPIUDuk41sce2CGdRlwA51x7fu7j
	 62OdR1I2bQw8+A3ZHS9nrSEk6/qNhBCPbOzuls/5XCFhEL9a4fhhAXymRUCH1EhZdf
	 kbxq2Yjhd6sX1IhLTzjNdsZD1lthAIaMD+5ZmQH3ZiCv86CKCncGji/hdctO1vWs4K
	 Af1czLkGCAJZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDF9CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974235368.14108.6752181595460172180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ccec459fc1c9b17ec7f3f4ac2323a2e004d63d64988b673dde5f95a437fc13
Date: Mon, 25 May 2026 20:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779742353
