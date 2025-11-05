Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE8233F8D8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762370994; cv=none; b=hOIi3MJ+gXS1k6mga2fq2umF/hEdbIbUdcnK9eppKJ5vkwfwjA1FDBnaL4xxHHWSH6mrzDcuST3KVJjiRCx8Ycg5CtXaklnDetnYiltnDPyV3N4I7xHdsBMNUHfSKXRq/0ZD11+UY6mksC5yZrSQ4YVFG9Sfbz5hdcP8qvusfzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762370994; c=relaxed/simple;
	bh=cJdboBSA6XiwFwcJXt+ZJhmPG+f9m2Timt2iNzqDhJo=;
	h=To:Subject:From:Message-Id:Date; b=lxVH8cNtxsJdk+mhthXS+7K9OJfiVJV7lRyWs/IJNeLwDU2PMg6UvtXXEE27svGD+Zxi0eFOYDBZlJ0QS24CcjNZdpKgIQNu4fRQDkzcbVx/HqKu1h59BbC1xpMMTtTtZvXlB/HF78+jPcwNV33ZMmuR+6KW+cHFx8CVHLFcUIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3IEEFEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3IEEFEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1412C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762370993;
	bh=cJdboBSA6XiwFwcJXt+ZJhmPG+f9m2Timt2iNzqDhJo=;
	h=To:Subject:From:Date:From;
	b=f3IEEFEH+xnmsO8D5atNBcjz87sqxRVg1pjE0C4vPwcI2UWKe+Va85CpRfA+oMcHJ
	 1JtIJxAiFVSVa6gJKRRy0vKBCSB8RbCB0GPRd61X+jccYuvMUVS+Fx2j8A5v2jeBTh
	 IJc3U8biDCfJ1P6SFtt61j3mJNA4IU0TR6xqa9d2/FzYfkxVzsDiUUwsHNI4R++eOO
	 QMOy8BqIzht7Q7gKasPmerePvat61skjvWxvpeARfozHihB+QKok1SaChTZ6ugty8G
	 I6sWxstt26+VG647onyRgWNTiYFn+vmKs1+9mCV8LOS30qX8XGijuQ1ViXP3zYD3Ym
	 ICrRPimzsFr/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93614CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237099359.32278.8729759117825471022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5361e7d16b1458d21645a39db382c858fb0cc651f3ebab551223470efe4ef3a
Date: Wed, 05 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762370993
