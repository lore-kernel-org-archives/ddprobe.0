Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2522224DD13
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754848194; cv=none; b=jmU8qYOsQSPK5N5AUiL7g4xHZi85+UyVyBm/Em2uDV1zf+B6Vw6o/wofvsgPIeKVsTwD1vAijwYw1Ddj38k4ANZjSkHdKgRi1teHcnko2odXrgZtBEm0JgIMU8swatGeIPFmSfpoDjt85l/Ez1VK+8yFHrypVsWIIFde+X22Nmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754848194; c=relaxed/simple;
	bh=072O6/7ljII6bOZr2ArkKKUInWznVfCSKokP+k6avFs=;
	h=To:Subject:From:Message-Id:Date; b=dpAvgq0yKlsqht9l0DF3FHrVpN4v4URyz+9CmJqkyimvQJsMUvNrai8a9xN2NcksRysvzGnf/ryCym2DwtiDiqCIOfdpGKdG32XFrI2kL0FyOvTH4eRh8ps3bHXPt7F76J1wQcl5hxfdHV2vB4QXj8fbji3TBZtKcdVfTE8IGHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oha8US1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oha8US1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10B6C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754848193;
	bh=072O6/7ljII6bOZr2ArkKKUInWznVfCSKokP+k6avFs=;
	h=To:Subject:From:Date:From;
	b=oha8US1nYOU24aYORrMrHC+86NYab0Or5r8wG+6qvixQpJZQ3IJ37Xg2AMXARl1pi
	 fvv1BboffghpOhG5b0nF81nIYh0Po2KCLxoG87c+Tzxodrbsk1zIuqOE89u49WUnME
	 5Y6dJ56UEmPrdsZ3fd1etUIAOJzETPrUow48dLKKDB6QFzSLeTLO3JaO1ek3QfakBS
	 VwabfkTtyBzfh/+j+vY1eset2Sr2ACqG+e8lGw6aI5O5iVI97cUBpYgq0q0Z0KzOlu
	 GNTcAfWev54mKOZhkTZ7fDRxU63t4VB/qVHYlUQ4prV3zEo8mQLfG8KD1eM106kR5c
	 XK/v/OSqMh5jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC55C87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484819357.26389.16976864028230005780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa280bf9554dc870be2b44a31c32e20c73df5165f0f1cbf43c7dd31bbec275c
Date: Sun, 10 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754848193
