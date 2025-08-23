Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4B5259CB6
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755949794; cv=none; b=RkXaNR4GvZbxQzIGG9T9mRLpSjsQ2F+/0mpVdp3EAzy20d5eh90tbUhlLoObGsCao59F1yBKwzNc6wGDzMQlcJJHgkC8Kv6tWIQqKooipbEGQjSXFp+3ma504HX6gIYkMitXov0RSM8u4EGfyTcZ9EU19HCeAIZT3PLFGy/v+04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755949794; c=relaxed/simple;
	bh=C3nsxyV5FDr/oQu+VNZWMDa28XZPJ3ovBSBHX3J0xYU=;
	h=To:Subject:From:Message-Id:Date; b=TXeCkhR+8iqb4Vmze0NVn/0gLl+qviqUYLs2I4v5EhFOuJRTnK0/6yPQI/kXTAoNU/xadWwgwkAeJ5TKOflHXKkWWfSqOB/LBCzCfDgbMgd4NSZGgYl54HACHv1q3I70kt42c1WT6yaH0i1CdFlttd06tbJRPauA14Mw1kFSWDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoLdl3Kv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoLdl3Kv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE9C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755949793;
	bh=C3nsxyV5FDr/oQu+VNZWMDa28XZPJ3ovBSBHX3J0xYU=;
	h=To:Subject:From:Date:From;
	b=qoLdl3KvltFItY9rSDpcvBjS6sK5jnof+4Ec62iIZceFDTSHZA/JTZ+aEih3OL+u6
	 HMWzan4AGJSEj9SAOsSm6YCdP5pRZb0jPrD5B0hKap1OOhylOIjHqtY4pjQqSb9Z8b
	 j5nunxbi76wVDAS252puhxjzzZNbFOROjLhnwY9NfNmU5Ro8/E6qjegeqaaDdWRKSg
	 mRJQW/4J/o8BEDn2czyGgB5hkILD1H3sCZqecNPp3Sr6YpauCTnPibCGMmyc7CSa2K
	 Tx7WtEggnxkHBELnkrqF0c/MqcShdOlf4CNM4j/07m7St+RTKpdZC4qmImuGOqZPE+
	 07FJYCtgsSBjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CF4CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594979357.16049.5702279005141803455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d99e0a56c6b72074361cd2e458d65c7638e2034a03bcd40b01913d407ac4bda
Date: Sat, 23 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755949793
