Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763C0155A30
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755733794; cv=none; b=lO8pTtIe4Po35WGbQ75LktDhfvFujOIkqaismc/IWiyK77EY614lwHPVbbKSju3kaa37Eb+GzTU497IkmP/PEeCWxxlNgtuo8FEYgmHMyI0gjXxtgGjEL56FXZSa6nKzJ+iubaGQXSMGczhSlPiCUnxjTrRrICzAABzrmaakICg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755733794; c=relaxed/simple;
	bh=ai2YaEQ7G6WEUPX/3cXD83vWWe0YBEoU2WEoRvjNcDk=;
	h=To:Subject:From:Message-Id:Date; b=qGOqKNyZpkbnR/0hJpciOFdWktjuNNlbBXzBkrOjjeDTl1luzccRs47VgSU54Jkijd5jfcibJCnKE/IRjYRtTcxj4uZH5AsNpGCI9m4wrDlCgUNDqypHhp78yHJwRAIvctLmZfnzAnjXDAi7NepDopcXTzSjPHQlVQ1tUOJ0ehU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmZkUm2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmZkUm2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4803C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755733793;
	bh=ai2YaEQ7G6WEUPX/3cXD83vWWe0YBEoU2WEoRvjNcDk=;
	h=To:Subject:From:Date:From;
	b=lmZkUm2MssTo3QvQ2MksF1zigpWMduOdFWAy1A1Gj4eMSL1SH97csCAUgQN46MKqw
	 4tABPJClZI06xMTlGzj0OBwI4V4uE5q+st+vHB/WoEaGwAcyw3cnpbcW+NrUEps31G
	 EGcOdLCQbY1RymqKDFClX8yJ+K5CCQx0o4p325y080SgTu3M45aTwUygv22DMfUKpL
	 Cg7Hk5Yn8TDgXy5lM6D384YYUc0FE5BOQ7etyqAuGBlabUAwZnTzysKUzXnUJ42uLL
	 ozAIRV9fm5p2RnYLWojm1cdic6EWp/X/MfPbRNwjWYbidhP5XVgyVvlDdUp4fF95t1
	 2xIvbWn24J8vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD93CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573379357.7043.5315252205918848328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e742049fd338f1798f0d3e115fbf15efed61ec46305f1bf085b7d15d68e8e8
Date: Wed, 20 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755733793
