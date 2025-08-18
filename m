Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8A61DE3B7
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755497994; cv=none; b=Ms1btkoYFHXiOXKaIlTfVZgs7gry/i2KH8k+xE11MMCbyg+V4bZnwfr2OK005Kc9JQRZPVhrDhJ7jR/U7IhZxihyN2YiIQTvFpGUoTOjBUsLxnTjPMoCrz1SI1HCbHZfF7r3OYibfDQRVgcH59Whi0E58CPD2MiqjN9F76DWprY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755497994; c=relaxed/simple;
	bh=YogT5au0Bhg7j1nuVJxUanD4UAdF6Y/8ClO1yFxrMg4=;
	h=To:Subject:From:Message-Id:Date; b=cNoUatw+EthSYlJv6mrMgzznZutFzcpL+R85VHHth1pAOUzB3QhFmIVED4Aup2hFXScufN+wERhynuQp2+6avR08owCTrKFXeKIYpq0unFpZ9cqZbWhxNJG8alexpf3sLMevvt3jpnOP4l+LIiMEXN2IRp7C7FPpqFX8oagjW0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDox2++l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDox2++l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB8C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755497993;
	bh=YogT5au0Bhg7j1nuVJxUanD4UAdF6Y/8ClO1yFxrMg4=;
	h=To:Subject:From:Date:From;
	b=YDox2++lfN0MkcUlTHqHFvlNyFqdlBDmTs2+lg2Dr9ixptkO+y7aLjGJ98TkOa1Cy
	 9pbk8AAIdq5F02ZZ/PPyn7EbItXKVK2xaS9K0vT/D9NATF/lYy3+AlBBLRSDjJ5GaU
	 v9Bjw6IMW17DyxspH9d98t5E7fIQvsHd3KBA5viAl7VWQjtNH8WvpegHrwA4xed5VJ
	 1aArYpYBlcVfYhpYAYNhSLQfk8O/u2mrG+BYqgxXMigs+oz0BaPB37dyKh3kNYnHT7
	 lAjEPK5/q7X/JbszQ41k8u78ad7ZE1UV42OqAGzKhCtSNqKDWfRxFMVMk5Y/4M3H3k
	 V9cQQ+FlFcggA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E890CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549799357.7090.3264851300419906558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f91efaf58b6ea39f3de130e74dd192b0c224c54059d9880a2786b14086c9f99
Date: Mon, 18 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755497993
