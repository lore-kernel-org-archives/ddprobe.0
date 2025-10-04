Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7261C6B4
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759564194; cv=none; b=s7ff8ssM+Na9cWImy4rbF4NEdZqV+8MxNfM0j9TAAl/4MwsRXQyd5N2hvmgie76ylSvQkukig41PwRZAL4yuKV4ko8v0470Xcz3wKR3/AM1UJ7GNfOaRPqdYrvpR85lOZBZ0eVinCAxhcnm1TjwRK6Jmyq01INvoWO31ZZZ+wzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759564194; c=relaxed/simple;
	bh=sn0FkWIigRuppx2AhHnSXd1STFTyRLTl5ZWeHMwETJI=;
	h=To:Subject:From:Message-Id:Date; b=hs+Vj7aDJD9gFIR/IqwZBfGobBhfMfS9cx9XKLnD0YXZwUb07R8zbUVVhaedLwU25LM+8lYjCvJ1WBJBifvZyqJNYx9g7E0n5UHP/so+1QsxB506hHXMdI6H9KMdsGo5CU25p7Qdr+l2j5wgXxqcqrG1YvxfxG0uS5STtsF2QEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYTqVS7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYTqVS7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE8AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759564193;
	bh=sn0FkWIigRuppx2AhHnSXd1STFTyRLTl5ZWeHMwETJI=;
	h=To:Subject:From:Date:From;
	b=VYTqVS7hZe7bl3EeuQq9sQABwUaFfmvufpVltR+JUbaZji2D9I02fjMnfZyznxgjc
	 FDXmjrWqawJFW4sEYzcSHsyZcItN9FmtcVsczm2MU3SI+/mbz6pBpQPuRqQfiBSADM
	 QnL5JZHQJeiA1ALLrApoaqnhJXqxV2RvQ+DZo1ONGfpRygzJRf7bw4tOIEqYfMCVBC
	 O0TvfLOv+WPeownUBy20JBgBso35U6B8uhX451epjvPXeSuX+mQIVzOri+45ZRcgXp
	 PGwsjP57GBFivZA1YxRS4lXzKPofQ3pCC05DDqfusRP5bJGAbi42tW/v0VJR25Q9hv
	 4DVcakIMCv85A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C09ECAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956419357.5279.5270285711200001218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a655ea0e17390346333cb37cb1b9d3b77cd9fabb883a1e1d2363f82c797567f
Date: Sat, 04 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759564193
