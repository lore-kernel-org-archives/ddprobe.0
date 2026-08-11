Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6E52580F2
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786413034; cv=none; b=o6JD2BJqSq5PKVekOuAxDL6/HAnw+8Xm+pVGDLzN08HVFmpH8sfzCALk1yGQfZji2xBO2kZVGvqteauaKGBZLKg76d7hvEDEVu2XUDfiNbOqxyLi0kZFaqFqb9yz6rPHP3K3GTHctgiowQC8oGIMkVOjAk295JAqQChiylzVHns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786413034; c=relaxed/simple;
	bh=SXlIvJGmzmpO4ImGFA7hn3GYhy+TrCIpj/BrL0hsXFg=;
	h=To:Subject:From:Message-Id:Date; b=EoqqUHjdgnnCvwZcHlS3Dzx/DZCcISa9mzSnadIsYmluSEJ5/yZUtZ6hyq25yzI26BOkn7yOW1ZTuyBl2VGonoC0eN7JXROJMGUZXGYTfU/8KojO5NUSbiYrgPmZ5Vuh8TzIfobY34cMFBDUQYJtybxG5jeLGgxVVaomQuwJlTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOQWkdM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOQWkdM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C4FC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786413033;
	bh=SXlIvJGmzmpO4ImGFA7hn3GYhy+TrCIpj/BrL0hsXFg=;
	h=To:Subject:From:Date:From;
	b=rOQWkdM2o1Tkzyw3Yr8zzyE8VBFMXd5uI0vBzoSFj08O39d0RroPhNpQ8Wk6bsEsV
	 cTpFVlzLXDWnq5bAxXOOiThM/kggcUGoz8XdQ57DOVulGaV3kB7Ys1yHlyzT5ZEWSI
	 Vozke5zM/0JJ4OwAVvafIrNwgqhpqjDgiVPEyjuFrocTIouu41AJrk+CQasB+kjy12
	 Vx26crCocrwIHEZUZmRS81w26ELYmZZcH431r2fuiirq+SaCnLCg7CsE9OJMHZb1gc
	 Y/2smtcIS1243dk8j5E49lKfZFn2yD7z90VcG6rmPToADM9x2JxfaaZjmt//WK3JAC
	 fEJyqqejO2Eeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B55C5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641303372.31456.2269872630595159455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0102e24dae439ff61013ef6cc77bb7655aef48dd0da25542ab3a02026a3ace
Date: Tue, 11 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786413033
