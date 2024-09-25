Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2252F154C0E
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727258154; cv=none; b=AmMbPQJjVW0Urw4TsfLmULPLAa+sNejYwvHUQ8MzNvgovBYsZ0MICPmZ0ASyxIQf+oR3pK4UHUQTI5lWDRQISpW5aCJ8D5Yzhfj27LetNrRNipTV97OBihJWnnBeMafolYYuVdwyLqGc12mIBU6+P7ml3AJSFVEmauWqwdac0Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727258154; c=relaxed/simple;
	bh=J+qWKNmePlGJ270UoT1CMlN3P01MK5zkHuMayijtKMU=;
	h=To:Subject:From:Message-Id:Date; b=BqkFOleESC19gNfkR/DYlqH3QssTBsTkpL/rTMFdIieMePVJ1psyAbuDguAM2XxmBaFC/fzJs8TuEV1ZIIUJ6G5cKTKELt0ZDlfeKrCjUmUHUKvzwT6Jy7jJJWmHPK+MmoH/8Fe5lKL6u9de3QD5cz4lnjXL1vEP/bpUCTuZvFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9Lo61hU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9Lo61hU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E62C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727258153;
	bh=J+qWKNmePlGJ270UoT1CMlN3P01MK5zkHuMayijtKMU=;
	h=To:Subject:From:Date:From;
	b=K9Lo61hUCh6hrli6JUqaYF++aHyaOtOjt189g8HT2mWHAUGadseZLGn62aJDGjX+a
	 lnNBHd2l3lcuk/ElBE6vH5mzeeTLLJEUP54Sa71kZbYRxgq7xyi6mhQ3Cp/zbe+qE5
	 8u2r1Tpn8hUtVl7LW6z1zAJgG+M5kljkogrtjhxg6z3jYWZFiZvqALRBobCySgfELC
	 xDHc7Jd7vwqylcGePzx2YbaxO5RpxExjAHh6S2AL2aYPvpNl4uMr9oNcCxAyI/KYga
	 t/e1NbADfVqGNAei20N31ksGBKmbQvXOOOBmg9YwPv7N+K63u3xXhVobw/PxaHr0xT
	 /Mk7xgl3vZnJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94500C369BB
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172725815359.3289.1956468397255472482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd59e7f7a3a6e0ff2dd7052cca94bfd83fc13526211cdd4ca3b44742b2191cec
Date: Wed, 25 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727258153
