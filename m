Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2806234BA42
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778184454; cv=none; b=Oq/GnE6XjaU7s2I9rLxQEQc8CV1561FdzAnDioX9CP7ytBn/YLgRa3rbCQVAQgs8f0ox+IRMXJr0lYE9Sd9jTL31WFP9SnQh1eCGCCQRrSKWQXu7WWeImdCp3/Mk+CBkBfkF5URrL12dVcIIdhHOx35U+d3p4G1gyAZ9wXTTPjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778184454; c=relaxed/simple;
	bh=H5ZhpGMmBPa/iFEFVhidhGSUSTB88bbcFMCRhyIEg80=;
	h=To:Subject:From:Message-Id:Date; b=P6+BZu3sXvvdsYOnIhZUrXuCtiXO/WJtPC+qLq7jJC/0uIEliTsS362VFbU3+GhwOYhriNTpLJ/DN+OQgHBlmWJJlGzJSfLyB7srvL6CB2tdY//AEvW7yINcYGTV7OAH6g2kcgMRccVygLBRMWgXXQt3cXnATOwdc/WImw2A1+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wbhz9grM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wbhz9grM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEAEC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778184453;
	bh=H5ZhpGMmBPa/iFEFVhidhGSUSTB88bbcFMCRhyIEg80=;
	h=To:Subject:From:Date:From;
	b=Wbhz9grMSJRDv5/Ck8WougT24HJ1kBK8sIPGV6l3leaDOzzyAv8iDQpYpKoWsTRQL
	 WVNb7MU1qQsofmXGUaQrhuUii/06lD1bz0ioYumj7o7B/dXZmhQQfx82QtgajNMvHc
	 nSdUovXe4kFnwYaP9FZST9PYZ9fgr2x/8pLpjjh8vUncFVIn6zmvl8WpuKOGatoCBK
	 SK5W12gSOLc77pGCWwUHxx4jDgbYgcIKLPT4LVNej6WoO1r4/KczuPVDKnd06iCSMC
	 uD1DH8Wthu3EFoIRMf1hWYwqMcQdmnflSmZNdcclV3NFIl4vXwEKyE5mevw5dmObIs
	 iyjX91qN/DB2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB175CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818445369.14226.2100360069614005092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d664242185b398c1573b4163bc2a9ad9e577198641ffb86d62ff40fb748134d
Date: Thu, 07 May 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778184453
