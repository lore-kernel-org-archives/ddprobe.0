Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5662921FF41
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748465994; cv=none; b=Ts+WyvS7qckIR93Ei9YqT3Y5Zp+gpl5HBYeeyVJkDcpsH5JENaDXcQ0OQoyQYlbbHFzRTvtvtTxmgDpVPnSjAdmxaWgYdWIF1s9wL5+ZWsZhUv+cmjSP4XQon+tbnAm+2Laekcbxc/hBlvTvCjT21tn8rWqSSpJrNYL/d3eeHrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748465994; c=relaxed/simple;
	bh=hqdbQIKvqQAeoeIzxucgTkm9SUmGdoDiAOx6KjhWnuo=;
	h=To:Subject:From:Message-Id:Date; b=hZEUEHrkBxziNAKUwVduMznJENq9UiRx44NS6fCiMtITkNsBWt6x26Y70OxVTM8FmZy5xpt+6n7OtX4wpeUQCaoytLti94Hc5DYA/QyKpwq6zq7xXkma9fO3FNlr77y05zNlHdUi9lk9ivOLfnbxm5hmxFThdw2hTLkrHiQ/UbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqRzkfDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqRzkfDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AE2C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748465993;
	bh=hqdbQIKvqQAeoeIzxucgTkm9SUmGdoDiAOx6KjhWnuo=;
	h=To:Subject:From:Date:From;
	b=mqRzkfDWvW1LcYPmaRnezsOt4H5E5wxntG6yGDFjgpwerhs7nfCp0WpRTK2EOYqDV
	 RaygGDuwdIvxMJVNMwPjJl2Qqm3AwCT3cUvXJoPAAUMwyhF3pnXS5AEfVNzG60vFPP
	 oMduSTQVn6gLVPfHmgk90sIK52rl2XJdkx39HXLouDJ2UinmtDBX42hO7m1hprrh7o
	 Q3B8g2XUY1fhqetTc6x77u8pVWKaOMX/ArTi6KboWdoQFobCuklkqIqtDsKYSDvY2O
	 FxzFC6sYcrYHFBIIJz+tB0fkMfdAaixO2ldoJIp2bNbVaUhYa2EvU9o3NmhnNfsIdj
	 ghjKf0ldAb+SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94387C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846599357.24755.7636682482773253058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c93c01779b583b549cc8046fed11c1c4ca7ccfeb5fc367888437ab4197a86a
Date: Wed, 28 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748465993
