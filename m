Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A49986347
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759292394; cv=none; b=PkndFsvTyW5f4s1ryps4kSXcJBI6cBXg/pPIRwFru0FT1XjUxjEWkBqWlcZzprtT7ke59ML/99t3skP4Up/S9y5sBJyOlYV6Hu7fHJ7dZNSYHNZeFxU4e4T3Hs+ZdDyrRwD/xVBAY1qB4aMJz8lnqAMsD92DxL4ijhMlMS8iwQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759292394; c=relaxed/simple;
	bh=rAi6wM4v/jURPn4kvTN4C3uemfYL202QUf//2lDHn4Y=;
	h=To:Subject:From:Message-Id:Date; b=Usi7AcyXBntqty3zJLAlsLnx6bE5quhLmPn0pH76M0s11U4VRG5aiPRyiy+vMOXxIcAabFMKKSWwMuZv7w1QonNKXrxVxgda3gSz4PH3AZn0S0P62hqXnaCPdPZtatRq6ViR+G0Yr9TFlwvWfD7WMALg31uklJs5ugeQopSn+po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6LmxnLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6LmxnLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2658C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759292393;
	bh=rAi6wM4v/jURPn4kvTN4C3uemfYL202QUf//2lDHn4Y=;
	h=To:Subject:From:Date:From;
	b=i6LmxnLy6rJ3gfSIM1ptwro9m3RtRN6e684RcyyBmyJb3zQQaQ0w0ODOKM4LMlugo
	 VJ6NAuC0p202phWDYY7zjUVcj2CTBQ2zapWY+VRTd+UPcZFxHOfg09+bYsmR8+PqlP
	 Mrvyyw7u7wjz1c3rb7x9ECUBkmuRfWkFxknVn+K2rsikJ1+AfczJqIjfp/LKB7qP3u
	 HAt8oe+/MSZf+n3+ZagFbH/MipIOP8d13YfUoBdyIpCZteQgRcOCqonv5Lz2WY0jr8
	 zQ65siij2VYyuaUt8uJjdXu3UvWMWuXDZcJUNxuLwrTVfaYLB35oA1kU+pu6vtDDfa
	 iBMF8NgL5MmeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE6CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929239358.3147.9644796350810438203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05d300b8bf2c3abce8210cbfd1c33618320edbea1ab5d6058af44e351d5aa2c
Date: Wed, 01 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759292393
