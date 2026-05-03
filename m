Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F95C27A12F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777787254; cv=none; b=obPsV5Kxnc+i5DVuKsWVtWTapQge7KWWBb9fDxgK7hwpSp61s7XqR4rm4hdTsXAyvCoGaK+hO4PjX+TP21wC++mnGlk4s8RlhOxIaDI237TjhRoR/u0qT9AkIlD4pJ/m4ylXkCFtP67VIQwIN1LlBSllAZ9oZ1Blv6WnDypuAjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777787254; c=relaxed/simple;
	bh=dvap1LVVXQmU/Ae9t6RlHDGdNuLmVn4vHzIBBV6moec=;
	h=To:Subject:From:Message-Id:Date; b=FSliDTHPXzy04Aj2zTEpH9u2dHER+DX7rme4rTyysR1PKM7/hDC4X2xfDi9tvaI3AAy3H8DtMJKEm/7aYrUVit7CaidDmEN4vsixhJOTPWUH40JRitLWSE6ZRdCgwvT9DpjpfuoNBm/t5tNDmWPn3uRYOJovSD4h7oYAKJ0coYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8S52tNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8S52tNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDB9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777787253;
	bh=dvap1LVVXQmU/Ae9t6RlHDGdNuLmVn4vHzIBBV6moec=;
	h=To:Subject:From:Date:From;
	b=i8S52tNy8EqUeCYIYdW7K4VZYQrh5RTNMgi7CDzADNeuICOHFIgbkrfI596wft+3l
	 1IUWBQYsPfPS399x+TjUJUa/WcL70RHLVPV3WZUjxx2fHrjbFfYwiWCgSY14JhrqDB
	 AzxKHA8WVv5X3oSRfIdKC9A9s317s1RzNawAb7TF3YwGkpOxEVe5GAQVY7nckiIR5u
	 t71bu4txhqgjzEBF5+BkPR/sFGKJWrKmwQAo6B7yU2XY90b4XeWFv5dnR84irVjDJP
	 3y/pA25ocD8wIuSAQE97jSRrSurjMNuAl67UzNOYYqkvdaZH4UkoF1SFx0KxrcOkQ8
	 IZAPLzHklNX+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB441FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778725369.14496.14113037172018512479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994d0dba754b14a8ef04fdd2e5449e824c17dcde9617214d6666ef9a7a1eed3d
Date: Sun, 03 May 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777787253
