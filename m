Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2684D2459FF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749631794; cv=none; b=qarL79ZlBVSAvi1tiDQNFNg3N3wqwlFWDepYkU0pCtfGc0oG1nI9jc5qmNccAcJ0xdgu/8F52XuNCfZ1NC1xAchrEIMvqkNTJixo2AeCYMlfMVUN4e0JK/0m9i0PY3WGdF5Cw3shUP2/DAE7b8VDorUerFXm4eEkyXJhlkvU+v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749631794; c=relaxed/simple;
	bh=0aeKnhWL3fV0cc9L1433iywQzyadnBVPuC7hL2sasoE=;
	h=To:Subject:From:Message-Id:Date; b=Mjfitx63Zd4sEFktfaXs9hHyugUL3Fu7uYd3+kngn4mfruajNunuEWHj5DwqxLTlpFSVC75X3hbG5XypHVHTIR5345r0Gpp5uzL5HECnKTBlAHh6eDDfpHvplzEpuhCpNgzixcZyAQvnUaKTyfdwDZsqemZRBncttPIIeieDuEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHQg5atl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHQg5atl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B29C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749631793;
	bh=0aeKnhWL3fV0cc9L1433iywQzyadnBVPuC7hL2sasoE=;
	h=To:Subject:From:Date:From;
	b=FHQg5atl0LinDBfopSxGu3hflLlHIc9Al6Jln8Gh8u948tE2Sy+cU87EskDXPAbJ1
	 yIcbZbz60VnI1PxeAWn6Om6u5lj375zLFFnwgmAXTMsEQRnzbGb8GK2kisdcdvIukO
	 1EVNCB7IbbMTXmUvkJdxCXCPl7djFGP8EOUDgORd94EDKVbcIhDXfKfTc5Hyzyyj00
	 Cpgor6ixvtSLSeTvozvLuH9aqTqdWQU7YadLkB2/YQGeXo6O3NeuHVaxQycUrRnNe4
	 fQUkfNNps3v6Nl5mGemrL5Sr8/K89wWEwXRC96h3y2AOj4ynohNt+pKUUzLnH/fcEM
	 4jZ/cjkFM5ZbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90193C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963179358.13461.117778190319139125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6239e211716fde04a638e410d45982444c036ebcd8a0c3734c3d14e99175498
Date: Wed, 11 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749631793
