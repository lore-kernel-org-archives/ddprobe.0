Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C4AA92A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707795497; cv=none; b=j3WcKTLA5fRpvx36M3iNIla8b6RLkO0Ta73kWq/YB6uHFZLtaC74Idjem05rmsWuzARvbJC2KtwjBpAa9to1hZmJGc7piEO6y32x994kM++U8aMmU7QTeMXaZJyVKSXVccjZoKJhDnMiAiaXp4lDU5SmSKZw0hTZ6pAzfhvu80c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707795497; c=relaxed/simple;
	bh=YW4Cszj8PxIVmEfr+GGH5LXNyRhEBysSR7URusATe4E=;
	h=To:Subject:From:Message-Id:Date; b=aUqOXA/qatt//kWHqf4olsgMTYOndo1IAJU+kmBFnRxf3+h8TirLn+VGueipEWYArK4B35Ct/X0+RPUJ4hLn4FBwTjEUUToTbYDa+ySBHjkHM53idY9VqnztZEW+t12FyALmZHLefiO4EhecWu1HRPRwXXUmh6y+dU3nirqjBkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klTTevah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klTTevah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82161C433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707795496;
	bh=YW4Cszj8PxIVmEfr+GGH5LXNyRhEBysSR7URusATe4E=;
	h=To:Subject:From:Date:From;
	b=klTTevahHm0Wny4cmE01qty+OWvXOB7HMxChVqZhudRxselcEUuvwV4k4kuWW2Lxt
	 +VVqNckifXnm0NwmGsJHpkJ9YFuM4aYDelmkukyXgmH0vQSAMkgzq9ydlSNTVbM0iJ
	 n2VpCUHZShsNXLlFZ0yEoR6pckwHlzSkeRenMYnncws+D2ZtbnUNx7Fsgt7V1wRUFM
	 +D2oyZQgr/Inf2VkhrvzcMaiYgpx1PrgUGSLZNMfHM2nMcBM3wqHgkv7Avw7lHcbBJ
	 413LNNggnJnGff4zgTuCT2uKYaNoxYH4cLIvEjeqJcOOpRyQgYLe7vg4JL/zDqDpbk
	 QvFpaKT+XzOPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609CBC4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170779549638.8226.11879919307719096115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d7243b7b7a750e4c272f887b10de30ed3a0c40ecf0515e87f5d1d77719862d
Date: Tue, 13 Feb 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707795496
