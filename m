Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC0910979
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722478554; cv=none; b=oxTbUthb/NMqOPx0v5AWLqfsYNHeuaZaYBy8uWgAoKG9vUyQFRErHcuRluvdqISjAbmu2tH3anlajN6oPT3mRPVRv7zEZsFW2j1UI4OMAGJbsF3FyCsTs1Ljrjq0dHv8jAQ/nJwKqUnsCzWHCkNy+OIOZY08jOQQGYmkpqZFiHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722478554; c=relaxed/simple;
	bh=96xFGjhF3PnE3mTpUVjYMl4yBI0BMdP7ZARcsJMfQ9w=;
	h=To:Subject:From:Message-Id:Date; b=NBNpfN72G2896xQ+BefyxNDoi6em19PQr6frjCLXIOzWVmEqAWURfXj8TTthIWQyTbvBOnr39dWmdt0RlQgTrhPpMtuZR2+tRGIqNfIGGPhpzqPStx442iuLl07nz5xxD4Tl+SVIinnAGDvU79gWyckI+iGByd8Czx/nl5fJzVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkOdwne5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkOdwne5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B69C116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722478553;
	bh=96xFGjhF3PnE3mTpUVjYMl4yBI0BMdP7ZARcsJMfQ9w=;
	h=To:Subject:From:Date:From;
	b=JkOdwne55ceNEqGdFfIMPRmhgRhRGgYyvwX/73qkwdlM8uUY6RT7ImYBNUwtrULnC
	 qvozMBnTg8/zqq6q/vvldLQQFkS8G8+fc7WN+iJHPgdOxyfKBXp8zyU2yXvsLMDW4X
	 lB5FobzUygRUnTkTw+awxOrlpVaZoxH8dCY7ZQGctciijHnJHPzqmTW1DaiUWFjyVF
	 C74JjkpSuc+BWG8K/qXQXcw9n0O6agIwD4znmAWR/0OexXWCLsQmRlGariayJisQnw
	 MFBYa7BcHeKGGWGtFhbqnWNGF+nld2v9HiaMlgUY+dMy7RiD1WvqU3b4kr7Pec9XZR
	 ScyRfk4nJ4KMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F570C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172247855364.29761.6247901320490129415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba0898eefea6c4ee85898c43f625dbdac29488fd2c784cf37a003e332ce624f
Date: Thu, 01 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722478553
