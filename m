Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB031A6812
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785000034; cv=none; b=CRBDMw31YHXWYGQzDIm+FpG/6iRBmk6LAFI5eL+SnNR9RduN6RAshEdfS+fdwZlpJBDHMwyZ+NS89W4noNmqErXFX+AhhXfAucXG+Me1sIZW6U1vLcLEcrMzVx+Y+62djGCdb04epP7F1gZRKMM/3jqR17l2axFMQdY+Q/394wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785000034; c=relaxed/simple;
	bh=jv7FxJH/MjVdocVQoGjudefHtzVMQ/wl7dofOVLHIe8=;
	h=To:Subject:From:Message-Id:Date; b=GNULc/yeQW+DwT775EbG3xntlZWGDM3jbluLSGOk3YM0TRTZpIWm0YdfQ/kPde5hUoTM/q6OdDbwzJv2yhUE+vVLOyq83ruJ8guhBiHSXnp/QENMfMKLKWiBt7a3LVR0+02On5r6VGXqPCyEVR4FSLCgxMtHFHpRnlUZLDKkQmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0yyJrWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0yyJrWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE74C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785000033;
	bh=jv7FxJH/MjVdocVQoGjudefHtzVMQ/wl7dofOVLHIe8=;
	h=To:Subject:From:Date:From;
	b=o0yyJrWHRoINg+E0w397QdY+GipHEwt0RtA6sd/D0FO88QFHJ0E3eme1y9PyrT8ea
	 x1MKmqU0ucR/WCE+dMtvzS6eMuEjm5kDiGXp2Qi3ZIbQJ7stUAhLWR+TPLTdKqS2wD
	 NtHJ15MnpnwRx+bIbgcTUzxo77LEP6Gr6lLblCN8lhNZn9PKKbrzoTchOxsmCoyoDO
	 sYkzvZMLlZ0/FaTzyshXkkkx6RexblaiRd6yNr6ReBWiHtdQsk7FRuzJgRGbf6fBWv
	 wskCrgUBDn15pxHxz+0GB+irPt7qbUGn2XCj2HOg3JU+OH2wPg0/JE7ERx/HQZDkOz
	 li6ocFEJQjWAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9596C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500003368.15466.9514885949749085400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0699feea0524a1ec60e088097e9193209c937d497b6ab6f7b663573284d50102
Date: Sat, 25 Jul 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785000033
