Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15887156C72
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728146154; cv=none; b=qzsK5LixJQ1ItMA5RVwkCbwcGR5UfJ3Jn6NxXM3ESbl91Xg0XegCh8pdm/viaG/JQHiX0ySteYTEaDx1gDe4BWZfNy7yHC+sF4O2vWB54xkz70YFTrpT3BztERnne+RjEfpcY+gmbt+NvWsPGswG4ELlzsSuEnL0l1KvzDMX3hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728146154; c=relaxed/simple;
	bh=GKb5r2q9SmGoXo+CoNg5vd7sTqb6mOXFPjX7m1MlCog=;
	h=To:Subject:From:Message-Id:Date; b=tn3bYw8OJK/lMoauJpI2QBuCdZoEGcXkWbzYmTkT5I6E9h26YN/XY1Y4nzmtAAAVVszjI/WLWxlGh8QrjGwURNwKteVpv1Y7TINAPb28KxcODDbSEticsbd35UynqS4lBWWSsL/yJN2FY2TV7pW1u72lRiMF1CA3FBRu0DzwE/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ak8WU4NW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ak8WU4NW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F1AC4CEC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728146153;
	bh=GKb5r2q9SmGoXo+CoNg5vd7sTqb6mOXFPjX7m1MlCog=;
	h=To:Subject:From:Date:From;
	b=ak8WU4NW5CuiV8qMYjUQ5kSv4D/VjAKh7trZpzn6mQdr5f6Ai7qKv9BCqzy9X7Hv6
	 ks2bPj4BVJrUKk6WbRO8kpLfAcx6aO3e/B+5v3SpSNas4p6atLN2OH/3BdTWfMJ7RG
	 HfCCMJvO46pEVxbJ8MouABCcb7oYfvEe732tjj7QFcL117M37AmFnPgdLvHU8HlbLY
	 xySbWiKer+mLApdEY+WsXnXWfM8gu3V3feDaoPBvcz0Tvgg+m2BLC+Fjv0E+UFhRLw
	 elzG4T5cDWiqLhdSxEn0xJVXzcmnDNElHl+4YZyqSygIp09wW3xqxl6j56RyYF0KQu
	 MqAKvx+//E/qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F41CF34C4
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814615359.15449.6732089473949049349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b7c77ae866d090ca0ad79efa8e59a52211b83a9dc1fff7f8a9fe75fac6af6f
Date: Sat, 05 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728146153
