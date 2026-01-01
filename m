Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2259D1CEADB
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767233034; cv=none; b=sq7oS++2iEJ9Xqjdy7H2QF9KYdjPfao+KywTFlFaMBdGZpO/FyyfoaZTPDhvvF7IsXqPX4FO6bW4vPpjcodxWsb6tK51PgvRH4g52UMfmaJ3WgHBwyAGLqHRzJ3SaXB3w/s/jtsdtt9PAZDHlxT4tn8cuVjKeyOjXD/8kdBZBiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767233034; c=relaxed/simple;
	bh=P+2kkjuB/Mhjqh3mUWL2wDLfrm088F/2empOqLJByI8=;
	h=To:Subject:From:Message-Id:Date; b=tis+jJiVRmddrVwiF2zcTomTbbIn2dkw9a0iUpQrU4McJHkkKOqNjSHj9ZBgBbFdV+KiiWS0isLSlOuPdyBx1XwHmO8LDnCV20VmHlCJBdKXFoIWkd90Lps8zrrocU4yLY6knjTqST573/45+I01hVNxV/1OeD7MwB6zKf12XX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3pNch4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3pNch4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BE6C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767233033;
	bh=P+2kkjuB/Mhjqh3mUWL2wDLfrm088F/2empOqLJByI8=;
	h=To:Subject:From:Date:From;
	b=t3pNch4yk6IhqWpIqXsdcoDbSZuWH6utpz+Ghy7KADF5oq+GeqSI3fWw/Ob5f0KPL
	 20JKTZ1ZReEZ0gjpbsylmvsEEXdfUlJArqZQEYVJLpAeskC19VfkjCc/nHiKp8QfIe
	 U46fcMErmwgpzuCxOQuukb/qGnrFOMwKsPQj6au6gcTXD72NiKeRynsI1xc7fMZeoh
	 3SkExE6rMMAN4VmAYArouCk/zlK7jnLUW6J0wSUwvT2fy1Dt2U0YRCVR+GQySfArRv
	 fkQDD1gacXKR57NZHVS+j6nvya5Qc1u/VNUkDjIyKYSYrJwP3YqhY3Lsa8AFqu0uHp
	 2YFQCjCzNfAiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D1EEB573
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723303357.19716.4737101914541154311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb0f087a3522c13d1fa5618691eb652023a92474cc794fe525e572e908def82
Date: Thu, 01 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767233033
