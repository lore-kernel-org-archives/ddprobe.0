Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FB92931CE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789815634; cv=none; b=k4mPh3ZjqFs8bWUTMs6H1qcRb0ta4mUjzBOpZZuszCmxuXHzyI9CyJA9lW/+Mpe5Jirmd03H70+JKKnjKVr5pwBlfbjY8R4Ct/wAK0r/fHY8yxbc99di59+ITixgkArdyjvfRX8LD5nl3tTYwEOM+xHqPjH5JQQFHNnq29ggyg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789815634; c=relaxed/simple;
	bh=YKVWCsHpmk617x5r9zu68Fg6XgmQpoOPHOX8eSeCcEk=;
	h=To:Subject:From:Message-Id:Date; b=koiy5P+R1881Sicl2ItuNl3lxwmsUythjUseF9ATCaOHEJ+7fZtik6cGGoXiQlxFplOekFmJTriUt29ozlEiZurbSMUuPMfJzP0oyUBATcP+RlBlI/53JOK9tZTjbpr5lXPjm0Qxg9Bosd3nRf6aFX6E7z2olgjrzGxKt2OHMKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iz9RJtbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iz9RJtbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2877C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789815633;
	bh=YKVWCsHpmk617x5r9zu68Fg6XgmQpoOPHOX8eSeCcEk=;
	h=To:Subject:From:Date:From;
	b=iz9RJtbXtkK779zAoQ6LIdQ+VdIDZPnJ1OvV/gkp3rLysWBUkmZclfCbh9dpSG/ZN
	 lfG1Lp5Gj84m4CXmwTyL2AdwvGxqYi0eXtPH7lKlLJ3vgbP568BaKfk6wmcbe3XFpL
	 R/BfqkjWWys1/DklUMWCH7zNxW/pb4/MiEVAg4x4yl2yotqsVAc/pkFqXoNT3DdX2x
	 cjhlRG1UuS1uVyhEuJRH/3+WHRoMxVBYQksX3Xg2uuFqcS1nktYpJaBN7kgcmbRN17
	 6ID7VrplJT4XyUj+mXB9s9fyVHGCBUff5/88cpYJkCc2osybWu/7g4/knOshJqefzO
	 +LSnY1/wWy9Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6E3C982DA
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981563368.20146.9271316871762851035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26cb93ed949c78148e980814580902d3678683e546103175d6d5601f759e9d73
Date: Sat, 19 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789815633
