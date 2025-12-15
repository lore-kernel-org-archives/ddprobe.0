Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2134813E41A
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765764174; cv=none; b=qnM64Chdon+rezAvoJfkfzV3tuKYfJCMiTJACsJqkhQdGgW4kInaOrS+lrlfu1ECr7GP8Yyg0+JH2KSnzip/K6RRDgxBVPQn1DWNfH4QELNnxScPVWs6p14lCm/2ll5/VUFBflpAvuyYnKhda/8XST7MyoQnN91jfozwKYPWLXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765764174; c=relaxed/simple;
	bh=f4oKRa9QXyrgSbKWuLPjdN2dpZWMbX4Tan9YvXX3eCk=;
	h=To:Subject:From:Message-Id:Date; b=KjGJodqlcQn6jmX8tIcfnTh533Ue2MCDNalGmsSy1yPhb+nWs9GNrnkFOBu3g7Y7Uxa3K8AZu74FcnbNnkPna2r28o7dgtYcbAcuSOyvbPevozaP4+pMM3mMpNizkjR9sjgLKu3KiI6EkpVdkv9QnP7NEVlY37lWMmPoP4G/0R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmGrQQrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmGrQQrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF19CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765764173;
	bh=f4oKRa9QXyrgSbKWuLPjdN2dpZWMbX4Tan9YvXX3eCk=;
	h=To:Subject:From:Date:From;
	b=bmGrQQrGXtHRiReB+pE5BOxI+C85euLWdlVw47H62Llehj9XW43sHCsUVHOMCNk9F
	 s98oFxf6lbneTLCnm2q68j0O2CKDI8O7Kl5zPqA4+NDxWr2nP+LwEYAaeS8m5rrLy+
	 n824GL2yxjKqozGUj9etqAHBgCDG4p6BPOLboeE+/cIWv6gBR4l3uoxl4Nliq4ZFCY
	 fsUy4dlgT9LM3FWpgFcM6gtgx6+Zv5XLgh9Dr6e8O1dyuXUehg1F8atEtT3Rsi37bj
	 4dD7UYniRICtGnBSTlgz9Rx5UFweWFf4U4XTL2ftqGgXIAO1wh8CSpBwSy2yjlx6NE
	 bgYp9yTesjHRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD4FD5B16D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576417358.24097.12207331882687331093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11389debb9b9bfbc0a46cc3d5d35ccd7428af25edf0907fee83589ef433fb181
Date: Mon, 15 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765764173
