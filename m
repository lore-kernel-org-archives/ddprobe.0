Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F70023BF91
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761626394; cv=none; b=mMEkpMcrWbaWGjIKOoJ7OUw1UV2WRYLzhBOfnOc3UxrMZSRcXXwScGytPllW8Gaydx3lF9FVToiohLVtLCnZcrBTsrzl8pM4lfjKRJhdbWKqcmhZIPZ+nJ77JYj1Jy/qxtTicDsHVl+XYOy9HRuhRFe6GYGj4V6sFG8KN5XMtnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761626394; c=relaxed/simple;
	bh=FA9dxAZnS5Z6pbRWTg4Sod4ScLkLklLraQj16+ia6ck=;
	h=To:Subject:From:Message-Id:Date; b=O+xXPX4l1ivShbnN9DCTG8N3FxiKfzqD+67SsH7gz6BwQOUuHKi4WS65/C/obLYGE65CaZZ2mezAU/1TypTDGxZPjwJfGP29Z/5xgsHG2XPdYosO6lBeDEPYasY5e4hbrckEcbf7Haeyw0UFlEWQ/ib7EYiK0nBF0xOHG8bgMQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BF9Xw6zg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BF9Xw6zg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7328C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761626393;
	bh=FA9dxAZnS5Z6pbRWTg4Sod4ScLkLklLraQj16+ia6ck=;
	h=To:Subject:From:Date:From;
	b=BF9Xw6zga/5Kdv95cU3i/o2cHFP5QONDb4I/M2SxpfS5y44EGibfz/M0BojHS/s64
	 9b4O6GlsyaIrMA1Z0MunhdFdUd24nYkQi+sbMKtHypQhWCIx0PkGVSCmzuxWg4xGb6
	 qzHb3sPoTToVNY1dbEimq05toNG5I+0J5VFvUFryoGDblZ8Ch3sQxK0q1HvMQfdccf
	 3wEQEx/B4/v7SznAjVB/5L2h0yb2g+YPiE23/Js+dlDbCmF7yPWiiDrerUcSdMXTOm
	 L3joNSxa9AnLStRcocF5VPhtIVn6P8I49qbn09m/ojhq6TZrLSz6m0fQw1rChGURvS
	 wG+yf7CpDYSbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BBFCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162639359.29695.7911942620278142945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 061d99e75a91a40f987391c56bdcf62970cd2a2ac791d125f693c601aed28ff6
Date: Tue, 28 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761626393
