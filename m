Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BA32773E3
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769409234; cv=none; b=nOUzk1strBSAJ/JdvIbve0eQXI+IgsVSE6NBpa90U5Do1coQL9Rr4rvjoWJdAP045wsFwdnhIBr2+iFCpJQHY4JF1bbB1bg4aiiObrmP9ktErua0JPSm/fp6vrKL6AbulY6xsEv8pd4ykjftjVvgC8Qa3Hefmh8pm4i4AxfjJ9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769409234; c=relaxed/simple;
	bh=u0diNMm9gJGSnUfoPX5RhQbwIHV/62jE5cunV4bns/0=;
	h=To:Subject:From:Message-Id:Date; b=lY/juiVR/1axRpUHL8ytIWabDbHba244k/Q68x6cqJclWoF54Ndl3+jMfNoW+blDg33Ztc19jhl9aPOzoG13pLqg5cFrCMnE0TKyyX3pPSBEZnL4yWvOmTfNVozqyCXejNoiVJST1ige3BYpjh8LYzxb332TuzKxMkawTB6i0OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIGMwIze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIGMwIze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2BCC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769409233;
	bh=u0diNMm9gJGSnUfoPX5RhQbwIHV/62jE5cunV4bns/0=;
	h=To:Subject:From:Date:From;
	b=SIGMwIze79VOsZLu8zhEGijnqbYHLEMvuKX3WmijatFga6Qri4A26kWbUmJWmVf4j
	 A+UHeVJmKafSKolN1V6R4dfzK+OlOWKDEoo8E1BXnH/QiG5EAMPfWvqj+nJF5Dsqu6
	 4U95OIRfEdRoxMpJFcunkLyu1Mcy84ubEPVQ2OtR0eE4QHEUtaAMNbzLdXu7XWKMuF
	 VQGLhTksWPxmcXCg+Iu61T4Oe3PKXOzBauXOqECX6mQcxbEFSaJ35B0MQ4/7jXWb6H
	 OgGdsmNIigca+jGh3L6OzuLkW5X5BHpvmY21MJVK+cf4r+LO/pxyF9Ek62L0GuRnvB
	 JtXvBHc0SDRIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D7C88E54
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940923358.25103.8350690839140912626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98378bfa1fccd511520d0ba4fc3d89b34f2cfdc1d954c7a85e986ad013161956
Date: Mon, 26 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769409233
