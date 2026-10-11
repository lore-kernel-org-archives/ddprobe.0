Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A241A682C
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791743434; cv=none; b=qfOksh0FxsibbhFJnSHttNEBXa0QV+dTRdTuYxwYmo5H6kgRGpxmS2t/t52MmZVk0acQridqVKr+Y3oRer/eWvRoU4jR/hpbRZp2SGHfI19MB9E+kozyeK+Dj8LaQ9kUMKSY8hvZ1xqcrzDeAkiz4kyohs/j70r+Lqk4xgIOCnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791743434; c=relaxed/simple;
	bh=hmHXYinUJXtydG+OzME6oP0gejXbLEK95Hf81BRP3R4=;
	h=To:Subject:From:Message-Id:Date; b=VfF2yz8Ew9ybRPh5HZi2m8tIDr1+u/+bsLbJiTfgkXqbfwtdqdYDciACtOXwhWU8u6/TipvLoe8Wk+yB3GUJqgPdoqIhoNBpWKGqPGUvw7ofbQElvbbyGzg4raezJHyb4lsK1LI3YJI0Rm9/HkfjBobZIITixOMWTOPUJ8eHm4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3fveMHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3fveMHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDE0C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791743433;
	bh=hmHXYinUJXtydG+OzME6oP0gejXbLEK95Hf81BRP3R4=;
	h=To:Subject:From:Date:From;
	b=L3fveMHLeaoi7rwi7xlgcyox1Va63R6I8xgUrpUs3Ut/9lSXwBSd+ZKdvRsjVhvAs
	 oi9+w9fI1EbjAAslvN9POWsixvbf4i/ikG80Lpa4ekNwFE0bdX3LCsyOQ6D2IIiBDr
	 dNEzICTgURFj5QvGKsmT50daKs5o3s21SC005XAWhlkF2Zmi3lQIA0wkx/B/Ya2W7d
	 zONTTQGBAh+sjpWw+mmGGzxua6hSWKs83xEIC5asxpgRg/ywy33KOVEikbuNBp8W9M
	 f2tY/IylnleXZ1/D7A77bIafAU28sxIgeJGHUojsUEgz7g60lFaNZuw3vT9B+o1Jty
	 PMZagsm8L/ZGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD58CCA9ECF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174343368.4458.2433947189652027375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2381d3649fbc2ac6a830c161f7147c60dd5b136ddd70978fb04818dc11439fa
Date: Sun, 11 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791743433
