Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3F841208
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706677697; cv=none; b=tszyppXardof2ruQynCzWJutwRmVWdUSZ6jGNp4bguPPytxF/6pNpO7kqOMG4OjikNELCfKU0F4rYvQT7aTosqxSJqol90ZJe0B6fg01+vcMOxFPq5vXsn8bHJ2aqd945Fxncq/qGL2IPijADhSBAswaVeswCTMF7UQAfI5Rroo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706677697; c=relaxed/simple;
	bh=+2oumCGGMsmBlZ+6GKwigQq7QfkhA5DT4vCrqyq+dUA=;
	h=To:Subject:From:Message-Id:Date; b=Ivw1ewN3fkOwRYgMRqqyjyrky1DazfBzZfwZ2QxbffbLVvXyMay0/uMPVYwNeriBIKDBAieCwPccRAfb/NZuyStGJSN8i2Lr2x77zorzBAB6/glW60RJn3YJfUV+V5l4GKm5xQFaN8neNtjhyswQbLVyqwcrWuE0KvjXmQcUJjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kpwxy8Fp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kpwxy8Fp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78EB0C433F1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706677696;
	bh=+2oumCGGMsmBlZ+6GKwigQq7QfkhA5DT4vCrqyq+dUA=;
	h=To:Subject:From:Date:From;
	b=Kpwxy8FpjWBeLF+bO7ANY3xik+6PW6A+X+GvFZosUk9JHdbS/cmCMbEf8FmOKqmVW
	 Txa1NWXjq9Be52hPVFefK0+0rZWse158XMDjrvHj3RrRz7zEfwAAdGtbSgQekSMkPF
	 0ykHh+U5bEzGB7oLy4X3o/YeMCDwvAWwXwMK2DT5SbmCUezXLv6GXnwSeUpJr24f4d
	 /MTPN5vb32Ze+5Oc8IYauPVXwg0SIzovvTuRUIIpeE/xZt91IaaTL0UrkgrbsDJhWL
	 L5xXF0DCbe52gmUzvGGXje+y/s8nXAnS2zwC2mKtJJi4WPwf9haFDWWeyv1jxYsrsq
	 Z27ZfyuMs7WSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA38C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170667769637.5799.12391441947198967951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393c16383fd5e04bdd167b2f9ca5b63a895b68a8931a26675cd8240d0389bb70
Date: Wed, 31 Jan 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706677696
