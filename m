Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FA0158DD8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 23:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740958134; cv=none; b=qiw3fLQ4b8DYk5IK/l8PfnFiGPHuTpurL+n4uGES5HdC/lf/skyiQAghTva5ylngw/bZj6JKU3nJ4g2fbgjxE0uZXzoVXq0FjHTKd+gagVcWgpJsF6ufDsyLMKEAoHu1huZSoIAIHhyF4mJJDS/HSa142Pt/a9RT0apfDBIuNiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740958134; c=relaxed/simple;
	bh=0zYY85py6oTenMW5p32RxNW31n6xTf7/Af1Sm+cASWY=;
	h=To:Subject:From:Message-Id:Date; b=mWIgDn9mvrnCav/hFkYRYk9ZxZ1m70h1rlF5tdJxaXf6xgS6oYcLqPB1Jb2CKr5MbzR2hvuaHwsCzJpB5mTniw33lEpHMaW1XvLseAVnnOqaoYURyZySrvM0sDOLlDzBG/bKVJ6VmwKaLPVuAIX0QYvTmNXvuXoRgoYcCJsZluE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uB78yxHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uB78yxHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DB7C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740958133;
	bh=0zYY85py6oTenMW5p32RxNW31n6xTf7/Af1Sm+cASWY=;
	h=To:Subject:From:Date:From;
	b=uB78yxHB5POCmNcFm7to/+Skn1LiiNm4b0ZEAufIxbBp/+2lxkwOvrH5zUndTlNnP
	 Qy/Kl6ySx9zzx5qihQg6KUpWsZqXTp61/gwxPdpvLaGgy0pfVLUH5Kzp+IoBEEJ3PO
	 iAQZ4UNIRWVFkQqH8lY8gVit4wSxuDTrRFe9UMyAwz2Kk+eNnIcdBi6FyLYDUCy13E
	 Gld+CTtCi6ByDFYQmz8TKMrotnAb9VwVBHQ6Kafe3ap2dRIRmCqyiAI/naw0OznpcM
	 UWkb3i5GtgK4O9W4UqFMz0KoNx2oLw8NUgmSYqkJDAnNyeOJRaAElzLQKVBwKhX4M4
	 aY9C4QwF8JORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFA0C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 23:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174095813360.3191.14840198570191730304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e3411ad831c36e9c377e5f6c78f1e30623b565cc380946ef01a2d2cccddc63
Date: Sun, 02 Mar 2025 23:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740958133
