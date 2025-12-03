Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA008634F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764721374; cv=none; b=PpNbGIYRAkPsJiCOj/YwNGwO7C48PEKXNra/+ilioci1JKMY9Ljbc7RHwcaAuYtxXBtvKfxT826fY48qbH6GPmwIjU0KW3gOmWsAURabXD73fATABVB+a66yuzyiXMwZuudChNAoirJCxHPvCbUOgJAcA4R5cRrwB4P5ZStjYFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764721374; c=relaxed/simple;
	bh=uiDVZgeC+VAMfBvYuu6r/oS6aMOlNPk4FhmKcTRF4ms=;
	h=To:Subject:From:Message-Id:Date; b=gV8uxAJ9EWrkllpX+/S+q+v5jyNqwo1GsjbsSDC8AxuW0HNpP9xHaVvbJBW5v26Ou1479JTo+77/cZ7CeMMcYfej07ETHUvs1j8Mj2sKbs0DaPJZbRvD1GABIMLURn2hXNaqylEMlrCeK+8iACK3dG69nQ9iqqqzXpySD56WTDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vhdqm/OI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vhdqm/OI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF202C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764721373;
	bh=uiDVZgeC+VAMfBvYuu6r/oS6aMOlNPk4FhmKcTRF4ms=;
	h=To:Subject:From:Date:From;
	b=Vhdqm/OIwtk7ZVbbjGKJ1+Tx4Rs5w2kqmVtq2j5737gcqrVlmvfTlZSXvA/rZSUxB
	 uCzdbTVwfBbrn9erEQOFKNHliDD+QyzEac6cjWrO9Ka4QXKJEP+P6P+36/ZowzBNKE
	 f9N1uF34ppL81YZqKfQZzC2pAMdZ/x5Ee8u1TXtRyor3vazT9eBWdzSqEgikBsXLF0
	 BEhjgKafMsSp+LJjnPYYq5xkLsJaB6Gpz2V9+cH7Y88vZLzp3ODo0XxrUuo/R/5GNj
	 rTnBebsY/HJblBpVFVqrdDTmwdARXAGbKrqa0RECDxrA+7cWUEkYCEDkCEID9JLYrM
	 qTvM2S7TmQ86g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ED8D12689
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472137359.21973.9077184643299462643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f59d8320698930df83e0dc0ac5725b270dd8a3ef836d32cb88ab98ff77e5626d
Date: Wed, 03 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764721373
