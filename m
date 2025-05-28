Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B4B1C3F36
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748424594; cv=none; b=X/BPXPJUhaBEEpnHW+ZF5hXDhsbAKv1N8boDDukKRkfR2bkQYo/dgx/r9HExkMjjgRK3Fs4N5ZTHgKyPtTjkhyl+6OAXg/+smVJrwHh1yRMFLgSlll4whSvcNBZzgy5cMQ+HWKC0JBQmDF9h9YjjQbeMVxzlnCsigv0SyAETbNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748424594; c=relaxed/simple;
	bh=+2G45rWfG/iTMEp+Q0dK81qwEmlm4S8Le1TRiQ6gSFs=;
	h=To:Subject:From:Message-Id:Date; b=NPSptBpYptIOMZVHT+MpaMjTIZjz/mj46diMdy7ly1dhVgT2lhd8r+afcwztwcMQYSOMg+cFpWzYGeGkEqEeWVMrj+jVA1PpAsn/ylNecjEe2dRJmz3jHLGpYrHeP5zzJ1bu5DGW0X1twSPXmNTpV9XZhk+L+Ml6+aE0vLc7S0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boJs+6vK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boJs+6vK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1ECC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748424593;
	bh=+2G45rWfG/iTMEp+Q0dK81qwEmlm4S8Le1TRiQ6gSFs=;
	h=To:Subject:From:Date:From;
	b=boJs+6vKGeo52oFUwBxMoM81OWAU+Is1cZ2tDllmOHzDW6kxX+0OzH4DMGgdR0s7R
	 VHTLsI+lh+mu1wCwHVsqxVeZVIkidRtcPQE2rsJAFD6ypkpIAEOUKV9+9pYM40Tvjh
	 H9QiEBWx4Cf+XMCgLZmHn8ppZJ8NodAH5e9x0cseg8YZIT63VEmrIn/0Rf5EibvCYI
	 0d7cimIXHqODYtFoW+r1m305TCgr25Wgogc+4lEtBbKO4OBTprQYBvnwVOktMD/epd
	 hU1Mlg5Azy4cDptK6H/EAU2gJlB68GqHxpR9UorgLFhZqm6deANQZniyj+h/q7sozn
	 dmBjlIEMoDPmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F83DC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842459357.19651.16710187432106351534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c42a16d804b08430cb841c4c1282de9b4aa749b2a9edf5c379e73f7073c129
Date: Wed, 28 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748424593
