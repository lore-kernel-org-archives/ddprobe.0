Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183A3182B4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749613794; cv=none; b=EcbonvxyrgRuD0zK9C09N2lgbWA79L5HGMl/1B6xC3JG9hpGmcA4nKYOy+6wX25jQAP62xSTPPelg5xZl1npHz3Tvh0DWUZGCl1uJ2+qJA6ACVRapvJfHhFkSEdOF+fskORF8n52PCgo5qA91zY/Jzlsl6g6wjvAW0PT4CiJmdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749613794; c=relaxed/simple;
	bh=JTYuYPEl8IZNwLw98QbEYPXtAoDzdbooSTFeCS8DGBI=;
	h=To:Subject:From:Message-Id:Date; b=MdtCEIvD9Prpn60WhT3OpJ3Uonibk9qU32DRCx2QiIGtmVexE8vlhYVZztfPEPTn/DU6q2/hY6gUX/UjBFnE9Lv9FjFVI64zPR0qH51e8tSsm0bMeFsOeuw5sneTFup65MWh7V2k389wdjmmrG+L8+MBuGwWYG7J2IcnjiEamFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t//aXky2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t//aXky2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36CCC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749613793;
	bh=JTYuYPEl8IZNwLw98QbEYPXtAoDzdbooSTFeCS8DGBI=;
	h=To:Subject:From:Date:From;
	b=t//aXky2IGxUS4LNkOGVtP5tDU0pBzLz8MX5FdkimR+/vWtU36IfgFMyjfHZyBzLJ
	 bUXLccJAGJCzpOkRtoB9G03zDcBRmIV6i5nhDkMBtQ+HSlWR5ubfUCR9bAqkinQL+a
	 PQ4jr4oq62HBRU9PokKaa3m3XnbnCQ6jO1/fO90tFUBc0jPVNliLnqtUrb9S36JvZN
	 EiFKe1sG+U0yLSkMkxqmUxqkCXAXPFV3Y5W6fOmvSDD14BiMHsE1VsY+smlmpoU9Ry
	 mSiIa+cmH2t7l2dQLJNt1YlaB1oh7sM4WJtm/dYSNqDACUjXF0b+8V+ED4+8jGNtap
	 E241GJekPaCdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90751C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961379358.4554.14558324177524021368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db460c57ea9f99dd9cd33929cee28fa0c3997638af49926411d1252d6d68f938
Date: Wed, 11 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749613793
