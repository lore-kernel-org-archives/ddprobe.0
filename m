Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C25248891
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758455394; cv=none; b=C/X4FdqmmaL4OpEyT2frQp9E9eq80W80OHxWove0PQQHTJWmoYhxDT40ginqqB0g8qRKS4Ht6r+JKz6mwnxtg/vUdRC7M/nwUdJ/55iud7XPDZV25oUlAkoaVNO3IX1XbL63ThoaXMlDyU0oD/7dHz7GwHfGTXxhhpO5HZxKk18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758455394; c=relaxed/simple;
	bh=/ZKHIHP7+wH3ST3B3k1s36X/HffomgicbIJMfQ3M+rw=;
	h=To:Subject:From:Message-Id:Date; b=TToDdL5peV9OBMCWQ/xX1yEO0/MMzFpc7DkPLFni7Ibq4Xrpd1t58RJjHQKH0WRq1m0fIR8xKt+dRSpC00ttP0dYNvdXRB9UWQYiSIbpZerELktz50zvL1ye/x/ZJQQgrs2PUkHG6eoav0culk2ga9HiKNjs1Njwv5ffxixsocs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H50ZRVXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H50ZRVXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB2DC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758455393;
	bh=/ZKHIHP7+wH3ST3B3k1s36X/HffomgicbIJMfQ3M+rw=;
	h=To:Subject:From:Date:From;
	b=H50ZRVXbd39RF1VeQQvzM3eAXftev6s/pn368TJa9VsHfN41ehRDIp3ADvHXkrDUL
	 fT8E5XM6M4J9SJxseJLjy60mthFctjz9y9LKqvn9pDCeeldv6yc3NpBPWOP3Tb9Tg8
	 hn9FnOm9yRu+nITKh08RleLGxlhrc8PoPM9hhJmEI+ffHctmcgP9T2IfIJfllD/ZNx
	 sJsvkaChj9poERdtBOTqHF+Sw3nLkCQrFc1boeMUzZi09kt35L34FquUpKMDyJuXRn
	 To0WyNj4HnBrD/qTi2klMb+5TNASjiFo4FKLhWeGyEGZtGEWxBvf13jinrAB+75Tbh
	 +OCKTbZUhK3Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAF7CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845539357.9539.5287638758903041588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6227aae3e0e672de66d55195546a78bdece38dfd2576b96ee816cc14b4897739
Date: Sun, 21 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758455393
