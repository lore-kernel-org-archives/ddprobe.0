Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1624E1A23B9
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764107575; cv=none; b=dJtDIqUbPttP+XAjPq0rhWrE+4Y5yaZQwMuuUYs+beZsbux8eGFgDWhA6wa9T7FhZuxPu3NbxKZmeNhzf1QahRrDYJ8hM52D9a7tMdnrl3p6NkSw8+xoVXDBGw6MmK68vzcXIel7YQOk7ASo74zttJZi1R5Z3ZdpgPn49fEoHTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764107575; c=relaxed/simple;
	bh=lTD5MDBo5fJL7SWvpe2CpTcueZH9sW1ZtHrzYE9Y2iI=;
	h=To:Subject:From:Message-Id:Date; b=mrBfW73UeiMTcgqLMh2mSxlTY230xOLgv2O6WKklcde3h9Yiq2GqOxbwSssrLIksACNotvnaOwOoytA9ScvIdAdzCzQYBKcR+ttxrWmxH2+rG86vSqk8yxZ+pPAYrfL1rzTkwBLfu2vdgaD52XnQjFDuyyzPINccVDPAu+akEpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IphPDK4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IphPDK4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A119BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764107574;
	bh=lTD5MDBo5fJL7SWvpe2CpTcueZH9sW1ZtHrzYE9Y2iI=;
	h=To:Subject:From:Date:From;
	b=IphPDK4YC9madcNLtDVEpQeboC1tfoN+r89L+hoohJoC+VlCrFKxAc5dvALNZ1spG
	 GfQO6/wvJkyOY1u/4/U+mhaRobG1iDpGFw7+faL2uJl4qnDxO7A6Z19dAGdDbOPMfA
	 mDXCjAgUvUA7BgKzF3lrNavTSPHVGNbzFbk/KLh0Zn6lsSfCoaW4LlrDcexoqUaSw4
	 qZC2+DyefR5tSKytZqsm9Cs7H43HIEDZuNxZN8De/ytGsXQTsSo6n5DTRYQR7j4elx
	 tiASuERH5Y0QHhkZXN2pH8DOv5FbMSB4jEgDu3pkr2AIYow6UG/ikUAn6fBb5/A24b
	 d0GfrvP+0eCvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB2D10366
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410757358.2064.6313116749116742392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ce3c921501a46a85624e192d2cc3ff9a07dffdb3dc8dc791c312faa4da93b1
Date: Tue, 25 Nov 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764107573
