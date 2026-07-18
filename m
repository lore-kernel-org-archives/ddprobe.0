Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE1C126C02
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784401114; cv=none; b=hXAF6eLU/NrV1L1ycPDgZTSq5rZ3Rp8sk1M8xRlQe4pPwXqFvyewhGSHrTpJnx5fhwVAsbtd+jqAeV1V9PO1N/VsI9KPac7FpSXUWodj7desh0/RYyggF1PIWp4lAAOQu8VW8F2YnB0sOEyLhtrJo9VDSTGIN8vYvwMj6UbqjiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784401114; c=relaxed/simple;
	bh=RulIYG35vdRizeXYDm2NnwmR1ngnXGefTxA7Gub1pZI=;
	h=To:Subject:From:Message-Id:Date; b=UEYxCiwYcjahzYRxmRsL9Dq5suMSNDXLhAtFyrLCH//VhXORJITQvhg8G34H4EB0Kj7P8Hk+QpAFbBxj8s8Xma/yaxSUaLEJlp3sqXhSAdgmDxVmqjIsllr6uwErG3avAwMY+O0Sc4nBfSmC2BGeZAcETNMj+atAN76HLoxDQr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvpYNGW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvpYNGW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F76C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784401113;
	bh=RulIYG35vdRizeXYDm2NnwmR1ngnXGefTxA7Gub1pZI=;
	h=To:Subject:From:Date:From;
	b=lvpYNGW5IKNRp+sehre7FI2MnkMsZq0xjKES0umdUCw1j7yyUWtOz8jTc7Bu1T4No
	 TBChlABT6Dzavq0nOC3xXMUVQSnkCuOCn7UHyjB+FFBXseK4DL4JnGkJRyELHyFtG2
	 j81HU7roq/H8zdCxy7xNKFdZjH3Kas5GQtun0svYJJ+0Y/w9sQ9PF/y6VwZxiMYrqf
	 IwN3H99pTazbzZTNkTnSx7KJpJju+OBzQYevgdD7wCP+ujn7+dODr47PgOR7Q8YE7p
	 KeN4w4JBZDHldYM68l5h4OixcgxOv5lk4qCtnDSuN2TpgOg9AMH1XZWxLSX5ue9j3r
	 BKfVEQr71RM4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1318C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440111370.6305.1500262699766243381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08ea5129f2460c307fce56a69b93b0ec1c50d71bc7ba200ce674358edeb00d7
Date: Sat, 18 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784401113
