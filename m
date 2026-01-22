Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B7634104E
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769044434; cv=none; b=T4QUQtZxw7nJ7UXKnfncsvr2B5dWrMouHo76/R0tLlCLadb05MVf0Uy0XE3gv5P8xVKU3Z4cZDFLOuUonO2kE7i8Odrs15qduE4MlAE1akbV1RhYcpv1kGyQidlbZgwCEwJNUv0R1+XAfPmaYP+NzNyq5xxzjPzv3xAteZIIttE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769044434; c=relaxed/simple;
	bh=pGIhERPHs/XXfoT9BWP0xr0empZTvgbQly6pv+Cv0Xk=;
	h=To:Subject:From:Message-Id:Date; b=MgcYYK7Lx7Vni6OnCMaQwVm1Q5GF5jSoILcAm0GXefcdbkG5/Ua3RP+OO7bhHC7N05BpdlRywXakatbu8MK5EAwAaV6xzd/irgoIcl+2EwBa7Hz62vUfO/fjuQcBwEKCkiBWVgGB4RXqwpOHRaB6irY1lRyVcWIvJ/UYQX/ZXP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKvSLdjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKvSLdjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA90C116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769044433;
	bh=pGIhERPHs/XXfoT9BWP0xr0empZTvgbQly6pv+Cv0Xk=;
	h=To:Subject:From:Date:From;
	b=gKvSLdjcFUnvPr0dlq+iioMxnVfCYyv9XlUB5ZFSIfrbKo6ur0Be2UeVYiqpDq9/P
	 OXdjV2flG4k1/jnMti+uvsXDhFZ5mnFV7UyvQd1kNDcOMRGrCC5qOmk3dtxnHXuQir
	 3Oc/+XJErEnU1XnZYtyc7Svd9wzVgExZNvViD5wP6nt2nrP637hK2LDTx1GPh5QLgt
	 1lL74Lt35FyV7baHxdwykIH2wsTDi8aPLLMPdn2EZLyxY4v583hRhkIYuFT4az9kPZ
	 z2R6Ia8wbxpIh6mHwCTsai8+JocbfNdHkw0LRbyfOva0OZUzLnPIMPoL2BLy9PcyT0
	 9g8KIfd7K626g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6EFC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904443357.8408.2169141528427756750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda6f3d8f050ec223f2e368239a3854c9f0e141dad3f77aecf4320d40fc9906d
Date: Thu, 22 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769044433
