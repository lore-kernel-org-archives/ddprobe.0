Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C572D876F
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774172094; cv=none; b=IwOfWsbxcQv7GTmC67+ss9aNPBGnM3tUg5tv9WAM3IvW65+tnh4z5ItX/AXdB2H8+1iSJZ9knP4sAaalD+qCO1gqJtTmzS9V1pd8fUraw3dQaO8bXdCP1jT+smX//xwk7tRSqYrlAwwAvG+/XcP40vtxwVIjBdSLjwzG9Iem4CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774172094; c=relaxed/simple;
	bh=XAvYpFQ7A/2NmTn9cL7hYfbZpDQ6GBRHsrRYLyI5tko=;
	h=To:Subject:From:Message-Id:Date; b=Li1ujDeNKoQ4mMrIX0/ifTaH8VSs4p9cmLFUguwJ2s/ZdHT1blneGvjynB0MidgKDOxqtfOuqal+nb9JVOiQAl9R72RikfL7U5ZihRYJhH/31nLRLOy3HIL9iQ7TeDWItWaB6Hcgf17rq9aGXvN5ZVbZf22ZECdDpZQepR9kWDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hk8EZHhp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hk8EZHhp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1499C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774172093;
	bh=XAvYpFQ7A/2NmTn9cL7hYfbZpDQ6GBRHsrRYLyI5tko=;
	h=To:Subject:From:Date:From;
	b=Hk8EZHhpyI5ty7C11Ul2ERFEy1xDxBAk/sOA0OXtru/1GGRhPKVOWvc4DM4DqzizJ
	 aXpwwsNDxigA+T3dI731oEqG40fIN7Lvq8a8rTxNMJd5SMtXUTRe1giy4NnBABnJC8
	 R5ptDG6I1vje8eFHCGC8NDmWwjxwbtsjtyDydrxK3qlx8yXb6t1I+G8Hm/ZXlk2IAh
	 pSZv6u01bJTMN6MxpntWIE2xb2W04TQB3w33mXlGInpiw5q9yrdvG2a5LK9NjSQZJw
	 W5Tzv5/JyHmx8fAZglNdcPc3RB+gbMPnR/3cT7jJ75B7eOvALIDlpILyTcXo7Jn0PY
	 zbEO/tYDjZtAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E70FC72AE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417209358.22317.11327570848925307021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2f19531c35e7b1e550bc39754ab103f576f3fda1efe092b434d1a2bff998e1
Date: Sun, 22 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774172093
