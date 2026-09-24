Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638CE308F3C
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790209834; cv=none; b=W0TDnuAW3G31A8JjuxD3tE6yXSlvKYtChgM8xWCnWz1bxs2DMXxSa2CD9Gcv6Z5Z4M+kf3SlayEgnvnO0CG7mvS1Wh55QwzRBReiWZNWymgRceFSs+t66ZI6UyBuWPEydV4MokYAHngjXGm7pR/xn6b+OoYG7ZL5+QEpW+KMyfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790209834; c=relaxed/simple;
	bh=vD1J5B9R8EtWZiWwczfB4LIhfUHLq28vKv41YZVkM4c=;
	h=To:Subject:From:Message-Id:Date; b=qbLrH046qsvOROp8Du1DZQKAtHu9zpQANH+HBa65b72qE+OkF6g963xDFGMHqStFWrklO2SLHI6wwkHAoPm08YF9x0R7hCVJaUsuWggVEZtgWQHUCVgAAXLn18VTa9ZNysnLntx0wqzrXR7/6z+5W4i3A1qcv1hYjMXggjvRqqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmBw9oji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmBw9oji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF54C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790209833;
	bh=vD1J5B9R8EtWZiWwczfB4LIhfUHLq28vKv41YZVkM4c=;
	h=To:Subject:From:Date:From;
	b=VmBw9oji1iLrZxHJYY4+zPiQKqO/vrY8g7YKeQx8X4zc5b7CtA84sax2FoG/SSJfC
	 +1kQuHjAmlXMt9VVcGWE72XP72Yr9aoxJu13LxMyo5vFY+oeShDbbNH7oJ1IdmE3zr
	 DQ7LzhlxiahladcBEObpgYhhZaH49ZI4NrGpsS9BVdx4TrHHa/MiF2zIWy6PJSwIqh
	 R4acSeQk3n7SDdzjT3+R6VxYe1PPvToWZlBpx5GP5ZvSj5czDMXMlTzoAARB6CX64l
	 TRF+sGJsU2NxuHur1IC2pAFkCN55M10KDO4rSkDnU1gs+quLOVseDTfUTbq3aYRHfB
	 paFYEws+R6QYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56D4C9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020983372.29826.12411943298590914026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031adfadcdf118ef47a66f172e26d0296e8c0d7d9de67139d93b1dea83b996b4
Date: Thu, 24 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790209833
