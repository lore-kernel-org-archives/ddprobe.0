Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDB5171CD
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724046954; cv=none; b=HN/mhqxmnPoL23sLUOUcrmIjAHODj+6yHIzpWWUJYvreblxIKctlgZiKN8qXgLL+oL9fxGEECJicakPXBhG9Sw/8xIRO3OwHC8nLKQ4up9ULcwbnS7vkFenzEFnoX6MGm0ul9rR3/7iCEd+t6sBmWbwU3WWoUQHQJazHqm/XOO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724046954; c=relaxed/simple;
	bh=yzKsZ7abcx8OxsDBkiUlzzo0oYukFysrJ35N53U4X1g=;
	h=To:Subject:From:Message-Id:Date; b=FcI6abQPFjngPJvlfrGnavBCOui9HAOBbOjRLk+8J836P+lhq8CjU4SbKQchVvvSoreBPYuQsuaUB/niW132n/EX6vh8DHov9yGF4TEziKOlgCrgZA2PfNN7HOVzeA/rCleMmu4aAwN/XT0cAwZ6pqw/j9fjiVK5eJ1LnqXKPKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuxLWjg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuxLWjg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AE6C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724046953;
	bh=yzKsZ7abcx8OxsDBkiUlzzo0oYukFysrJ35N53U4X1g=;
	h=To:Subject:From:Date:From;
	b=LuxLWjg5rdQHpg/0UYZbnh81Re+T7IfVCGjK4oq3Ymn5/QNdDy7HHjNvxdJlQRKYi
	 gOzzgsziGHrg4eXM4IMhLwR9jmKPx7CqkfexkLRrMB/9TQWoTvZdmyyI/ho/Z0xB2i
	 W8ef7Pl7N3Q1bYLndUxsbLlB1liUbap45ZrQNQA0CZXd9eAIiGKFhoaJUyGnuwYAGw
	 AkA/FSi9lhEkVCvcFQiR/myIAPsedVjFwxFyceTVI+c6DjNE0m9UnBycWu0DHUjEXC
	 03xzRGuNfhlXLxqWXCwXhFafZR31CqfImQnOgH8lM/CdVMeg5u8tnCpydwm2RU8hwK
	 p2bI/BUea8joA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4B0C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172404695365.26222.14705225927351278703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a248809c3de7a21543ec0ccd8d1bf4b00af0f49c046071bd9e1f7438b15c4bc
Date: Mon, 19 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724046953
