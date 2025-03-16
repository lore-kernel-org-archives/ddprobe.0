Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37303139B
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742129394; cv=none; b=OGoj0IQ0oK7WZR2Nsjz25AUjZve3YDG+wAYgg2v51J9SGULQlm1HkiOJFTtptrGSvmMCiBzwEOtNGuE8JwK3vOQ61zLTWKB8OyzeBqoBOvrPa+SRZ3ZnkeOrKcTERH/femnQs+dIfXQiVcRCIl0KjMZQLiZCVajykQomtskd/cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742129394; c=relaxed/simple;
	bh=DZyOTQ5d10XrJJv6DyS5eblGNz6axsEpm2EldhbVWVI=;
	h=To:Subject:From:Message-Id:Date; b=rZMChqhxXFmWpH320x6gvOPUYDNhjPop63evUOH9eo9nS+/G1CcOtiyFqg7rGvPqm5B8B77JWPMwpnX65OV5YGuDCpCgWTj0h/K3NEXF6C34Zs0uky9KSJ72gFR4XHXciUGSKVm3PLANuSYQg4QYG5j3xGSP/Mi3OX2DyNvnqn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fa03hwo5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fa03hwo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0CCC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742129393;
	bh=DZyOTQ5d10XrJJv6DyS5eblGNz6axsEpm2EldhbVWVI=;
	h=To:Subject:From:Date:From;
	b=fa03hwo5zSt5TC1gSy/b0IVysvkyIvHo2ZskuibkVVE7v+6ppiKATPCzsRjY4wPiX
	 WLCBkP3stAjLkBLMBR6rhHzv2LvrUKZ9VYTqL0zgUokL/lcOsoXHHJK+80JqY2Csts
	 w8jk/WMVQjxaqqJ20Uk8dbxiPRK7CH1fy1MBk7QLWbnEsaiBv1c8+adDKY2me5mk2R
	 SKQBFdLFCxXwVIG2l+7pJ9pfAWllWzVpyF09yylk0914cKvl2SdTqzycNOTf2Pfj3u
	 uQCgoe3wHFEn9xtsXHjHRtSHjYlNR6P17mgCTXV+MHGHPfVHNN8WfvEEKhbgu27fAh
	 +iqkZ4nH+15dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B542C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174212939359.9094.5764892537314859374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f672a1938b0c8d2c86308d3fec9776929f9c675efe6f87dbb1ef54b4737703
Date: Sun, 16 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742129393
