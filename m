Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4128219E7EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724754954; cv=none; b=atXhNBd/UWJF811Al5AZnS2WXspfH6HHdBZqtUyd5JFmivD4CV9EQSvF6pMg1ph7oS0BqiNWCCVd4tw9dgZWAIMoWPJg/Joq7WUhS23UVW5GFfrYHD/ZmyccgeJbS8BYx5GG90Mk27Sv7wqs0xGNdQpY37vCrB3SAOKEGHu8etQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724754954; c=relaxed/simple;
	bh=PhXLb68sxBWl0JN4o/AqPda8dRHej3pFXoHubk5tPeM=;
	h=To:Subject:From:Message-Id:Date; b=EOfDI40n3EWTwGCTEBUp3I3V5NhAm4INXkDT7D9PtDGgMhOhwe8IE1OEAh5kyQJsdEDyojyGIxAugLfqUkAqRB1oAJILJCGq6Gac1fG7zshyW2I1jS4GnTm0R+oDgoY98I5HrXFwGlnwX0TgTtWxbJzJEIlbowmMfdIDHYeucO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGEpqCpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGEpqCpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B312BC8B7A4
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724754953;
	bh=PhXLb68sxBWl0JN4o/AqPda8dRHej3pFXoHubk5tPeM=;
	h=To:Subject:From:Date:From;
	b=kGEpqCpDW3XpBsh0+FPQ1OHRs1LXezxU2/lKl6VjKszjHSwKuSxEnWdXf6eB6T1uQ
	 hlVIGHknMAhu6+c+idqhwtCt/SAraR0h+05MjxNdun3jYgAoelz3qwUsSf8KH8ilSf
	 MiGUxhFGNmzL1DzqmJi47vqImV4ww/QinkK3nn/gTv43wibWU8FmfiHh2nAfwB44MX
	 hF3MKMMAeooLWLgkKOCeUpWt3Ltm5ICF++FjSPlodJ2112LKDJ5j2OdGtRnlbGdR/1
	 1oNHcsoawR/X8BFD7rpbRDlB+wiPypxV0PD92qIlBVPOL3g73B+88GD+JwYpR9DupK
	 vYzqw93H8JZRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4712C54734
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475495362.7180.1411011804235775095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a165ffae45cb9b0e522aebfedd6496e0633f4afa4efb10165006fd3ff67db1
Date: Tue, 27 Aug 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724754953
