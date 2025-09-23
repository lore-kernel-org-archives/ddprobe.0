Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A0E21348
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758664794; cv=none; b=Ml9UdZMg78NtKOBLJ7tlNTANQxTVjMJrYNIFK//wLOSah7+zapP7nBrEvsj4vxg0CvNYlm89KijmRaw6UkFbVvVeq4Lx7kqXCEQ2BxUgRhdsM3sR58+3XjMtReAcValwDudFimy+OngZQdqSB/c36FjpZv3u2N5gteCPuY22CyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758664794; c=relaxed/simple;
	bh=SFlFNb0mwADRy+9ceKrUMcyRfggA0P8/8+XTzHwU9DE=;
	h=To:Subject:From:Message-Id:Date; b=RW/59+SOe6EjW7X9DFq5uh0qB/yl/oEg6Sq9m4kZ6e0i3H9xslMUeX8JEPJnlAULNa1jSW/BWDVc9PsjpbZTVPnH7dtLdY7/xF3xA7g8ocGNRBY/jWx+QAiUTQT0oxrwXWWeE+ZYICrok1Fk/B5vG6J5ZfGm2ZeXp7boDpYQamk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQP1qYpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQP1qYpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D8BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758664793;
	bh=SFlFNb0mwADRy+9ceKrUMcyRfggA0P8/8+XTzHwU9DE=;
	h=To:Subject:From:Date:From;
	b=dQP1qYpMNGvVKqgvQJOQnmoj9k87d5JVCVhajudVmw2t08wmb7VeHDpaZnzuIGYtQ
	 1Gd4swwOf3KWiLODthrXeXGnyIVsv5/H/Jsi0IfKs8Hb5UYbGS+aF/JWQT2F7HaUp+
	 /hEmLOxxTpUCmmyb/Cl/Wg4M2OruaDTKpDKVmQPSv4McHvcty0AXxws4InarEwqUQa
	 pIrYuJCdrBhM5FdvJYA6pGOscbiqbDlJjtLISwm1dovncs+UCviZk+plfMhVPCvtGh
	 LpKKeGvMHX3aPN/95vVOZ0C5sn95/hktehkvL1Y8R6p1lUZdpq8iVFlkRdw8klrQub
	 zwXW6XCAVe2Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA0CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866479358.25885.15767698867154172140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87a01b5eea8cef24682232e232949ac57f612564c3a58dc2d32c17b10aae960
Date: Tue, 23 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758664793
