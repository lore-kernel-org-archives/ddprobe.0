Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FC065C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719124943; cv=none; b=mgwEt6VXtj4JCX8Lxwou5RCGvhrKH8eOUZToc15HwPVkBCnDAEFLKmn5wuXVAGOn3of7EA1kCugNRTcQZ6o/lZa4RFzxEk5ZlEtmFujzqtdFwxT9cYVQHdrHacZ+4LPFJbm8Qmx0t+V9OJhPpNZjJe0b0ll19AeR8XZIlnj60bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719124943; c=relaxed/simple;
	bh=b8mbvQKIJo16s75DxPCM3y6+DltjCnyDvLA1ydwDpMY=;
	h=To:Subject:From:Message-Id:Date; b=dVr5pWr3l3vPLFlclqiXuQrBZPwjJhnlPgAAp1BeqjTAaDoufq617yy4qvse30mWpGXif59Ivl5noDlWSUrLVr3fR0F7NJszHaMklOdj1vH/8slKU6lpS6WhVBqPJQFfEyFVbTnmamQq6skGHWkPU79aZEIO/3n/ubq6fFCA8H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcYbKqF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcYbKqF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECBF5C32781
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719124943;
	bh=b8mbvQKIJo16s75DxPCM3y6+DltjCnyDvLA1ydwDpMY=;
	h=To:Subject:From:Date:From;
	b=EcYbKqF//ZQ3yzNIDdeDFjKuGXcsY/zkADrU3vLnFFK/mPSrevL3n1oeEsE1nedLD
	 lP3/M9SPIxgyd9RO1VniIdqI6zP0cjK3eDLz+X+R5cnriOFWZrp/b/taPhuAMdYGNI
	 huIRJECLCJTvKo/4TfRSR0aX9Y5XikOSbuS0vMIQF2S9E/SFx3exVmJztZZdC0Oxuw
	 JgZywKkhs+OVSHjoVi/63/767/CbuymKkzmRMh8DJHEvq9VEr1zoXuHYVfs0kZSYxa
	 gwd2Hu9D8CygXffFylnPGL4bkoFJtZ8vWupsZH5oOpRKfrU7vXt1ZPnP4fsCgIXABt
	 p6vpRnUBFGgYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF26EC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912494281.9844.11781122315026038782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d00c0b97ffc2b8345fa1e2db5937eb517dc2fd7566c23ce88ccbf5f803b88e9
Date: Sun, 23 Jun 2024 06:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719124942
