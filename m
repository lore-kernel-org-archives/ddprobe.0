Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BF340A937
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785279634; cv=none; b=rnJvr5VVFri8TIVjNWEj/ic4HZPKkRCYhW4GPuWrLRkHM18yNhmqVBeuYWqfaOT5oSH63SoRSa2ciBLWhpVKvfRDj8R5eNCYAibIfWibxcWFYCmIaFUjizubDzGo0DwuOe/ub/WPx61b/JRacwZa6hRXhoqTAbjaY4Y/lwd9+wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785279634; c=relaxed/simple;
	bh=Qk5/Oqfd3F/4ziK+YqFm0gcX7bTG63Fq45AjRJH/uWY=;
	h=To:Subject:From:Message-Id:Date; b=L9SNpsOt6PTL5/yPKYNj9pgjlO3Cr7EPJovzdfJOJiYq1oL2XVgMK9uydl607iatcUoEvIrFPmxPmX8x07BeQSIItji0X4XcDUfHuiiyrLeSz50T4fnSdcQ6MxkLf0YJ9sgGXSvzMULvQbkZJMRD9XCsdU4fcvmPBrUwrTvgHHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0TomBIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0TomBIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEE5C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785279633;
	bh=Qk5/Oqfd3F/4ziK+YqFm0gcX7bTG63Fq45AjRJH/uWY=;
	h=To:Subject:From:Date:From;
	b=r0TomBIcu+FqeS2crsvThIGz/r6pkgONXYINOlGz9xNl3calCNVaA5E2M2vI3P+51
	 ZWhWzSGi0MWKuwWxdxp0IvKwBRpLlASItT8Flybfzw9leOloRhxpkLh5lxFxGkwJAM
	 mMFOmHMKO6pXSlXWJD+UunDS9nyIQcecMmNmSFs1Kk8YNlB6GkvrTKpjF9I/TVfXgp
	 i0IT2me7y0Wg+KlrSRV9JyaTX1SIVcdiavHxe5ENfTp/2zlhDzzMdxQa1ZHnjzRjDg
	 n5tmo14xagbGBF5kvr+GH3WtJ+15Ie6rwwLQzzE84lF9SfYDijDFJpjkcsGDSl6AGO
	 mAoT6meFaSGVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A50C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527963368.7542.18034910167714821843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb883fcbc203b62a6e3080269d36f4e0cf479dfbe2957a4ef95a42dc3c7f589c
Date: Tue, 28 Jul 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785279633
