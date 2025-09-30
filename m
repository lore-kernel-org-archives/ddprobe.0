Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C762F7AB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759238394; cv=none; b=gqXuykvyHSzCn2P27YPzfWocw1tM6rb02amzTs8WMo5zs2emgAdE8ivF6SjNl1kZHC+uoAs1TZIzG8PHmxzxhMuZg+PtXG8SQTE4mycSqaqHaoK3CyE/6yCTX3fsMoxdwCKwcajou2vSQRb1weXc9lsEj+TFQJ/mTWj54I2RQEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759238394; c=relaxed/simple;
	bh=VDoEbvhAPPRUTaordhAferk8fbdEk2d1n6Ir0uL3ULE=;
	h=To:Subject:From:Message-Id:Date; b=fHaG8FssAM1aOkZ0f9yhKxeXCDxLySafbDLHJUw9XW2xF5WGwgK0mlXkWWHM0wkmoXw3qXfjcJ5uOdvjJR4UAMjwf+z7NL/nPHCf3fufrKICO7PmP4mxNLszxqCr/AoC7SdPFW014OyDdVszGD0Jlo1FfbJjNE/KzRooWkTPojI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpyIbqp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpyIbqp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3302C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759238393;
	bh=VDoEbvhAPPRUTaordhAferk8fbdEk2d1n6Ir0uL3ULE=;
	h=To:Subject:From:Date:From;
	b=WpyIbqp9s/FCEv4R3AxUIiLzbhPis5ZbK07UaGm1BqJW5QIOJllWcMrQFA4JQ1ZD0
	 T9z5Cd5uRrVgTZsqeKXN6mxDlwwJ5+kYWO549I2Xxiw88KI7TxTxlvIyJeJtiRDUNE
	 Pr+Ars7hrhgcYcOWMTvmQ8M9hoTvit/UUW8R1RBuxmzLdS0F+h0EfngP4KvesBDjiB
	 CO8WQ5MGkzQZFKTC3ZXR/udwTpozJjAzR3Qt1DUSt+QQRPGXPVwoX5yWxyL8QSifca
	 JW0XHMRgyO6VB/ezhoNkm3K92PBTEH0WwJg8dbyQGq8L0er5v+AFexjwemOQbfAiFJ
	 zlPGHJeNq2h7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911F1CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923839358.9430.5267017956887060053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b4aef04fcc9cd8ad23d129baad4c85cedec18076b31b7bfd20965c7dd47970
Date: Tue, 30 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759238393
