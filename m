Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1363981724
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766891634; cv=none; b=MFDRm1iZuY3kJoPq70S4QAk5gbOB478xkID/98YhDtBy1/bOs1a7S6V3aMBvuhKvl9zXkJcVyyURLz2n2fZ3ahPz7N9PnHRBhsvzhuCGKgpLXPjP3Ep1pzOUSHI42/0qh4Jmu2EboiDXbKg2ab9bxvXRFyxIrUk/syzUvun1Ft0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766891634; c=relaxed/simple;
	bh=BjASfRAPgfkgXj9MnuMUkMepUEyzvD9ZnG3wo+qR7xQ=;
	h=To:Subject:From:Message-Id:Date; b=SyurYHEDtEDBf1NATQdfxHzEJTXIE2WgQ6I/xNUzWzZBhw+PwqCx4WZtY46jsJyhPzqkptBi6P00JKWfqG+lgXzvhmTnMQSWSJ+G96p6Uu0hvQ+gjKS8sHCM6KDRTxrWFXlQ3JULX2OIJmgwAGw63ym+2kl3lj4WaksuQEcmDnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wi6IZDry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wi6IZDry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35A4C116C6
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766891633;
	bh=BjASfRAPgfkgXj9MnuMUkMepUEyzvD9ZnG3wo+qR7xQ=;
	h=To:Subject:From:Date:From;
	b=Wi6IZDry2pAsIBSAwUGoLjRUpkd1ZIM6UeSarPWMmQF2NNlXanPB/A637O6eoBugl
	 /9TMjmF5KGCOvoW2uIKV3CpmvHZ2rsxGuAgvowhE7/AAl64o3V5bZHYcRFnFhtnk/G
	 K6+c+zQs3w+RoybGLEaOdL+VlfXTgZs1H0S+i8mTB0ShuiBSAVpBhbdNfD9Vp5v6IE
	 kwzxWWQBBCEexoU74rYRByZ/sHUANx/QsOVis4TSUnxOcifrQ+H7F1BBNPNrsOnQvU
	 lQ/xQnw+PdP2/fgyUD/k/r0/xVn9783fCSFTAUoPM1ObwrJSQXLdWeu9D5NlzLD+v1
	 C56eBl4Dy8tRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E04E92726
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689163358.1763.1235096411435296568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5773231785561055d24603dbb559ed0b3270affeacd7dfae64437410473ba5d1
Date: Sun, 28 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766891633
