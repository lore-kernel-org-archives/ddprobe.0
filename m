Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A2F29AB02
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771358694; cv=none; b=ocX8mdpvUycCsyv+WD8nZnnEgB80ajuQ0MmTGKESrU2umjJB31OyCbqBYIKydwKyTG7fWJSw/ok8a7PkBb+a2i6ZcKyY/rfNjFTif72QcJAcGjo91FtTyyh485+w7H0aKis5hmk9Fy76yPxAiN3N9LAwTdKDZZrRtIWztHPgbK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771358694; c=relaxed/simple;
	bh=ixF/GDhmIvzOy1jdyjnBwV1K8nv4rvZHFnCnxy4DtDQ=;
	h=To:Subject:From:Message-Id:Date; b=tvj/4BQ/eKKaoQCThxdawipI5zfBiDk9Nas3KUUp2yXkE+uymHjGFyTmeyZND380aTRQ4FP12bo8uYph3ZvzBF7s7FPGi0uq1XBCHg/1Oss6u2pCXG5Y/Qov0igoADD9PgWNbOR8Wor+umjtOP1e5oTionZun+qbUZ7T0piuEMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POdzmBJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POdzmBJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A820EC19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771358693;
	bh=ixF/GDhmIvzOy1jdyjnBwV1K8nv4rvZHFnCnxy4DtDQ=;
	h=To:Subject:From:Date:From;
	b=POdzmBJq8Ja/7sRaNIX6LhCcBAur1NWQXaPkxPhNDP7IapABkYpxVqUGj6Km4zPiP
	 gA7G3Fw9tAlfGYLkvM5ERc1X+avWHELOcsPxFvhjj6zuW6BgP/vuXz5+iUUVCkNHFt
	 UJP2BIR+sMM1Qxuk/xI65qodZd1FGO8OWMbIu0PUxXuOd/auRtRlXnWoFgUROk5/ww
	 ywdFlChcxbzho/2cQSxNMQkre7r9ySvFBdXQAbEAqcxeXErrdHGeOM5GpZFa4smQ8H
	 RXwlBVfU43tqZzZ8mQGYpbDUNkPPIeYWrbPvx59J3yhrmaz8H2JMIYDUGqh51VCs22
	 xuzDLI5RWCrZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96201E9A03C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135869360.2689.11384477309542643403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1380cf8f06eee7f424bfe80b8356e80794a9f0510772daf82835f31f1a3eb6
Date: Tue, 17 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771358693
