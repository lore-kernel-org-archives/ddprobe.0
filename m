Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFF633F591
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780267474; cv=none; b=Ki549Tlr6TPb+soTKTLSZ/hcB+x/b5xmXQOOMisrkdNobVr/p+98n3guUmENujqqbzsSE4g2H4aKqdV6m0CC6yuI+dVHWuaJOfpwwYx23Dd8u2YnOu7jE7gMaT89QUd9j6xyT59yOvOkIfV3Ql6l3fVdRasT2+OvbfEoCQhPiLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780267474; c=relaxed/simple;
	bh=paGX4kvVoo1TD5TMO1hLqxteUVFWmBn8qLpfiriV1N4=;
	h=To:Subject:From:Message-Id:Date; b=K6sonXWcr4bSfw6glY91xRQb0+yS2nNUKRpYsEKvONHgfjl4ZmEB1KHYxd0caW5keBF7QygIHVsi6Y4cFR+xCsmEgS2hYuaCKD4R2wWhFn4c+GkNXo2BcAe8qG46/Hk+iuDB/SIHRDYhgF91hu8KK2R66CVlpUSbZMP2Eav0MDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqBv3B71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqBv3B71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2E3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780267473;
	bh=paGX4kvVoo1TD5TMO1hLqxteUVFWmBn8qLpfiriV1N4=;
	h=To:Subject:From:Date:From;
	b=aqBv3B71gflxXwbTH+LrxKikFSIoY8Q0bTI5HvSxNl5DsVb3hhkAm6F3x7/+t4wVp
	 2VOvceicSnhszkJwA/+mNnSeeYJjfupfKcrCwl9Jlh9a3nCPm3kHIwyPmCOJst0tUT
	 2p9C0WYbfxEUkNlc5TKLfC2+BLyI3NCP1ExeO5VNy9+SzxeYbUAeWOsLDU9qC763vE
	 MdviZ1eGcOlSow0EIQOB6HGh04VJjohonpKS+244ZUhmqIxrPI5Hgb8k7SyUwmzbVL
	 6Z/BpDJm3vSbRfftx+Y9cy26b1DWNPUCWN1rwXgffcPuxnvLhsIIVjdPAk9qK5h8c9
	 Z/Yq6skOrlOLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CD5CD6E57
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026747369.12547.717025296406473321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7202716a8f065f7e340cfc7460e52ffe9535e8090c765745b14610c717c0e58
Date: Sun, 31 May 2026 22:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780267473
