Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2742A40800F
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783679314; cv=none; b=cvgidYTzA4CLB812JJZmzuvHqTHNyM2cOUm7rOR79B+XhDthJWmgPQN2eS/iGwc7lhDWvDI1DM3p4RpeKvdTOAgqreWzPtU0CPDCodYtpJ4+pv37Bj8sJ6AFbHgolTUqvM1NndvG/X7dj8mkGBP8TZzLyFgCgnZma5xhZaLwNMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783679314; c=relaxed/simple;
	bh=SJSI2kL1C7NZaoOf1sRpPGnfvJMsDqE3m5hmvDmK/DM=;
	h=To:Subject:From:Message-Id:Date; b=i/7tOO7cDmd/P60ZPid2BXtqAQUzAWpLpqXYrOoq1nkUOU/nTOZdNTPoxmgQAPn4rJDW2L9kDMCQ/NOea0R4LZODbTeJya2ZzRiXO2Oh8sYZTlM+6deUV4j0JrxLQcWnMCeWzfRyZatTuJROUKRTE1akwRs+pdfeY30srYFrzgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2o6hjaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2o6hjaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA403C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783679313;
	bh=SJSI2kL1C7NZaoOf1sRpPGnfvJMsDqE3m5hmvDmK/DM=;
	h=To:Subject:From:Date:From;
	b=q2o6hjaBj46KHyEjwLY8QwEHLiLZbgZLV0Pnu/D7KbNjw1T/CIlhykyUoee+YTvxK
	 Pdcjnl1f8V+nVMcFfyWIBab/TumMFE9ZQhUQzW2Fx/4CapsTgVn/IzGSfL54pYRTVl
	 Hk6UCxNBWXGmyEhT3ANWTWeHN4wBurzpZNX4Q0ZwqhG9cxEi+7HjRbNkeQFcCgECvp
	 0RUyCAYRfYCtsifnJmeFRbuLFSfaVwrJHNHx+CeHhNdF+CiR9LfPz35uDhHWPxoXcz
	 T43mNPdXLesOAfTErp7RyBOEycbvQnUrIhFQWHecKX7SCsu7+isygQLwS6Uf5hHhDg
	 gRANmylLeYjWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91E0C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367931368.20788.5922966367590342550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e23245601e5cbb998480c2aebe55828aeb724c4425d47df59a350e26a214d9e
Date: Fri, 10 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783679313
