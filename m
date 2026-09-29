Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD933D3323
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790646634; cv=none; b=AcoZdacTfR9Jqedb2T+6qlZWO/9zJpKfNeNH0k0tohAui7fwQUEAtHz1u1CfxmkaaD1jBZ2Qmd0Vnr6wxjZ2fTIGJ6SGGiFQrz4j2payRbO5PfMNJPzxYpRn7rEggXG6jUQ4E0pHjsgITIXHpegw0uryPqW/qi4LwOlyc1j3Tc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790646634; c=relaxed/simple;
	bh=RQ2/l3hulWARFNyN+hJUQBMgORF3MBsw8rQvK10+vJs=;
	h=To:Subject:From:Message-Id:Date; b=lVQYRI4UaufPsuT1ZXK6w9BW2NlMT1uulUk/RT2+rpvEXM1f4U/Pwg6arW/gi2GO2ic3eLw7LV3ZGOaMjXpmwCdxogF78oW8doTLEh73tuTyM5PpNTZ4rg35WGFOlni7ADwf47XFNsrGGhQiriInERdPhmoKiTRTHHeF66d7MZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1dpal+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1dpal+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3189C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790646633;
	bh=RQ2/l3hulWARFNyN+hJUQBMgORF3MBsw8rQvK10+vJs=;
	h=To:Subject:From:Date:From;
	b=b1dpal+V2iPvY3fMUbhdVrEOBAU707xcMGMrokBv5REGVlpA+qkYVJednV5TErO7V
	 zZdzh1aFJeTsQgNf6FFsd0kzNXW8uWWplXMOTkJCBRSY56LgG+RF4lNcyPD2e0tVCj
	 32Gi4m16J1paFfXjZ41ruadL0gdix4FBcCdPlv241r1QUNfiw9st8KxpmSzrjxrMl0
	 qXrhnZLgV42VNjuO8xyngPHIn206nKfvGS71EyksZrNqoRvHWoMJUjLXdjc3xVMSLG
	 Lso0OiLEb0TXq+UN/Qpp20Ny6Y8wYIlqoosaq+4BWh80g5AHLXT/uLAqAXkgSG00Lv
	 fvRJRddQZjeVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE29ACA5FAB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064663369.17592.8966205214161296013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aff83c67922dcbfed20bb540d7dfb543b1ade7384ff9dc508d3b4291524ea19
Date: Tue, 29 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790646633
