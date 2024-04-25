Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8A828EF
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714006283; cv=none; b=AZK/reGPD9R0M5X3ls6pzuDKi1OdniXHhWWD2ueMT5ZAGI87pn8mWxUXhcnoJ/jxnWeOCyEtpP2TA6zwVdfBmR00FCLW66zjQzo9v1mGt0Ty45OLmYkPJy34J2/X836qcGEmOO93f+1kvqCChzxT/mqnsK7on7WVfNIYr4GWSpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714006283; c=relaxed/simple;
	bh=r/Fwgv+8UXhjPmTRYkeE9O4XwZpZPZRSVI+QCJAGXl4=;
	h=To:Subject:From:Message-Id:Date; b=os6Oaroyxo5ZwWNf6b78Qm7exV6IBCoA1E//agwKAXiAe2zPxUHOCM2BGv58zFT1zn7hqzL9d1oChHXEJpudh2OYxli5xv1Idpc6QrqENPB9NwrpPXCSP+WykKjNkzbfekkBMgJCYQ5vw9V+L0YmnndIvfQHVwb5KsWOQKTbRl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvIvkj5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvIvkj5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB862C113CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714006282;
	bh=r/Fwgv+8UXhjPmTRYkeE9O4XwZpZPZRSVI+QCJAGXl4=;
	h=To:Subject:From:Date:From;
	b=nvIvkj5VPlzcAt2LWVmEJMYBA6qohD6Gehu8Ct8sS0ghnfz1LhxS008lUCPcp8gyH
	 PI9SShCwLc8SwkRFiQvafV4RKvCbpVcmqqVYmc2AoCqj23WEmXJu/SzVcLIk2DkZJ8
	 GxYQxMBJoRPPpSHLckbvs+kBnObXbx7g7VAAMZ5k0NKepuPxSaHrixmZG+gLx9BvXL
	 6p7FFKA1vk5elgyBZ18wisMU+y3l5owMPaqE2CdsvQE2U2rSfRqzrqbJFGDrzPeSK3
	 ybeOvMB23qb4btk0vLZpXw3J4507xp1cgEK+9Bvl22QiDj7zmND0UPpcxZmqTuVqC7
	 zGIg8EYFpZmow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78FEC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:51:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171400628278.5119.1079984205784818154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c426e2ffad29031194663e3190c00315580cca7581efc1b0fe133457975489c5
Date: Thu, 25 Apr 2024 00:51:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714006282
