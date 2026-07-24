Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BF035E930
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784929234; cv=none; b=XYMNB2iVXoSzZzX0pR/H0AUXzCFrZ8Vq+W90CVyA4T8mXIbgO1eSP8eHlH+IWWAQtvb+0llGyeJcXk/M9iP3rcMDODsoyDrY5sHZc46m1TbtpEMP9uyVbcbgvigp1Ji3CXQRcOM6dwzVsGKDFB+VrbP9pw2ioGii2RxaOv32lh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784929234; c=relaxed/simple;
	bh=/krLCUZnrq6GYDt5uCBGtV3WFU6hN/xiKkt2YPfwLQY=;
	h=To:Subject:From:Message-Id:Date; b=V5moUIcBIXZtd3TMiJEep8ncnIQD8Hk1QILXeY5mW6oJV8ys8yYVw/R2JCldcJvfJ93a/UTWIfHhEkK4Mk1C/Db9HcMCrv4j/LND+gz9sikD4vFUJoaii3UPZ2uQnSv845gMkr9LyeA1OCnT2RepcVehXKs4cq/ubLVonaYYgp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsDmVmf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsDmVmf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDE6C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784929233;
	bh=/krLCUZnrq6GYDt5uCBGtV3WFU6hN/xiKkt2YPfwLQY=;
	h=To:Subject:From:Date:From;
	b=AsDmVmf2Q+DIPY+Ch0hfoj+vK7/b5E+SCufa7ljFDml+954Y0X2CsBouuhFMsR2uM
	 zDE/aH6I4yqb2jyKja6OTWlxi9wxaPDgSr1DQ0VVW1NlL9SiB9anmr2k3U7vhOc3gu
	 cNMxvK3liJpy3EYh9rPPWPgOYKCVhQxP6qwvrkpS2yD8SO1IrI6OcNNe/crSei56WB
	 fEx9NjGUmm3DabMKFag2MvqvK92BY238ISpQFL184IuwfIjf3ljm9EddGGOTI9MLKG
	 DvurjxBIMni5x9kmQBQ8geIK9AWlEQ3/XuJrKe+TL9hexCFwIPhDrR7uV/2B7TsUa5
	 G1L908b//+HSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C10C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492923368.20662.9843427233905769163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b406ea7fb982c1e4a7bc0b6a3a4526fd1cd6e56dcc146bb2bf9ea5ef0ab9f6b8
Date: Fri, 24 Jul 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784929233
