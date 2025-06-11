Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6C022A7E9
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749629393; cv=none; b=tQ0lo1ASPJE4Q5FwbWI0/gg3GobUwPiFXdsTcG0/DJH7qLmDGC8cflWd8db8QWNGUZW+r6BQdpM7FrNJr+LGEjXua3IzcIinQ5GvzxuFZFkj7dDOhG6YdD35L3elvCJ+4HDFCKIM5Ay6DaPeGIkgMJH349vds9vnInn6yGx3qps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749629393; c=relaxed/simple;
	bh=nRx0sJoxo/TzdO6yIYeGpr/dVceRWPT0sDdq+CmMeTc=;
	h=To:Subject:From:Message-Id:Date; b=thDAe3/aasxSEHJDlJFSVLTJEnnPcNtgW20/Erwv1sSOpUM6beYbLPjDH7U/4+16CUcOOR1Ub33muvTM2BNm8mDDtujtd91VzQVlsZZgyRb3ejzmzay6FpD2FerAJxkcVFJFd0s97vCzgrTFuNFGEkP14d5ynMGHVDnhh5uZQi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lU480cjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lU480cjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FAFC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749629393;
	bh=nRx0sJoxo/TzdO6yIYeGpr/dVceRWPT0sDdq+CmMeTc=;
	h=To:Subject:From:Date:From;
	b=lU480cjA5CbCMUsA9BCisQcuEtSfbk6yNf1f1f6D5dMoeTseNx7yunMG7/vU8moxI
	 vlqSv8WubT5tjoijqGPWFo+vew+UuMjX/NbvLGSyf6Fdnv59j9CEGcBHT6vYitgTHB
	 lDdCst9+NbiGh4Afw+mxKMz/VFEXIO5eog3NrMoXwGAlZOMtw0tbunVcHgpC4TCEzF
	 uuUx2h/97i/meV+pnkK9Z/UDa9A/qJ70o3FR1l+ziUA9FfDOm7uj6TCpYdo8YD/18R
	 AIgyHhTr40Zl4vVsjjPJSfweTxwPRLH1VSh18PWIkYV/DtJ91LKgUL7Aa7CyfETBbJ
	 g35t5kQoAUdWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91083C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962939358.13636.7452737953184981260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436a341509e0574ccf32c9893079589b09feef3b90e3fee18b695d97ee1d0741
Date: Wed, 11 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749629393
