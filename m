Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F36622AE7C
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745943594; cv=none; b=udqNbAYYsiDi4XVG2ZMp2zh1M+kcseeffBFPnQdkXgbFHLOLH0jNNXjWp8poaB3G+Mtp/Ez954b6Kz31/2COHH3EDe0e/Kz2BtjWPUsKr/meoCi0UX9wO8HRmRAjClvHb4hL11g4idT/vjMWHcxBo2gScxsctMe/MFdPZaedH8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745943594; c=relaxed/simple;
	bh=+t2Wes9grsEuY7nsMzcdRavdfM394yxxo9oXBQ+BKAM=;
	h=To:Subject:From:Message-Id:Date; b=eazlmHcZ0RtK/0dBnABT6zfEHEAXvBVFhI1RpxWrTwyKWod07SB0oXk+NVp4O/LghhrmQW8kxJc8oHTSNzbPS60q72F19+9dH4hfr/5bIcB/A7Pt1eUPK1PMmc2Am3CR6UPb3y+rVwm9IK3Ji1qheoRTB+Lcvt0xBkOs5bOePPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsMH65Et; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsMH65Et"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0666C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745943593;
	bh=+t2Wes9grsEuY7nsMzcdRavdfM394yxxo9oXBQ+BKAM=;
	h=To:Subject:From:Date:From;
	b=CsMH65Et0Xz6oyCxySl+f89CFRPB7xQta+P3T++Jsx5Er+6RnsUSadjyiW6CXp4Tg
	 RKCbDAdyAhKxJmejxgHQnve6E5/hB4Et8k5hznavK4M0CuUnodoFEVaxmN760Rmd4Q
	 aAk/Mvy/KYCbIO2sXtA+y7EpxtOgCFgMWXu48tqaBr4Wv01U1meiHt4Mze0eE7FM/+
	 PQ0r6HBQubD5yl3WNHQsq8IUZtD+YHBEIFmXOEXyPpQpwKUXUlhpZCcU3v4bP8i4sw
	 Oygo7R7C1oXDKNLygCuWgHEeolxAa9LDK05vrDw1pGg9ZZxHHpuh7XRg4xRQTGSIdj
	 mH9RRjCN/cEEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D8C3ABAB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594359357.31150.16687771666750774565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d57df13d5799e8fe23b7d482cdf6be8911aee2d8a767544cd9d6cc84f1f0d8a
Date: Tue, 29 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745943593
