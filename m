Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6C6362130
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777274254; cv=none; b=Qx8s3l1Evgs8Da1bywAtuEvCEQFyzKOKfiBKQjyliSnRMHtoFDFs3sXDoSNmqntFXym6hQTaqkH1bOKUmDbdqDBKyuN4M+tfMIfSu4vDLqfxfFzLi2XkGPCcPIlDR6bbYMp7ilZ3ENj0bu5PwYm2LdKo9qLTEQySb53sgEihy+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777274254; c=relaxed/simple;
	bh=a5WV67ffKajQ4cRkwIKDIHxSKi8MBoBqrBU9Z5F6zyc=;
	h=To:Subject:From:Message-Id:Date; b=bRZquwOKcUiDPQbD0uRQZpY0XCbycw/dFFMN2L/hfFBwWXvcWfWMh5fNjjFS7CXgY9o22U+ZgZwcMNkL4mDYZVUhA+KczVhJdpx7Xt5o0N/BU9rx1aFansLb8f2vZN0/7SMy8yM1ah9wghBOm3xi6cjxbmdovnoRGPIju9QCP2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHj5LHIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHj5LHIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB49AC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777274253;
	bh=a5WV67ffKajQ4cRkwIKDIHxSKi8MBoBqrBU9Z5F6zyc=;
	h=To:Subject:From:Date:From;
	b=kHj5LHIBNChwZhnqM8e+xpDxxUE7KNk14fLwf1PJA7/CUvto7mTqpPu9FzZT/Q42U
	 mqrZos4LpkZhZ42bUviGe8gBz7P3aCFALzjYQesu0gCg/iZhGNi1u0mrUfuIq00Od6
	 QrUF3CIRig5T7wlTI5FwyCbHfa6V+scT+HaYVLoBNVcGASF0LbP+xyRtoBXCmeLFCP
	 4jPZwC+A2O6hM3N+O9OKp29RNiPr6yRZP9vherFK+pM52PFf8HkgGOHSBtm2pCd95Z
	 rEZJkLwzNiYHRcQ5z86VJuaXkl7lyNP/uT28gUVyVOn+xyNdM7qcSmhIw7R0EnsRqm
	 cHkop+cP/k+lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A54FF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727425368.31128.1159391199286899902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3c33271ae37ebe9b111bd61683a09f086ba5130d03dca16b1ddb1a53295684
Date: Mon, 27 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777274253
