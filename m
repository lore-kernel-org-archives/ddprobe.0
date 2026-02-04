Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E22F2F5A34
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770229434; cv=none; b=mTXPFx+ij5U6EcdW1qA/RVGJvCoXWeQFts0tSnTV/+MSuYmoAaaR5wKdVUg9utXmGqEuze8+3ajRcGoDi2YBF4AlUqXk0yVVaD143pGllqntRfSvVQKfMHtPLHs5Kr8eeL7J2xobboqk5lienJj+IRFxJiGAlEn3u2pzO7cGMf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770229434; c=relaxed/simple;
	bh=zRsjzmu5qWWRYxiFES0ng+caE+nlLq+ZygLNb/uPLNc=;
	h=To:Subject:From:Message-Id:Date; b=mRToe1sLO77GFFRD/KVqDxjcAirfV4XcxasJAFdb2aS52fzBTtDxXxeq1l1LeQC78QhMx6Omjybg8XLdS5JJuXWxCFOE+3rR/HumbNOB+NjiQ9PiPnZPzLP4MafnKLi+T4FnhD79d9edi4A8AyUwhfy7G3xGHom0ZjqFb/RcLNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpA6gH6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpA6gH6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C953EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770229433;
	bh=zRsjzmu5qWWRYxiFES0ng+caE+nlLq+ZygLNb/uPLNc=;
	h=To:Subject:From:Date:From;
	b=OpA6gH6qD28B4oTk36mFKIImjMhePCT9yQ+VQ4oX3rhUZ/Y5kG2LwBk+d9Zuc1QWd
	 yx1Myf9i0cGbbfAJYS1Y0KlJVsMHhOYFdjX7M+UUjFjPgp4BGvEc2UXQeXXNtJUsyf
	 Glt+IlYdKGNvRW+Eli/xsd6qeAQPk05W2l1pfWE8LerG5rh6M14szHRK9yZTuFZQeP
	 RVUwLrWQquCzxErMfZP3rv+zE4tr9GrhHOTBiO6BOUU5wKDiDcNDZ1b8HW0pXKmnNj
	 qYrnq+EbB75ttS7Ka0r5EDROggE3G2ixpfR1S9CpQBHJapqfbOhM8EI/++kXEuqRGQ
	 bnkN35/DHTo5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9D7E83F05
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022943366.11650.12551097938474218287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205fb6994900b01ef9e4e7d5432bdffaeaaf25dfd0282bc2fff9e814fd281bc5
Date: Wed, 04 Feb 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770229433
