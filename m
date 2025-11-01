Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37A422127B
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761959394; cv=none; b=igxI3NWYqIDsFSNKgRfSEsYR+V21mW280hmVF9kOskNW+Bp8geKfgnaOJT2oGqGRIyg7m3qoFbbqHEyRAZBSNO1YauMTCJiydS2XOV/DC9kaE+SAshzVX1KkLlKw+a32d53P3X5DH39AG9mkFxIG/koGLUFl7ua2Mp5ULiOMv1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761959394; c=relaxed/simple;
	bh=TYsJbdCC0ggL+CUHAIpTChxCn9s8Qqvipx2IYKBmm+s=;
	h=To:Subject:From:Message-Id:Date; b=fCrtrwPDYl5V4tAyZQkbD5Yv4Toneam0maRNvmDv/SdWEWJb71MMRVH/qFGNQmkM6AT2cCHXeCHEYoWmLvNaHomIXqX++WBhVZO8xWXEQuI70sjr+1+8iLODP2C/8DWIJPEOLsCJuCTvDVl6dqvI8LPtvtcMLROXqQ8EZjT7Peo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTkU8geH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTkU8geH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF5EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761959393;
	bh=TYsJbdCC0ggL+CUHAIpTChxCn9s8Qqvipx2IYKBmm+s=;
	h=To:Subject:From:Date:From;
	b=MTkU8geHdamlEzWTAEWGvxTxT7qjZv7KTT39ys1w67f5lCSkwHjydFOeTxM32CVug
	 Ya663+KCLS8NLf9q0+PdhhtgK6c3aQxi1N1OGENNS4mTg24T5Z705MSlcCyKA3anUP
	 sSCOupOg0TQmlwps69XHk0xUYqTn83FEd8pS5h+zIlvNdHKS9zSvjctIe78YurvILf
	 rvr4VxBVFkxZPWaO8lT2NOYpNLgq0hb/b+CL9m2arlG26vcH428mNJp0SptTDoEtJP
	 jAmvLDqTmmzQ6YZn03ATP5cPvfKzMTw3NAXvL9koPZoYTGfRg9C+25scdOaHR9EnRQ
	 0gunaqC4drzxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952FCCCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195939358.27207.17559335838512285818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1c7afce1e244883ca30541797f42880e97cbb1ff5ddb2e430b56d9a7a9a852
Date: Sat, 01 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761959393
