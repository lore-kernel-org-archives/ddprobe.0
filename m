Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A7E24337B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771984493; cv=none; b=BiQ8agwQhYAftU3YExtL+bjcrI72KEqMpwwmXwXpjvj00dNLWNqktsxvyAD+V0bP8Y+3gfpocq5l8839GDnS8MUmjR9AkJqMzC+cL7nKwqM+3jQpkZFTgIWmlr4EE7NeSoklHIqaKJhs/PfI4nG9pFY9PRU8GQVAxoMmratrsNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771984493; c=relaxed/simple;
	bh=oTUiUsTgCdo9yVQYgkI8ImJDWE9nDAM0X7LL826i38o=;
	h=To:Subject:From:Message-Id:Date; b=NWkaap1TN+8MhT3bMA94XLz+SPtXCVnMCxPVb6PCsIMm0JshOlEAVv+MQJJok00uw/S3nAFlc7BjrVSMXROJz0mJ21ddk6BtXNuZMkHDKmTOfc/PMwX7SD32jmE0YYK8GeGgrZp2BQb5vR438Ce4nW7pyRT2TLkEuc4mHXY5jOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jibVTS2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jibVTS2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10B3C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771984493;
	bh=oTUiUsTgCdo9yVQYgkI8ImJDWE9nDAM0X7LL826i38o=;
	h=To:Subject:From:Date:From;
	b=jibVTS2ofQoQRMsu6xEAyrXIZS90H6XNoNB6m2XtYWSooloeQ5u/zpnXz++nZ6Szj
	 tTb3K5ts3/xeqYAfctz0qWBthGxvMQWE5hiLmaJ3pYRDqOx9KdYf0E3O6cYugZAKjz
	 aNpg048ztQLRHtPTvXzC+wtjr78OffE9sS8w1ewylMuZlTnGkkAmllkFvr6QuoPAe+
	 fcRzUAVxLbOBC+1lvkvCCilUiql+VIlvYGh4xYw0zgSAdkw4KQTi/qTThQBV62XvW6
	 h8ibBup45e4p9UA/rWjSOA5zKAiGdJWxNUFcn/WQDQ+bWNfyakHYbdh7c2AAPx2r7l
	 TP4FeeCaadb8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE7CF55438
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198449363.23474.10051672718919078666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389d139b29d60fbbe8653126d2d04bfa20385e982944cac2e3a6a2d1f4450350
Date: Wed, 25 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771984493
