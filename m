Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E5119E97B
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773122694; cv=none; b=GvL0hE/EmOmAP/BfHwJQzR9xipkrobNgxnVcAZXsTjYIqZ5hil4sycmaYwXB3zd28LBeZG7lpgnO0XbHCGr9M6gZwFz41fBCub9jVCL6W4qzdSKNHmJEgt1MlKBw4amxoFqGjYzER+grmpdS6Q9Bh2emmj7NQ8TG/tKZ4Sp/d9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773122694; c=relaxed/simple;
	bh=SNIyGZFOSQBNkL5kEy0qFEHdyLnI1tbT/uqxMmuDWCA=;
	h=To:Subject:From:Message-Id:Date; b=jyuOorBjMC9DVxn5YnKEbRLRzvscNG/WSAd+jRzkQ/XhoDmvf9GumtXvHUEhxEHBsHGGCv924FdZam8SiWBVBKFIbmdS+kFtbcRcOMM8HhTgy4M+YdSBYOx1b4cE6+bhbQqbg1HIQMJC6G9rNRdRpHhOx/96QcZgQGdEOmLHdWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qa1jXiNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qa1jXiNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A278CC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773122693;
	bh=SNIyGZFOSQBNkL5kEy0qFEHdyLnI1tbT/uqxMmuDWCA=;
	h=To:Subject:From:Date:From;
	b=qa1jXiNbJ17//sWC9PYQnrxHYU8fXCVtPvseHX3InOBe9/EcqHDNRYhRKDovimTp0
	 3xlBNsrxqi4jxALbMajOKMjqiFIEroHgkY4Cvhgr0aESsGCNQoPPPo1Pih4/2n/fBr
	 rlnlQn+fMcV5g3880PwnEOVRyCz/X3OBtMoAcE4uYnc97yDdjSePElJ+wsKvK+iSfP
	 rAVeNdIHdWvZy1lmxjwBmy6eCLs0W9TSTrKCWKx4C2R59VB9PISVigO9Sn4p/zgT/X
	 UDrCzQkxh01M8N5n286ofiB52bcKHfilBRtcEn9Nc6F+QLqrT+fNQsJwCMFk/X7gRX
	 euzQJC6oPQ5mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9257EFCC9CA
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312269359.28685.8629974287936041084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea0f4af2562878f06698430fd38671677ce1a53fe51d1a34d1b34b189615dda
Date: Tue, 10 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773122693
