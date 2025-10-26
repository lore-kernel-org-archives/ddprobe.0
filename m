Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0910514386D
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761472794; cv=none; b=QDcG1lreqURRHrn/6BptlhN6DbHtDuFl/EXLtoKhvPt8HXKeovfo6yPooasoAKrbgoamWm8APeLVqHGrvScPxOw8X5vXvsQfpogEL6sXEc6VR1+vFugNIdDx1/c/ZFy9OrtUwPrq2wIQgEMiVZOd5PCkrx2qpLhniba9ESar1UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761472794; c=relaxed/simple;
	bh=2cKs6Sm/LVPlZqGDUf+G8scx4xvXwfuW05EiyCkiGFc=;
	h=To:Subject:From:Message-Id:Date; b=HlxI4tcmvirLa3p5vt/YMZ4x2Y5NNtSDBAGaPwlO+6+mAYZgJUaTZr4fJwLH2HKu7/Yp9r9OeZI3DCNU6fpQv3wl8rv9f4j03PltEpDATVMzHWrry7LH1OLCe5/GYWyjS5JkspFniJ9/3K2yd66jSkqnOsMwEFhwosyLnm+AZRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqCrTCcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqCrTCcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A351DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761472793;
	bh=2cKs6Sm/LVPlZqGDUf+G8scx4xvXwfuW05EiyCkiGFc=;
	h=To:Subject:From:Date:From;
	b=SqCrTCcDvxlP+2NGt+OWsyF70mI7mRPyLvDlIO7TgHhY2Hre32C+NfIvd0UXHZrd8
	 ojnBDQPFh8NdBZqE+3/MQg8ruxdwzq2svBmNYtW5nHWoIGblTepDkjxR16FdPLnHfA
	 C7SzYR6WftkEswPGQS1V5DugwoQFHwJo3gC9d4IqkewbprcEcspnB6OXwHvlU5wh6h
	 XL4vriIVc5yZnrqcTi6O6eRBw/j8kQCGiJ3TIT1CxXIXCBnJgrFwleCvcADgIZ+e9Q
	 vr/hRn9+jOmJtlnBIgfHY05LtptTmZYEKH6yHtasHy1p2Ni9pcMPY3dUTSnsi/c2fb
	 iY9DmvhiSab2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C68CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147279357.1824.16508837675960331988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ebee61b2938ab53d566170c987d3b35b793ebc5fa692d0df136f1bfd44e44b
Date: Sun, 26 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761472793
