Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248BB221F39
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765659174; cv=none; b=tGpKwklZq9k8+b0OauidbSgaLQGcN2KJnA8R07iL/28RDeWlZWJFeQfooKH9hBX1F31NYIt08brw3Os2PzF556E/bYg77OOA/9czdr2Qif8vJMPTOHJQAcTdrU5AWxuf0jjVexddIWpn0+fdKBjRmMx06weyPspnHOzW16LlOP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765659174; c=relaxed/simple;
	bh=fiVNC4887+qYBg4F0zrZ8TzLHUsyI+DVlpsbXsJRTLU=;
	h=To:Subject:From:Message-Id:Date; b=mSWepvl+UmoSj6mj6GW/1OjjeJ9VwDt12ek74HWfBppeTySC81IZdjKyLl13HwVaXHc/ZvRDXcuejSD7y1V5MnYXQmS4TYxyHJkgtvZLvFUOz1lUGg8tPP3GWCH8SxpXxb20nZJWIP2kqF23pDfRxlUSeuRqZnwOd1XNVz5q0uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBmCtCOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBmCtCOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A27C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765659173;
	bh=fiVNC4887+qYBg4F0zrZ8TzLHUsyI+DVlpsbXsJRTLU=;
	h=To:Subject:From:Date:From;
	b=sBmCtCOoRqwuhX1dlR5xnTtNmM7vrBst/YbjLQwN9YLp5c32g+hR8XJICsPrCErjn
	 4gc/spWc0OtY7Llc5tOSrlTPRQ5J2qPnpRxiyeS4VrsL0s/JhBWx4V0dh9QEGDFg35
	 OC7Zs2d7m947RGO3qH+PZOjTis+ScHifhQOp4pUKoS8Rpma6wM205MaJbb1y7KXf/O
	 OPSBiCYYD0xJzYzphD/liAxnYjEUqiYJDxUCGcajiNCX5n87echgnnYfZ2Xfny9LqJ
	 b/SHEfvafeR8r1+g5Bc8OMR5vbFNpGycuXAkCLpluySC0FrDgg/Ib8e33pCfvmHL98
	 K+dpF966Wfihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E83D5B161
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565917358.27100.17296336282170858009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893f9d3eca93ee9e7e1a195a7e4d642cf9362f7d071ba4b7813681fb128ced5d
Date: Sat, 13 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765659173
