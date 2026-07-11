Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D2418871F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783777714; cv=none; b=IdHaMhIJBQ6xKM3IYyLroMI/zuDsOfPjauLkDRj+HoF1hcD/YnXvvPHMuKvk+k8FYEhFOAeZn19vsvYh8FgN8bmDgAVkW9TaLfzFdBGSYzC+JHYX1Eq1xcZG5anKP5cqQvlVllafVUqsynEbvmzlMZnUDPbNHhbkbG3WuN5V6mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783777714; c=relaxed/simple;
	bh=wKSPlKBfu1m0ws0BOup/CWnbCtUUH6LygjWQDvQ7lyk=;
	h=To:Subject:From:Message-Id:Date; b=XVuxWjei0ir5wPjKsSU5rSsV8/S/yFAmEzwncdpG5qbIXfwsKnYkPGHqfkqKhinHGVylCEQUH3KFX+fztywU70S1QTPS9xCHZeebOMXef255TSwDFOJ9egdzAB3C431A7Qf9oYVmRo8JY2XmZ43BItug7nLsC42nbiolwW6gMLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQXDyVu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQXDyVu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00E6C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783777713;
	bh=wKSPlKBfu1m0ws0BOup/CWnbCtUUH6LygjWQDvQ7lyk=;
	h=To:Subject:From:Date:From;
	b=YQXDyVu6AcqZI/FhQGE54T1hGygkkjiRuoYUC9DBqmZnXmljWcCshQRzaUEckLR/u
	 dNAg2g4GRXiztfyu3L/Wt5s+miJjd9q1THcPK/C7xvDIiYK3HvVfGtc9GjyysUqBk3
	 LtOpiwJBi8xIOpG8MVElRUMNyY3FNTO5E8bRxyt/IjQ+CQ0oN2SX/5mPfFuMoqzAbu
	 fPEZCsiKxfftui7vyhdZrH2D4M9pntJj4bXvWzUxps++qrJzmJfdKOWEvgzQmchzly
	 bbmWyeWmHyU5kH49Xz/L8Dc6jw97GCavPkusgQxnFXYgboLsSEDltiugFLgZ5128fc
	 JSPq1wcsFs+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC17C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377771368.26419.6883807241569551087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e956953122650237978f6343394b59c60c1297838a02ef1d50d3b56334879ce
Date: Sat, 11 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783777713
