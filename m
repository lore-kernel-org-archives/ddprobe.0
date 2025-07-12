Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A9914286
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752332994; cv=none; b=j6dMcifD0AVc41N7FC7bkVyFAPXlRATaV3fzxYSHFNAY3wBfbJYB2va9s6Dc7vafxij0fxgNOR79TWETJ8Jl6aJdoJDJuVLkDsE1GPoBwyDZNlUsIjINChCZXZ19JN139B3a/ON+dblflp/nSo8ZDRUF5VY7VOyNuXMgXwUsdm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752332994; c=relaxed/simple;
	bh=xbMMqNm2EMBp4Evykas6uZfet3y9BEQW+qjcWsjB/6g=;
	h=To:Subject:From:Message-Id:Date; b=afV38N5ydAKc1sJH8BV/ZBz8sfwRlRMOAEdA6ZQIeyCLPzZ8AH4vvS0jo9gesHFBj4sV/EP8IDa3E0rvT9jD/THP6XZfk28rxch8V2DJpEMl3/BFF24QHZYabzGTy2BKeBE8+mSjw1rXPHn3TJ+kv5DiuoNzc1CfV2HjEB226dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sE+ZgnnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sE+ZgnnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29E9C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752332993;
	bh=xbMMqNm2EMBp4Evykas6uZfet3y9BEQW+qjcWsjB/6g=;
	h=To:Subject:From:Date:From;
	b=sE+ZgnnTOq10nrmwJSoNBnkQKJhbelQ78cmU8TPUNUVySlpFd3mstMrr14a2TvlRi
	 KXa6N0puR4yJ+o4m6KcPeGTMvsqhzaTiynzgk8yW4bEsJfG6tx5d3Hh7i9QxwBMyfn
	 bsgATmrGSUAe3tw9DahpDkY3W5ZPrurfUPXo4bz3vkY6NUzVEWN7NUnpUWWR+Vc8su
	 h+I3UEp70IhZKcY7HudMevzjnJrS0wun0cJN5Nm4eUKWdHdrP5IvDk/gtZVPQuarDa
	 bPsZYpcfpghcqVaqjedolMDZ/gCtjPPIvb/7YbU5Sm+04GpvkrAwnoc/MuvdK5jQgk
	 OUWnBGdD2Q/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94988C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233299357.18634.2012606641938299114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372f93789b3cedfb03178775d93f7d3a4fd2c5d69f8e732c04f1f9b760756e55
Date: Sat, 12 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752332993
