Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6B621D004
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738799754; cv=none; b=cYoqKZ8Hk3lhlnV6+eS6x+wIF7/uoO/lwoHLVBpX8iCd4BG4AFRySGn571YYSh80QkGJBr43fs9glDEmDGxZnKv7iyYn6mE0BJHYhzAOZi/Mz3MChMRfe17szyLXU3L0pW4B3z4IjV6D9z3pAOdP6ia1fwmdzS7fnGixiBrLcVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738799754; c=relaxed/simple;
	bh=2jVzmBcLdJ7ofiWtlNmDAmFloiXrw58N0PYLTo84y5c=;
	h=To:Subject:From:Message-Id:Date; b=Hr+Iv5FfapFp0gymn4KvWAxZoLsLYlwZtiq8vxYfBi8htIq1b5vnHmPuHGyOY06+MC05a5AX3+eBqBujLfsMx85Q+GilohCdG3WIIEU9nlt1Gfge8hagA7/J+2v4KwlSILZ7LMZ5jAkShYyI3CRsCQ+9X26N16HHHpGi3kzHmyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAw34b3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAw34b3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD15AC4CED6
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738799753;
	bh=2jVzmBcLdJ7ofiWtlNmDAmFloiXrw58N0PYLTo84y5c=;
	h=To:Subject:From:Date:From;
	b=GAw34b3QFUg69y+DNIA4FZUMw05TsGK6TzeadX6QAyBujIYBHSpkrJBy+0Jow6NXP
	 Gb+3cO3VO9jtoczctnYy4HJJCp/GPgao9EuAH9TjaseHk9a8xBwtcAoUaBPfZ5zmfR
	 ZkBYy/XUeSci46euRKh3fdTqCZrxfcUPqC3xTGReXVl9ozVl4fWEguZCTPAnkQ+GLk
	 l7h19vsiDpEET05FOJkdULKRKSlQNWyxcYOJqvpfzkLMq+749j9nkVFLIT5E2742j3
	 +TPBGgn3CmR8sJIn44Qx8SB7pF7OgZBsPO9KFnn91hiRCH5VNNaFSLb4nnnH4195Qn
	 Afhyh7pDdlTXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7F4C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173879975359.1913.7229941980288757358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de37ed57e4f5066131dc752e567c4a3ee3907ad2e1d46235894ea0b3823da0e8
Date: Wed, 05 Feb 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738799753
