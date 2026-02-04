Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AFF27F163
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770243834; cv=none; b=IkNhrlysHaKoreS6YT2telWta7ObL5Y2BxbC4rSMtDnsKbGqg2WjXL+0BzbV/nGKykIeXnm48S5rg1IeVQvph+mGCSgVbw8ULTmogb/klmdshQpXxO20qXsccvpWcGgbWrtaMjpYGKqZDEobmdyqDHG5G+Get2IZJUMg30tvoks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770243834; c=relaxed/simple;
	bh=kpZkUOFWlTMLzYiwIMDBLCWgzz6yaCzN8vdFEzkYt9k=;
	h=To:Subject:From:Message-Id:Date; b=BW7vymPo8GMGySd12PtrMqCXRfiQ03nQVhdRFWE+Qz/fX4k3h2Z+OMJvB5qaJjZ5BVr7KtfGCu8LSYEug2qozv9+VyGAFwYGQHHra72zUm0MZERJO4O3CxqEGkCQ3cdzYebl0OOvcXfCR+uWHAcfCg53fpkfEI+lZwxrOSo66rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8b4BSL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8b4BSL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B73C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770243833;
	bh=kpZkUOFWlTMLzYiwIMDBLCWgzz6yaCzN8vdFEzkYt9k=;
	h=To:Subject:From:Date:From;
	b=q8b4BSL63JY0Twkgxj9HpFHBcsKWs2xVQTa+50+nSUmNjiAFIfJP7NFgJjzUfC2nM
	 kS2rimEc0E/wD04xmLoS32aLA+pzQ8Ysx6SAHdhezpIuWefB/qvT3t16zUGQ+hm5X3
	 0Y1uRREsnO/xuJ5bV+bclSRQP6dbrZJaIckH9YyJP354sY+m3kLNrbUD6s7IPWObW/
	 EprLtJAQYXQcphHmeojgyC2jLuoYrolW43dPFR8r704Y9S8GT+v8Z+t5tBuzlv+PB1
	 gP96h8afeP00xhWx8aRk5DpDD/+RlF+3PLiPIlNM2snkrDwjp3xHi8HzGr5qirHGkC
	 qrQPiNLHXg9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6654EA7948
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024383366.17533.16244763910515706288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b018fb762d559eca8cb8b7505141de217f681e8dd1a126d8c16fdfedd13c1c
Date: Wed, 04 Feb 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770243833
