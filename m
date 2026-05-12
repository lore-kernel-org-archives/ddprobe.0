Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C425F9D9
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778563234; cv=none; b=Jpflbcl1eUiS2q9Zoc+Ldb0G4snWDNE+8LAx7ocd3rTLDrWcbKSJiij54kfNzV+b6Bv9wMxj1G6XgP8hEz3V+LO+uNNXT/03Ejn8/QFcKxF1V3TZNoOKdrCFMfKUZyjdWepZNCnY780dwELzHarkwS2YRT08M2qfiXLWorGBVlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778563234; c=relaxed/simple;
	bh=scZaLtGC8DPySV555ztjDVl+ZoBlFxBd8uhDgKbuXKc=;
	h=To:Subject:From:Message-Id:Date; b=ubl7tfWTe6HlLbQjAM4CvD1WKbsx9/XKCFmau20jDwoFBiFCeCKgTtO2diAsvwkLlE08pGHucDXhgf1KZbN9s7RH++ImIkAmpiwLzfdz0Ys8p79BdQI6gY+ujMDFFeTTj+5+W8ZqMsH09b6tj+PpNrrjddz/BW+7tj5eoJCMu3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyIjQQBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyIjQQBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA866C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778563233;
	bh=scZaLtGC8DPySV555ztjDVl+ZoBlFxBd8uhDgKbuXKc=;
	h=To:Subject:From:Date:From;
	b=eyIjQQBz2tdh5NwFX4LtOsres3Qur2KUNhHhfOiq1hWuVAH3PI5zopof4nfqLTnLm
	 SvNcDGtUXTuDNckET0KDf1ZWm8FYT4bUbw6+xIQZGiG1H2F88tqx8ppWBsCct5qcso
	 i5BQ+J+2LF5t3/TOib9RI6nYiUZ4PVXkAL0GTpTYaf+6Tfa3ccLBwq3VArCcqJ8Gpp
	 WxaCuUldWDD/DUT1Ml15QCseSTNmv7Qxcudi40Zb3WejXaognuSAyPghNfSHbDXIgl
	 M9v/zWhP88pE/TJdFz8m3WmcxwvqzAPaUKYzxkrNqNyRlqE/Vt73JMcMM/muD/0soL
	 28n23Cum1ixjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EEDCD37AC
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856323368.16524.4201255954663297946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ddbd7995651c621982dda61e759f1db4b212d5119e92ba1e186d36a8656bfa
Date: Tue, 12 May 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778563233
