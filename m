Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8B63115A5
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784275114; cv=none; b=q6+GiIz+nVoicXBtLlhpqtQoO0yL+A+wurOuvygxFjLquTUhHFh3hJfrXa6lb6KraH0Lnl6Jnn+MEiZp0BAo/abPDrWeX5AodbCG4EIrmjWNFCHS+LhJY3Uor/WOJ7dbcOSrb+1EYFznDmWLaO6XByS1n4TNrbVHjWDqkEeNCm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784275114; c=relaxed/simple;
	bh=VHpT7Ur4QemGe1GYkU5G/2dr82VOGbMM5w0pSnuk7ls=;
	h=To:Subject:From:Message-Id:Date; b=p1RpvXPSnBz+pkkEc4OF4YCOg/0a5tD41WXOIgngMPYOfe+Eq3h+fHS0kOMmjjM7N13/02H6H+mMCz7736Dc3Ax02LKwcic+iuJop+g3TbnQKYCZ+eAZH+jfjICRJmhU1JUIakscciGDeFesik5bY31VK6eUejONgH/tUkNMBtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzrmhCmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzrmhCmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA31DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784275113;
	bh=VHpT7Ur4QemGe1GYkU5G/2dr82VOGbMM5w0pSnuk7ls=;
	h=To:Subject:From:Date:From;
	b=rzrmhCmMu2dOrE1+tzGk+uTCJlY7f0mO8YYd3yp5uhr2oJSU6XQuS8tgyR2Fu10WS
	 odMoJMPV39bIiioWOmZj+lwyZQdkpoivhOuok9ByPuJLerklE7oOV+EshRsOpR4V3Y
	 zZFM9fC94ekr2jUMZ1e62R1yBN9ZWesO6aiiyMkCCcRXWdF58pw63l/VwT/QTcZMyh
	 I2NQtcYek7bfeo8oy4AHKvY3/8M2gh9Kd+ONGFM+jWORwJZnk0b6O9KITNdSNF3x8y
	 8AnOn178uusMxIj00clhbVFHv0hh7H3XaCOnI4H/0e1IZF/lBDgC6hg1pvjPAPWGSA
	 ZiHYI/xKlevKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8252C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427511368.31532.5308617929897105250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875f3f20f055607661d031a9def2894059f80e9fcee418860687b14aeaf93c4b
Date: Fri, 17 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784275113
