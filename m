Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C7C280035
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765337574; cv=none; b=rPG6J0vK03O2qjA0N/myYBGT4IqoF21M9Y4qiPvsrPlgF3m2IuOD5sphOt/SOMN9L/jYxNUT4CxBJu+aIlaKWGB6NW6qCKIMZjdRSCoBMrfxCdCD3QYx6e53AEGecPIvG+l+D3nADLsnPK2AuWWxtOCXnQdI6LT1qyQiP2aJNXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765337574; c=relaxed/simple;
	bh=PT3vCS6rWi8VR2T8G5j48JPrQHGFlLSXICCFO7lnHcg=;
	h=To:Subject:From:Message-Id:Date; b=snEelQ5qwFwZf2AimtHZdV/b6MUqj/Qy3SZCKBhEep504JBVexmCcABc5jXwv0hiAgjc3fj4N1gfHR7TRMWgOCFz+EZCV2I6UjWEhfkmMKLfJf9Jjbvyi+VurI6dohCd0JkVlfuSGlDE5VmKj+8rD47PkRWyy/LX5zR8cdLrAC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyPUoBv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyPUoBv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B08C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765337573;
	bh=PT3vCS6rWi8VR2T8G5j48JPrQHGFlLSXICCFO7lnHcg=;
	h=To:Subject:From:Date:From;
	b=QyPUoBv9v1NJZNGss4RqTI+Ws5TFa81p7/adcjAOmjmmEwgFgYJ8AfMm7kSmhbfWx
	 hc+W55Kyhpa+y8htnu0YXxzLpFSSSkeLKVJHXZWNhd2dhkiigG49RoMkuROU6N2byw
	 jOXZJew4wREDtQr70PPdnryhPdwPgmO3FYNq1CwskQLUa8DoTkj1tn9nENHpgkbshF
	 2nCZVsrRfHhXjOxdcDrac8iF1WkVKWMwUe/cNdhA3xdx0D3IYBgQLmxm2m89aS5ZVz
	 Gb0VwoDHezVVFV9G5q2BW7FK6j7EDotP8zSFghMBFxUdg7TN2pwuGZFhXkKBYg2EsN
	 So5VSlGHhgHew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9270ED3C521
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533757358.24422.13980558881921651412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee8268bb4e6ae4636b119f973c54100e9ac6e91c150742c4808fad69d75a4ab
Date: Wed, 10 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765337573
