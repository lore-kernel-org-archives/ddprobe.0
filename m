Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DE33FD129
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778062654; cv=none; b=ADmEfMzN3GbaYNdkFY2qfGNUj8d8KRq0upLJudFFoe4pkgKVgMpNfaHs3x30SlHAphHihSY+I3NjYPzxK8MVVjeajHMhMlTgssKLAQrcCNbAFzLU/BVaw8nm+y6KQU9ZhXYlltzuMGxdPMr7XowyEi5bVz4E39kpoYrB82a/ZVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778062654; c=relaxed/simple;
	bh=dicYyB/XGTs/Ts08Dylyy3/F7gPKHpmv8j+C7bDA5LA=;
	h=To:Subject:From:Message-Id:Date; b=aHV/QR4pitCj9z4U9Bh9zceQSJ7aXJ+k/z+QGhgiwdbA2ZO5tWYldtJsqklEYTcsZUcl52T7rZhi09RAQ7QM4nQsur6aCKN2MaLcho2UEIkOAFS4srUyHGvPaE2wnmW7BroiiGV1SMm70jAzvLUjLUl/JqtspspSV2LJKEECPRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGhqJMTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGhqJMTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5215C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778062653;
	bh=dicYyB/XGTs/Ts08Dylyy3/F7gPKHpmv8j+C7bDA5LA=;
	h=To:Subject:From:Date:From;
	b=kGhqJMTPY7iWRsvGxAMFwY5J7Utuo68Y466MPm3tMziJ0UnwdckSQxp5dmllpPzdI
	 NUYpFKBM4BpG9msqjegz+1/v743PqJAxbYCNxofjTzP0StptVJE5TVjWmKPiYnIxJZ
	 aQZvqkP99qedwI8yU+Gycz9JNi1pGld4TNz2sARWU9MIkhtY357bobzlZUkX0tr+Mc
	 W2MckJr2Pdut82Lxg/4WyVVIIEjfTM1ggrriZdRPN2W8cLeJJzxfAXiTKeOpEyff/R
	 Wk8whKQimwmPi4H1vtz1Hrbsxg/7xDOTfxZHyQdd8SlGHX9rrEFJYq7EYqZhgbJkDA
	 E+u+z/orv4hsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97AFCD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806265368.1912.15221802021844914959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d918534f61c38e724ffe462e09e3a65a702a899463820b685273cf1f50aa25
Date: Wed, 06 May 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778062653
