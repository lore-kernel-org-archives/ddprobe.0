Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BDD296BBE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765182774; cv=none; b=g4p0/kD92uOebylxJ//rCxkxzXggfK5K3giKAD/VXnSTuQUpQ2L3tgpuAKah1xlRIzuyxHcDyMCrYGTGz0vsOORuj2XpgicS+fiFDfb2QqtAqrbFp79xRzJYcGOxhIS5LMlm2lnpcV9UC9BYpok82FbA55vuad+t06lrf4FBXUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765182774; c=relaxed/simple;
	bh=HPue2bXjYpDL1kKK34iTcn+Is4QHguISOxE54tqRI8M=;
	h=To:Subject:From:Message-Id:Date; b=XgDrlv7i1xjf6QH3dWC3i5St/Ah2DPw63zU/xfbDrNQOHIrFwBvAeDFhKrqvxglH8CGkGxSbrABzBkdXJ6EGN8F70EYFpkROgS9YsRCPtU3TQzMI19TbYNP75rj4U/pxe9DOjzQ3VIXio5ED8b6oO75AXK6ZSu9/BeTHAkO1G6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ll/Z0LQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ll/Z0LQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99ECFC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765182773;
	bh=HPue2bXjYpDL1kKK34iTcn+Is4QHguISOxE54tqRI8M=;
	h=To:Subject:From:Date:From;
	b=ll/Z0LQNNmPkPh0IvyRwCdLZC/oaaA+Pp6NCHWXsSo+aCJhYy05BnC4kJDLNer3UX
	 ObYeiJB+J8Tz/5+RsoY9dS4QIMW9MLVFtLviZ0rod1tDPoiDvv5139gI5pP0a26+wD
	 8mb2BKPkIz+mWhNAo4bN+YmUhdr+bGFCca1FsPYTNWBAOwaxmwBZmjcSn7Q2Bfq7X2
	 jbvlr+fug/Pqkn5pSZCWPNJrYg8CiLuzwy6GnVITB9eRJVdEbWVK5wNBQobNd5LuMY
	 aUceJFtcHLW9n5HyNi+WbAUxoW8tA1w1VyTceMwFDzLqsLDn/dguLaSz4w4N+izbM9
	 yEDMJCYm8fFAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90357D3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518277358.23602.3236107164558894843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d66da827f374d73fe619ed91b8d382836f89c9f72899eeef951b970f72f475
Date: Mon, 08 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765182773
