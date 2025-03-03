Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB79CAD27
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740994133; cv=none; b=uL0Aq51e2YDCuQzY/uO1puKEkXSNdGcke8i+0EvLDYhv56v9CHEzfbLYMN3WKhCPLWXgy5dWsmEJQok+pHft2/ZYoo8Nvf2NFWcheDMQjBd96esSznM46h+BEacVIMthKPjsZI89SwFdsBSBUVWyL2LUZ0hxsImSBoVdTnsw6b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740994133; c=relaxed/simple;
	bh=IEYMcMkLfcpue8aT13r1edEDPqVBWhHonksJ48mlDIQ=;
	h=To:Subject:From:Message-Id:Date; b=Y4AEnPaIhboYJBOijKtWTdLTdxez0t80LWD3ZPWDGTNyQ4hX7OgyJAD6Jo/8b+6PuGmMWKBYlSnkt0BaoqegXjW18zgn7TI30cZ+uHrhl1MBp0p8Q5/ITsj+V5R4jZxAfDGZdU3/kpDtP+dbL+IOmmlBQcpzCx+Z0wQHdK53DJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmIsjSOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmIsjSOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F79C4CEE5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740994133;
	bh=IEYMcMkLfcpue8aT13r1edEDPqVBWhHonksJ48mlDIQ=;
	h=To:Subject:From:Date:From;
	b=XmIsjSOpne27iYb37aN2g4Qu97GE096UBG2yNw0LbNNiQI/RxSz6nBuie+qcW/WIh
	 CAQFmM3LwHJ5ZCKBQa6RBzfWLS7VfW6yf4JSvzsg9FPyCc6fNh72c5cKsr9AB0xyos
	 jHBDQfuVVyR3tGC/3FAR6nVcWOH/pScvCPqLxULV/benI2tgISpgtf7WVtE6/SH6rD
	 a6GDcIuJS+sEwE2eKYYuignOZF3XosYs7zc9CGd94zc/hLuGnIoACgIi2wOY2AGYRz
	 ZzGA+MMPH88jxsH7+EZpBWsdXts81+ro5BCI7VZhyWbWNwmUDPiDRro0XygA71DwXz
	 li+OX0yZHICYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994E1C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174099413362.21884.3129693250220315261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d69223401531678f763fa4a9347541fbe5d45865843a35f9e2c6e95e644e6d
Date: Mon, 03 Mar 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740994133
