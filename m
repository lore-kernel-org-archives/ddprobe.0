Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396D3748F
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740707934; cv=none; b=bfCt2ZTgosjz/aP/czQHFRak0U1jbCTjIZl8DNTuvCxaqW9gW8q9COD5rUyDGnpDa9uWQ5xvhmUY1Nknv4+TomhvFhzt1quLaMEIcfO56zo+Uc8h8FT6bNdQ8BbLm9PXtiWasHaQ7GNccm6/4OOO7582lUV1h5oqYcIoS2U8v4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740707934; c=relaxed/simple;
	bh=SScirWvrFxTcGeJWNO9YFdfsSg3Lqkchask8aM/8VEk=;
	h=To:Subject:From:Message-Id:Date; b=HZtO/syaF/zuzL28GR0UU1EkU3I9ti/jDmZSuj519dLwZ+YMMyIxlsHTQhXWVX1vakiLlSx5jhVpU2CRXbQ5ooAQWGOXYiehs6YH4NefHFJ4FBz8YEaKPyuAZWkVmxeQKPhplCidFFMN9L+jo3lCTQnLIpJsG43lkH3FHDmx2Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLO83SIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLO83SIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0D0C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740707933;
	bh=SScirWvrFxTcGeJWNO9YFdfsSg3Lqkchask8aM/8VEk=;
	h=To:Subject:From:Date:From;
	b=YLO83SIzFQnGMcsrWP5o5rETBY2KlO369pfoSooqZQ1bi0kvxD33neX39WwvdYExP
	 cfs6tZcissY3WbI2qAjzVgHkHkS0kn59gFo5d9kDwJ+2tnDFoggyTa4WX5EFSH4qQm
	 dqdV2qtb40x2Ktk4ZX+idW6TXJ4MizeEjs+XulHtEnAEBNynsobCAMXXqgKa8k/8Q2
	 xMulccYZItGbss8G96lz1/uuBZzWsKr5yQw7nyrcwaT5bLpMlHuWHVUxpTG5NSIyu1
	 yBl5WAYPq1LkCvxoYXkX5mFccPRueR2Fpj1GVmLQZi+6Aa6EBbvihtj53l1JlS4a0d
	 WEwfmowRWPXkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3B3C19F32
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 01:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174070793362.4323.5325920740153741736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2fc9c8cfc785e58cf46aa6d2d9f1f2c84a3aa03db6687e55473398ae419a1ba
Date: Fri, 28 Feb 2025 01:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740707933
