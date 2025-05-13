Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4A12BF965
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747163394; cv=none; b=Iqz6O8/jtx525mXWPwDgsylnM0Y93PdzbKnJI8tkUjjPRw+AatcBFyWbYhuJ+PfycW/lv1kOVkHoPsonehifVob6f62tfbpnS6XIxxLrZD6YAEluiVSlgyRJ7nU11do8Q2paK8VgqaFL1esPlZ/UYq4RP28dVmSDuGe7zkVSbHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747163394; c=relaxed/simple;
	bh=fLVeAfP5mbVpokK+uWpLNcDUNMq7UlC1pvhJCAQZRyk=;
	h=To:Subject:From:Message-Id:Date; b=EvIqf1vZazS9O12+4YJf6sK54pGDRLHKCGizwUnheSWY74LSx18ZqyR/hzFMwCPyOC2MWX/f98wiyJ+TzCczG1n5vYRXvrRUznNzEtRNzJcJIzgCgUDjKRsYt245LS9VvcQES/QCI+uDfrC6T2NjrLqmZZn1ZZ3KutoNwOcHAeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJ/KFCte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJ/KFCte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E811C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747163393;
	bh=fLVeAfP5mbVpokK+uWpLNcDUNMq7UlC1pvhJCAQZRyk=;
	h=To:Subject:From:Date:From;
	b=BJ/KFCtetVVoi/QPraIvaOMPaZfNrpNnNAuq/d4GQU1EiK95sZhpmVDVPRfZIhvzw
	 +tctjP7gT87hSflZDBIgF9jCrA75+ACnpQ0RBnMZt9e+iu/1J9F08WvESTi1s8rkNY
	 ABPCbO10Rdtn1Q6Wncd5i3eRNv6kjz8Ehsgf/CO9O2vujaeh3vsddda5zIMRxekxt5
	 n2U2+wJ4vvPzLTzjYmsmjR/akGvt/08dmnWaw4O5OowqKr6n7Dd19V1aVZtt1a91sS
	 zLnGUVCH1n5+VjYcOnQ6vsCLRiQW6xa5K4rlOY66q/aJXtONwiFKJ2dT9OYlaaLCWa
	 fj9iPAZu253VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CDC3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716339357.23684.13384117025116677268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fe094467d5983118a857686ac617a876e2753963758fd2d2e44d6b0c63ed41
Date: Tue, 13 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747163393
