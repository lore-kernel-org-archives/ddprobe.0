Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDB7947A
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 04:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715143343; cv=none; b=LCaU+UgAkfM043R9OGPju8fXEnPyEGas76C1KnpvZzLhdn9JrA6xeXPUASQY90SPdH9G2Mhn0E+ldfFSzFzUQvizLJhmSPES2pIHKWAAPCoV4PBLkgwgGHjl78ykpFW3pv9VnuY60Ft5CMwc91/63a26n/oX/rvZQKECmx8xFKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715143343; c=relaxed/simple;
	bh=HhlpXWIhf7MecNbEJeXGmLvs8b8G7O0VNJPEAqcgGkI=;
	h=To:Subject:From:Message-Id:Date; b=K7qV7hW6inPdzRw+imYUVYTZwaVMlQVwB6Vm/MMiXh3rjGAsOOHNH0vWX+oO/CgcbnELq261vxASFOeAROgTSLROG9PrPkU8hylkIU+HD5CJ/uOfBAxNNFcReU08jVDk7NAjXTzsEwZt4dtY24WMF1GH35NPdfxn1w/smpCyD58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZB+k/Gy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZB+k/Gy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E99B3C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715143342;
	bh=HhlpXWIhf7MecNbEJeXGmLvs8b8G7O0VNJPEAqcgGkI=;
	h=To:Subject:From:Date:From;
	b=NZB+k/GykmvlIXPQi01JlGAIuhzpREv0L+mfiAEy6fwoOyyNpr8lb9vqjbS+N4ZNt
	 9FPoz+jCbgefLJf6DuKMKD2gxCGdFkQZ6UmZVpTdX5rzPPDayCKUEIVlHEpUokJWFj
	 baOV6cDok+RPGA7ESCLX0dGarcSEIkQlctAOTSQWak1g75ohO1nlMN/w3PX43WrXne
	 Lw/STu/iKM05IMydhhXXb4HWXXnDIRxc3hRt9oqE/CrUrEgRsZl1bkNjHlzdjvE2Fj
	 xafBPBYz4sFr6o5aB6tzl9You1kUKiKQGlLHzDkOJL+srIteRK1B7boXSIikPv/TNY
	 Nfwv+5BSpTK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3414C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171514334282.7643.4536729687832632017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530c2b64efda4ec7a6a3204f2cccc839f5c19063994cd448217dedc6851e6caf
Date: Wed, 08 May 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715143342
