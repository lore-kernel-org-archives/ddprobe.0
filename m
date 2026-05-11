Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE84F26ADC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778464833; cv=none; b=eqmRNmpZ0V8nGau61CY9e++asC1ORDjvBJf8rc8gifMU9a2wHnlMIhoSNZZkckCJprCnH1+Wvec+cYsQFOSO2oNGwFt7uhSFoiMHB2i5Rtnsge922r49NcXacAOn3F84iZzyWI4Oa/ZZVcdFpdUEjY/xRjy2Ix46FQRlVG3r06k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778464833; c=relaxed/simple;
	bh=CMHiLCS6IxvjTAi0fA48iDQwPR7lXP1wuX9YpZLWgtY=;
	h=To:Subject:From:Message-Id:Date; b=DsLCPVrnBdGbTxjyfQL9Uyg7W2rkIMTDfqosGSHXS2SZPB89AMRDP2mElDAR8l1mB+QQ/LhgXeI186FM+IQ2y5dYH4R+vC7Tk61iKiHmAjTBUjgRE7MS33FtFf67xGNha1bepdj8bZ4hMfrPy8+Ak1NJmN0idQjCyUUYK8+fEro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmaBSkTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmaBSkTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CBAC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778464833;
	bh=CMHiLCS6IxvjTAi0fA48iDQwPR7lXP1wuX9YpZLWgtY=;
	h=To:Subject:From:Date:From;
	b=OmaBSkTqVVGlvg0wg/Pd/xletqpOtP5yXDizh/TORYtafky1NYKZTxukG14o78IpP
	 /vT5ToK8BqyJguX2awrQZcxZxoHH/PRAn+doulCN9rT3W/3XtGWhXVd4RzeN9EqNGP
	 AO18QIQEz5AClKMwMxAHDg4DKWQG0RwrUcu2FPvRtP/gxqlyaW5rGs8Gqjm7nRVniI
	 pXJ/JvHMAiOv39v3S9qaRstkUe2rDppBIXv2pGUa8BmT1R+4t7oalzVYfryMnXzAMD
	 qhvWypskHR12xJu9cMxwCy/ZeayJnmlfkRrKakFQuT547dM5mcfx9vYXmcnzcsZqPX
	 gKakxX9ffsvkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FA2CD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846483368.13166.6074000729143375675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c854803b35e564222b71be6a02550a40def4e5209c1580d994ee4688ad35e2
Date: Mon, 11 May 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778464833
