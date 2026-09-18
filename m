Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB5C397942
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789716034; cv=none; b=UvOuevPcWDIOXmBbG9SksLLMRfUgGhOnn2eQbVOQ8otlsjZ+59p+Ivnj1A3XnZ0LRYJXzINxVx1Z6gHvlby8GqSghBsMyOmG8pZUC/7KCV46AqJoYvHQyP8hpT+kW2xLm5zLD41fQbcXiDKBq73+ZlfyHAj/XtdCCqOZ5IWCYjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789716034; c=relaxed/simple;
	bh=yOYk+M1bzT1PpHVznT4ULip1CkfS3Snxjxk8MwVeZuM=;
	h=To:Subject:From:Message-Id:Date; b=J4jwcwN2e7ZtknikALHpy0kDtBQ+qfHg3vK4HMY6QCTpttVf1vCm1+Tf618IYE1nNHfzWQxf5Z9E+xGetzaw0Z9QrkmoqgrxpbVvuqLCYsNqoUq+t4QdOwOVJw/B4MQkw6T9PxQ8FZbmdC2WeXMRIjwQs3h1YIMnyZkomz/KBlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQjaL2wu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQjaL2wu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF86C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789716033;
	bh=yOYk+M1bzT1PpHVznT4ULip1CkfS3Snxjxk8MwVeZuM=;
	h=To:Subject:From:Date:From;
	b=ZQjaL2wuPzaKpZ+r9nqUHwZTLeHS7fc6jJ6PH0YNqLX0EVI+ri384iEdwxtwnY2li
	 XovOSfbhGjBseXFw4SH6zrtklY0aTbjyM83RM4XExsOw4IiFIGE2C2yG1lPf3rhJRX
	 Rd0AZ9CuLae/DYFoqTLGdspXnEqEZ/1mwZkJUelBASvYWyu/k2d/bOqrRz69zgdW5L
	 P8w/xHLbo90l7BBnk4RaXsbQNihYvNyht3ASLTz+uQ13YSIiUxqqv2t2U1VoszQ7TD
	 cmGA+L7Fi5z88sbXluW0i6WUNS69qCevPjh6/pgfab8msqGx0+nwa4qBzjq5JfwEMu
	 3ECG3XJ6oIyRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98FEC88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971603368.15248.434042392635578250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5f17fab4ede66daceb5656c59f217caea2c0f0cb9c4fead0f2f9992dbb059b
Date: Fri, 18 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789716033
