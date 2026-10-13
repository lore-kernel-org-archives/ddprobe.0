Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F084BFE90
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791887434; cv=none; b=uMg43MEe6peBYdioH9ZFvtT7aakGrPgYBeUt2TZP/SMkPRUtBwBotAXWOckd+TtD1oSZiCi0QWB6xu+n95CgLfaoYkMYiQ62SFZVI/ofpxFBOUvGj4s0rks844GBPSf77Wt5hUWgHZQ9w48pEhcs9guoC1hlYtvbmmV2p6vdYHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791887434; c=relaxed/simple;
	bh=I4yTGnq6DHIGfT5L3LN6iGurFMyjJKO8OeeTLWwUG5c=;
	h=To:Subject:From:Message-Id:Date; b=I3FM7U2b5PNtwtam9YP4ZFRu+KP+3fwRL5xEnw0QjZM1/OoJ0OFM+xl468kJUHnGno1Av4aO5+xXSl3qczf/XzEZgxeDCS35VSZW7oXfXkkDsqr33snoKehZnpR8Gvl5TFM1U6EJAKSUazsQVk1nF3JUphMs6rYCnlsIVzbh8Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFG7Rve5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFG7Rve5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60BBC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791887433;
	bh=I4yTGnq6DHIGfT5L3LN6iGurFMyjJKO8OeeTLWwUG5c=;
	h=To:Subject:From:Date:From;
	b=GFG7Rve5TLtZwQGZkvbXddE0UKT0rKajF8Xw8kqKZsxHkhKH/p2gW0Z9dd0zKG/0D
	 Uzed/YEvp0WNN4mkTZi4EQGfBY3mXBMua4mw+805vquxG2UdhIWNKkLEMIp2J9ZJ4m
	 s8uE9QF2r4TeCjXvm3xRLE0t3Ftb93tgQKVglzvX1akHTAqQX3asmVWdv8jw4qzYV0
	 kDYDEDG6MMP1v2bVRZWK18TAGq2W+jL8mchESnIxLsCeK8kS/n2t+vejveiWl6npl7
	 x+AGxT5e2RsEkPdSJPXPyxSx9eEZnXFaWqr33XE8JedkyCDsiyyFJAaQUXGiF1qWLi
	 wDfEbJYyP/7qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF08CA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188743370.28696.15368104607413976363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aedb393f5a0fdab04b58855ff809ccf56e8a2483c92f951b051081c34d37161f
Date: Tue, 13 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791887433
