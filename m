Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45AB33D6E3
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778428834; cv=none; b=cXyx5B4GSNPOnE58FQRbHLIOs7R3hlCeKQK6WhTiYCccbwTySh0iDAhvAwhe8HiZOaFa2Yvd+zwXrZMfJSi5XhQ8u/tZIVCmwdy8dhLh4FrrTGCWw++CWe9SrvT68W0aOJx6E9QnTk0xi3PO2iV2maC2guBbP9IzINW5zQ9HcG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778428834; c=relaxed/simple;
	bh=eYumJRgvmDjej+OkjsFaWj7de6zhLb9NoNnRbjwkiT0=;
	h=To:Subject:From:Message-Id:Date; b=vE9iJJJ5RYs8S/uihCBKAFA5fSobGXe62iK0wTOoC+d8BBczFJjUYbRWPF3vASCgFpCiFpWeUJu56o2r8U2LU58xmzVaTbRMtM9qoT70oXon1W5yGikkVNJniNLuAIbf1guAsIjaEhQS3x/FteY9GaoyrJOkqx0I6Bge2Uwq1eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBsfM9vC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBsfM9vC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C724FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778428833;
	bh=eYumJRgvmDjej+OkjsFaWj7de6zhLb9NoNnRbjwkiT0=;
	h=To:Subject:From:Date:From;
	b=fBsfM9vCZRlpqgE70iaQTW+te/k1GiKNO8M1uEemaApk3wHQ8Q/S/YBh8iop4D9RE
	 Ifh0LdxmiVnwe0X7B68jvopjQIdDmYebyRH4Jy9IIMWjKjXHdFvKnaFIcQ7+w1ByoJ
	 YAa9RqI8JWSViNLkn6ps0dwH5odwdJrPz9fyb7tgKoRxFRoyWQpYBT2P0KXAu6luHv
	 USpEXKwbKkrKLlChlw+5zIjCZpj2OA+mh79KPrVn2dCqCeum4OZexmOt3BI1ym3nxK
	 xchsjs3HJ8QOZt7gIfOVDgZ0301m2s5bWAmg8ILizF0IHM75lss5PpA6WC182fXmmD
	 CFd3qw+wtgUHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76A9CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842883369.29411.8685237105600472915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688b5dc6405e186b390aea880fdf90c57d9b2ebe6e0d7c062f082f405e38764b
Date: Sun, 10 May 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778428833
