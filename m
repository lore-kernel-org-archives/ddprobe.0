Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390271B4F1F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775906254; cv=none; b=nKfIEuA2/3CKyhboUBC0TwKJEDg1MbJ6F9jWNQExYmwP63QY66NjvSTOwA6tTILUqm1X4duLUivJ/6kOfhnhaVBsHHW0NWtoJI+b9iNM6kZUnba7ExxUJVta/rHxlgU6jEU+/xVOpC2CH9rIZfwA4DQ+HJozP1NN6RSLbZigi7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775906254; c=relaxed/simple;
	bh=q9eB5t0C/EB6M0bo/AxaZJxxg4J0+JWPzkghbbQkaUI=;
	h=To:Subject:From:Message-Id:Date; b=HuhAyYGPP03+zc8//jAeldqIQra0sGYL7+U3Xh/qMBV8xtu4DVwjnBe5LTN0FFucdhVw6FXFcBTK+gMyuSxwEUy4A548R+hvTptKXC4c/i0CLLCsXI9msl9ScHMTNqrQnYva6V10OUmTegBXmNtFU4NtWiTcT0NMGEjZMXDLxQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UR8l1Rpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UR8l1Rpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C618BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775906253;
	bh=q9eB5t0C/EB6M0bo/AxaZJxxg4J0+JWPzkghbbQkaUI=;
	h=To:Subject:From:Date:From;
	b=UR8l1Rpuh8Ioo8gdHAwJ6ZpZeYe1zOy3XSZTuCob3sHkFgAWKHYWS8ZEA8+36sFz+
	 01JzirhLc8VEWdkBFSGLQYAKCJFlKqcicQ6vM9SZEjIdJPRh27PFnK7w/0I8yOuDlx
	 i0kboBqxpyVTFqZk/FpglDEAN+h3X3HLtq6wAp9U9jz7hASEfFu27O0bDTe2Fdhmfd
	 pP9OvmnHueW1vJ5sSRmxgSSjjptyPn7HucHhH47h0cEsOzXDqA1spUDADxTc9+l38z
	 tICmY1FKO4iFdufd23dYe/+/LcnIn3oPalT4RMpKAokalNi/l+Jvgdl4X6iETrkZ16
	 OxCmpPLRV+4wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4934F3ED4B
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590625368.5772.14147648848514783610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62806fc8a14e1d1c87563555d6f7ef8f53536f356de0b18a2b0782981fc3d294
Date: Sat, 11 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775906253
