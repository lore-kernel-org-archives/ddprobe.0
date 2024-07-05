Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C441CD02
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 23:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720223723; cv=none; b=SmvvF6cJ+0bXTzmNqiKkwYSWCJZMbitP41eDX4yw6lySwg8clVdQkPys+FzMgHVluH45BEpJYkzuYm8Puw5D64c0Yk7mRmPJksWn847CwF1PqoDDoT59eaRLQzyt7p/0Q0pFnPoj/3MLrkSuaEJbkIyfzvKT/Dk7jf+9X6INSo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720223723; c=relaxed/simple;
	bh=wRtHlrcER787BN3Bq+ysG82lGPaYFVmExgmfwJ/HmAM=;
	h=To:Subject:From:Message-Id:Date; b=qbdC5n00J6VCNcJ//38VMh/dC6GHH0sZiqEmHEKGoArELsVc5BZPXJI36cWTojGg5Ww4V8Ck1XFEHfR+as7T8LOH91FEVrp2CaqHqD1QaepJh/JYzFIuJpoILk3IqGE/nYzo+0xS6df5Eq5MB/loEXK/VXMs5P3NC6Z0LOfAUMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaa/jd9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaa/jd9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC032C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 23:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720223723;
	bh=wRtHlrcER787BN3Bq+ysG82lGPaYFVmExgmfwJ/HmAM=;
	h=To:Subject:From:Date:From;
	b=qaa/jd9B52pJ7VP0XEwLJpM3ZLcGtVjjgJI0qCiNbbVMhBybd7FStCpkKpf5u/VGL
	 v1/tAZxtmvW9F1Brr1ztvGJ05hsakKnajDA3IqjAgFwYdqyShYUfQSdleiGItqfT9G
	 OZNRzsVzmGlesjBSDYR2dwgWbCJ3vCBehKi2R/zH08Ql8SB8fAUaVIUZn5xw/OB0aw
	 TCdLlR2LQgKDLwJPsW0Y+aAC7TS2NykXJll3OoDoW7ectphmL86PTC/slyWr9ioWUk
	 4Hp5oy0K5X6BwMsKza7C45vuK0Ba62giV7IiE/Z54OZB0Rlef9Of7vpUr3B8lUFC1e
	 ILBdwL+XEeaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6342C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 23:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022372286.29204.7396857084933889659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d41c7c4b927e5d97e975898ea9867c89ce1ef7c3f0a39c75ff85a24a48c23f
Date: Fri, 05 Jul 2024 23:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720223722
