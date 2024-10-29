Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288202FB2
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730177754; cv=none; b=pIUq8ov+k14yPnTYmtwV+QQvYc5ZVq4xBkw7C1L5mMcPvfjppXcFpspUlh0CnDHqidTyK6FXBvrgBby2Xadj08vr1Q/TqQnjERhzam1tBxIUiSOARjYU8PyfVGArERSfpScLc8MceiCDTQUZyHSZLDldGqrF1AIeznFepNkX1hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730177754; c=relaxed/simple;
	bh=7+/4ZzEUY1rVXZls0Rz7/qwLdFNsHKy7SfmWmmCGBiU=;
	h=To:Subject:From:Message-Id:Date; b=hbGKiC+fDua5xGTo4+rO3N33E4jIcS2UfpQOlcU0PdlFmqPgQJCdNSm2T5yjb3oUt1Zs7QJ7cvLXrjFGpqc4fBeoghiN3RAjUunro8dhxa8zczLbOJFAbGSDlngdwbAY+ekj+uyvixHjVJ2IVmCRBfo8mO+1SIxPixqoR35nAQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiGrkV8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiGrkV8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1506C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730177753;
	bh=7+/4ZzEUY1rVXZls0Rz7/qwLdFNsHKy7SfmWmmCGBiU=;
	h=To:Subject:From:Date:From;
	b=MiGrkV8sdyGWjuDhLusTHP988eq9qRwf/xvgWET57atyjZ030swUWoGcqxWesi24p
	 lrwtuyikHnYJvZ7fmwbovC+7BNQBWKPOsm6ZtiSRLjp/8QRJZ7b8EuG6fWMf+Iv4uV
	 82jRDb8LxMlSUH5Sg9Tl7K8QNt8bf63pkiOpSI8TZYR0giejv3nj7CU0GjTOQcpty4
	 aTOJhoq1yAjqugo+auz1XBGPRdkS2YnXnxTt0Y1oCa005/rWUgAQ2UPD1lR3sVHcnK
	 FpHON7GALGfmG9N3UHaJj4qzhqXDnplzH4OOHg85W4mEEOU9u2GwTyzIGymvpgJrBJ
	 rgZSIYDPJFpMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0C5D5B874
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173017775362.12773.7158511491040880478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9110dae2aaf17d27f91a83423ca9d0f348516d867d17bc7f15f1571916cbd15
Date: Tue, 29 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730177753
