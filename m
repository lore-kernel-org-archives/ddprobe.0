Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14AC63CB
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776746254; cv=none; b=eZXx0d+TK9Y5ONQCsThVR92yjDhQEI+tc0kYznFwAcv2+hAhCEUyYOHEdg2Kl5gTvUXDRysmV/0tqD68blvo46piFCYNqEsxPloUf+YuEmDmE0d9ZSvAGdQVeKFfVh6ak4hSP42Lj7FlgXcN64Wxt/JFSbSJkQP1xluGt9F4KNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776746254; c=relaxed/simple;
	bh=T6fUsOWrnfT3QwVj5WWQ01rvyv+VVxxEiVCBEJfALiA=;
	h=To:Subject:From:Message-Id:Date; b=Tt7388XOXohzz90iA3GqDILMow37j8MYSZa7PhXuuA6hngPNpOdJBhZ8aCZ6MXvVU4k4feyMkVJDnZXQYTDoFR3d2c8Ev9C/LwiNS2hBhnFVJSwlK0Mg9TKF4z2WuWon2Mh0ExwJdJqMMRdMx+BA/rNMASVSYnGwVXbKD+04auI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzHKMd/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzHKMd/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F89C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776746253;
	bh=T6fUsOWrnfT3QwVj5WWQ01rvyv+VVxxEiVCBEJfALiA=;
	h=To:Subject:From:Date:From;
	b=pzHKMd/kNOTtlFQb2hq//Xgj8qMYChDWPPesfdVaDvvzVsc0glO3QZf2kFaFxssWv
	 PRx4ors4voamSoYDvLbCBxE02DNMYJj7TaztoZff3HjNZOpBhMmw4+T2ohrUXp/s+6
	 2waVGegHqAucioHsQ4kGnWN8FILNXUqXGxAeV+wh4SoSYOa751CUaIPIzGrHcoGP9N
	 2f0SzmU1E+5YpR+PL+30VoxV5k0rTeMvpVbGdESnp2FaUNIf/jCC2WqHHDsmuTIqbb
	 Wg/UIsuvF4hAg6UhJYdPKZ5FXC80zKOCQXZDDGXcsvWV7Z6x88n2Nk2Q3dJvSk2fjv
	 t7jGbqARVum2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC64DEA71BA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674625368.6765.17974221051441023290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae11b0e1bfb9b3c233bfd96e2f63660d838dbfa121e2fbfe62efe7864ace70c
Date: Tue, 21 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776746253
