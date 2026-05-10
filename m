Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188D9347C6
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778381434; cv=none; b=PrJAH49MroQ/jTK/uec7O+2KHxXd5kKleicqIL4H+ON52sfBGfvtjNJ6fTp/XdQjXnxbOppkRliLRDYf9OMwtIKpy3Y5o1ktP7SMhgNVHD9q9MOFh8n6yN78LTzCEp0SixYsbnlFt6FSpNkXP9OUB04ygEgtFt+wLsUDuyfo7lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778381434; c=relaxed/simple;
	bh=0LyyFWKSef93hwVIoyVWnphqivX5cQKLO8rjH+bu0u4=;
	h=To:Subject:From:Message-Id:Date; b=Y3CMCqGqMDI08+XZfqXKIIg0ywWCKi6DS2O+BEIdWXXbGm/ijkr+4Kj6MCSVDWpZegkTl9EM0uT7Fk8qMY1fhEGBNb3AGF8pd4hEuOrdovuHyO18/Hl8Z928HsHinLwAFKG1eDrGOH34z0F6tt/FoJLBq17kJ7LRs0STJ73yL7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2dZk8tC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2dZk8tC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF71C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778381433;
	bh=0LyyFWKSef93hwVIoyVWnphqivX5cQKLO8rjH+bu0u4=;
	h=To:Subject:From:Date:From;
	b=s2dZk8tCi7sPN2aUN5ERkcO29I1L5UdH3N6MYE79xvWI8YaWyvxtV7g9W0NHpqEsw
	 +eprPw1UqWjFmhUGbNG6W2qZ2aQDsLM/QKfV/nzEtCXnNmtiYBCAkirg00q4lwgGaD
	 SbiXy2T9aVSBDmZk6PxNmiROuYyj/SiD2QvAhl5BeqRgyxkBJ9T/Wf8tuDC4ZapKkL
	 mAf5L7j90XKXKGj7Qg7Q2n2471k/AHsK0dDwYB4p2nUYGhmyH3PUAgdsXsMeKjVM1F
	 eeyzzslfZG801W4nXBjfY0saRd/MShEIzQWPvHdrDE2ruNycJhJL3Mqhvo4OUsNXCa
	 pPSTlg3DIGq5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A983FCD343F
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838143368.25415.5117206176583838751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cddfc59a64b78787ffb91c6ca83e504090d570ad5a5b58b08b01c99c2a99fc2
Date: Sun, 10 May 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778381433
