Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B35412B89
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718183303; cv=none; b=GPogUN77LUinuStrm5CtRCycZoQJP4qsb2C7PvMZVXJzb1JkSSV0XbCS9pBZJ7vSXR8SE7x/GEjxtjuicLgIYFB/XZlhIDOJ9GTKwAhWdxoje0Dgg6JAeD8JUnCfp2v/uK9bs0XrT0TecneSbjt4kHWjRW5Qur9GWuszKQZqbKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718183303; c=relaxed/simple;
	bh=OI9UB2S3yv2qyxnsGZzEzVcBQX5JZndzCiCO2xTI4Es=;
	h=To:Subject:From:Message-Id:Date; b=IH7ay8kO5Oodj2qQCeEsl9hGMsc+FrHiCZPxSNZcLoPoSxDqFT1v1LOmPOhdsvFnQQHLP3BynSqcFOg7qtNPDGK4ZNYKNJFKAtJSZZtpuSaPCPYgyxzZ2w57sOhGAf84FrDI2ehwlT7WBwOADpFo563sJKpD8VStBF/9SB2Lsb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDihz9h4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDihz9h4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDAEEC32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718183303;
	bh=OI9UB2S3yv2qyxnsGZzEzVcBQX5JZndzCiCO2xTI4Es=;
	h=To:Subject:From:Date:From;
	b=PDihz9h4w85quRve5GznFVB9sA/ffcS6UJb/XmfaHIhw2cfDZ1m/orkjDAiocbdgU
	 670PsbU5sv2zIXu3mZ7FZ7x3IKytlTYYAOGVlccL98URlMQMeg7i9Oj1uAuwXCvUi8
	 I2G5MCS/pMrxZiaVu0mxzGCXkeN4YPd6aKyZingcQtXYevXEt7ZqR1Qgv2yEBNNbfQ
	 6mInI6czegwRa52h13wMTB5iWvdNl56C5atZJqJDe2WwRYq3QA2FPF1AZX105YUwFV
	 IGKRHdLCc/bThPDuZA2qvpFk/3Az+A+dX3SrSN6cEu9V0e1iwGPxTSInXrLCN4KRm2
	 cHviCe9ZrJadQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4D0CC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818330285.17495.12698449823080816088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb20c8bdcb986dab1e9537cb80ae8d86cbc625915cbb0e0f07e059d0a828076
Date: Wed, 12 Jun 2024 09:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718183302
