Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440B3342173
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782150394; cv=none; b=B1TC15WXwdJsW+nBN0jKXcAvjc+OhqZl3dWzLcbMwRZXGqb/IOmbYQ4DmF5aJ578fJ7jwVzwXZWtJjvYOxVR0MxrgHh+WQCpAlI9N3tXMX1xYorsqo3TNxRuCTGtcyjYavkNFZUGq7c8FBwKOnbEBstz2OzC+PRFQboRAygu3aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782150394; c=relaxed/simple;
	bh=cBfYvftD+yraTsm94XFJsKSkBpfhotPfDv+uJYgiwvc=;
	h=To:Subject:From:Message-Id:Date; b=OMJ2cPge96XXTUEHJ4seNSzgsnAivDls1pdBCnQj7r5jLRtYXFpyll4eDzY7gWrG9Ql7qE3hq9Ck3QoyUtFVpRHdTIRxGrhROMBDSKzrNfhh6cQi/mbnYx4yQk+KRHnfHMdPtBrSxEL/elAMMn4GufW0Q/WBs2kaNGTnoXep9Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZXW34PE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZXW34PE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA178C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782150393;
	bh=cBfYvftD+yraTsm94XFJsKSkBpfhotPfDv+uJYgiwvc=;
	h=To:Subject:From:Date:From;
	b=BZXW34PEMLn09o6nrWoycRAN7CZFwiM1C6v93/3xGqRVcA4cGCZeMKSVmSrXzVRO7
	 iMPn/LXHxd6lx5K6yIx7QhaIoI0JFU+cH4hPiCfJZr80wLTRFJuUJjxllHCMI1Xfp5
	 BLvsroURIcCW8JSQtZjHV09Voi31Iv9atgYBkmjq7ouaSzeoITXeEXTqQkhY8rq8HU
	 Jjja44lJO7ykoaottxw//3PkXOileCgMqJEjd7GfCF0dYXkYFNnxG/YF9SlZRHFoNZ
	 QHDhI1iHyJgF8ivAJtqo2oSiETgBOVanwfxFPuEAyWkAr6diuMk5U71Ef0qbmpqtnm
	 jg9j7n4vEFrzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B174CCDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215039369.7832.16589967609680491826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b5695d330f1979286e250ea973f0ee3639023e5d8929d52cc99146b583ba09
Date: Mon, 22 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782150393
