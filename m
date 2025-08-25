Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164092AF1D
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756082394; cv=none; b=CTPuH6NqwSsUWPE9XtQCZtJU6fMKSkQrt6uPswk4f7I6mPkrEi5pt+oAvdJGXcQrbOcyqC7HM2l+Boa/p0IWWtKYLRjTxCtbOa0OIjNYIy0b+QfrCNQDkCtCq0PDKUXcmWvPAFrsM4HfJlNjG1hSD9quDW4xB9f3ef0VfLBn3O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756082394; c=relaxed/simple;
	bh=9MOMyzJS9tfuy4VEQaNROvKwdoWHpTnOdvLBX3SXmfo=;
	h=To:Subject:From:Message-Id:Date; b=t7mrOvzzUik7bBgV1/LwNzQh6avU3NUTcZNg8ZZxUXl/ldh/6BLp37rZcvB50y1WRcQUYd8OiIPJXNo5OEUbiqiswvli03Z/o+cB93JebmW42x1En+/zoRkF/ShxXSw5nprYkXowAUcJE0xaIEy0vXM/5g3jtoIRC9kas5w4vC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9Uy5MGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9Uy5MGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67FCC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756082393;
	bh=9MOMyzJS9tfuy4VEQaNROvKwdoWHpTnOdvLBX3SXmfo=;
	h=To:Subject:From:Date:From;
	b=t9Uy5MGEzmHufvC8fPmhBvQjyxU9s1QWXrfmXhjyq08RezOZq5dO2Ii7DfrnE1Via
	 H+K/L+GgM4a++N/LpFZJhJortTTGfKM7CByuIrPhk7CpLNOMgbmFAN3GdluOR4WA0v
	 lzXVBhQcbU9+WGoHETAIt9VfMGbbrbeH+KlsPnYNMbjtYctC9H9UHEgxIC917fex2t
	 D/9kKcBHRrFFkwQh3naac/AqWPE7OCJfOezVDhE/O6sakOk+a+bP1Gdaa9xHeVo6ZO
	 yHHo+H9ufUlqxppRmGyq2sacOdzKZngu8BWgj4bGl6kqXNiNOmQDfyRX9Wf0lBahAk
	 ewz8tWNtLN6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F66CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608239357.3594.1358214191619808587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e89b5546a6c833591968645884f572fe3963375e745b1fd9282ce9fd06b2f0
Date: Mon, 25 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756082393
