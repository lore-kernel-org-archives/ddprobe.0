Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108724400
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765426974; cv=none; b=U5aFx3pLVdmBbXnuBWxmbe2JAlMVPJtwDgtiSNiSVP5V8dVJ5iyIUm8DHAZb7J/n/nTWxMCuP2kXSkM8bRTsKzRRhaNpG+S3EcDRgNwMmEniYzRp5SwsNPbN2E3dIFgrWCkjanfAlCqHo7GctgOvdaaCcHOXD3zFu5PmkEroxXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765426974; c=relaxed/simple;
	bh=PC40pwl5bvQKKCosSyN48IdoiFmhMSWCu9GyPLWwmnM=;
	h=To:Subject:From:Message-Id:Date; b=anNtYSoeVvcDL/8b0XDtu1KG+e5TTNViYKUUx8W0+0bPrZdSU55xtfx3BUeAdua19iLCnknTSGh4JefOB4whBXGkVwsyIcmGmRoCFLv68YGRfWmSG7AxykqPiUPUe8peHIGEXs+iyuJnQrginbBebcG6D6ybuxua+wwWtbROUDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjwK5H1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjwK5H1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B2C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765426973;
	bh=PC40pwl5bvQKKCosSyN48IdoiFmhMSWCu9GyPLWwmnM=;
	h=To:Subject:From:Date:From;
	b=PjwK5H1roHN/5DHWg94KOfi41gLVeehmHMPQLYjc82/9jvHomkTajJxyNNohEkoyX
	 u/VJcs1IuqunK32cExrzKTFfaa5iZxA/QSmwz0MxYGTOh80e+9LW7JeNAQfz/1rCpN
	 iUIXghpkJ69Q5pcmzJ5fN7PIKOE3M/sAyNi6T1MRsc9Fb8olaYdX0H8gJ+//wo1Y3N
	 qWY4B+A+UyP7vb0QpwMBQ4P9eurhFt4rXN2cEF0YqYiDPpGWdbrvALcfUfwA+NpaSX
	 CyI9qYX7j7d/7dectVbXCCKP6SP7ITt4UHLTlX3I7zvtbIaJ1kcmPy+LPRyBjh+VLm
	 XGbpM0ukjb/Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95934D3E78D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542697360.27012.8238692958520639289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7026d48f81f31e07e4dc52f975d6bd313c1c24149bf7d7dc99e16a68d93c8cf
Date: Thu, 11 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765426973
