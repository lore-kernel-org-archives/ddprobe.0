Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E1D1C697
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 04:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717130663; cv=none; b=l0YpKmknOJlTXJyQhEaC+xGg8Y2qWXzXAba54pMVsz2abDfUUIVfhQRYCcpcrA1z1+o4yhcbzC45pxVLPufKamb3Y7eqoMT+LjX3f7DuYLAZ2mWCYJqaFYszXYrA/8ppDBuCzcx78xnPu4tmaJ2d2altRRQBL475mlW4remH/T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717130663; c=relaxed/simple;
	bh=0jt07NbpIa8nrAr7gNAuE9ljLIGiyhDfA544ndNmcg8=;
	h=To:Subject:From:Message-Id:Date; b=mCsD/iYMppB/fUVXDUui2LQZjqtVNXg3msav16R5Uhr+41robfDKthoaMvAcWxhSDdjuPPFeBRAxyvnxCvYO+agU7fnhf15EUyh+c4OdAOBsE9NFXtEtSAfGryn++4CtbBMvT1Xi1m+JgbLyuZ6Cw6OzLdiVq7xHtmixv1eCn8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3C03ihd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3C03ihd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3F9C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 04:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717130662;
	bh=0jt07NbpIa8nrAr7gNAuE9ljLIGiyhDfA544ndNmcg8=;
	h=To:Subject:From:Date:From;
	b=K3C03ihdrVTj9goVHWFY66gwOE7TRntw/IoenAFGzlVFlhmdBzZYejFLEiV3/wbUm
	 N4wOM38/o1nXdJhkJy65PI+S6SmDI+T+QQkjY3ys2RGZmq9KHJvV56eDVXxSMlIxCi
	 oEQUzEtWCoLvl7BWmINrDQUcdLkF1efqyuo22vZhAfWk2yCyfdL8YhNXK/CipmWktr
	 25+sRKpzTplzejNh9tRK6XWsRfxUVFrF1GglJTCNWU+Su4RufY/xJC1BUI7DX+hjf+
	 XPKHfgDjvS+P5cFben5thG1cXUKjri8y/RXoZZBPBi/ami7WxBQ/eUl3q91FX1rcEO
	 vCgMjCnHBX+9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3270C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 04:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171713066277.30926.5232429210003372538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0a56117942b78d212fbce55af3cac8db8b7c739b2fa6e2f895dd4e72f03423
Date: Fri, 31 May 2024 04:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717130662
