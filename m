Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4292E23B61B
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766994234; cv=none; b=jbL3tt+cq1S323w8cC0B/T4Mn8iSQcODsZPT1w0stKkLd36BV1wTRdtfWb1TH0TXO4LmVgqnpnbNwbSF+q5YynY2iRg+Dk90thmtVdz0AKQcKo5hssccx3Z9DhD3KFFfdmccZqmWPDNAZ+C3wdS/8w2ojn5ta4dh99b3Lx0X1ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766994234; c=relaxed/simple;
	bh=tbRzyqyJn6Ycp7bV/rC3e5LgE0GoCN+hKsCtdXtjwQI=;
	h=To:Subject:From:Message-Id:Date; b=L4/bnDpmG9oaxEtUGZmhiDLoWUgWBhqGwtZs8h1Tau6ZvMI/cApgVhTG0M4QzFyyZC2cV619yGoDNMcea/yIPFe+pZCSy8z+RYLO7IpSuTzh0yS0//AwjQxFS0G390TvNLp2jCl36zv5thP6BOPqUdyoXSQ1irLkFxwq3MHskPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+a1eqDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+a1eqDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B562FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766994233;
	bh=tbRzyqyJn6Ycp7bV/rC3e5LgE0GoCN+hKsCtdXtjwQI=;
	h=To:Subject:From:Date:From;
	b=p+a1eqDOngNmuYYGqWzbWIZBTY3KSYXuWHC/vrjK6+f0qumZj0esHhIqJ3X2tDp3I
	 c9B4tMwzfRA55xj6a0AvOfmkQmCKDA+KSPN8tdHGmqVZZj/0nJzE411qJydPwIFjWF
	 /VDDaEVq3B6l+76qr39ODDTDMOhvykBCCXBqUEZURGYZx0cHvdl5Cd1YKE1wa5Ksh+
	 oY9VhG/jAJn5/rMzMWDyn4VGpGRlfB1NcRvSxvdSIHzgmN1mE0fhXD/VQQAbaIokKW
	 zuLnsimslbcc3mgxi8JLK1tP7i0NlVuRPq2kWGHLdWB5Wz9vDOIDp4yGPgzcZlBTQd
	 7z72lebpiIUGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1462D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699423358.8799.13277538187038459099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1599ee3b510a4ffe816feb3f168f1a77939b7c544cb18b5a3efc064214a7964
Date: Mon, 29 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766994233
