Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAC34596E
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711985296; cv=none; b=Wkr/0DFhQehj7Pvn2vekeKMIS83vlZkB5WD5OaNGx7oVb3iXNKFbtm3zJK6+ytsOA8K8PR0iWoMVqTBpoDIuGXRavTb6WEo211zFTzPvELBDMgCzWquBjZV/Fjm5HEgMN85AcUiCyUl5G1Gqe0UOYjbylWlBbmfU+jK2DNVMj2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711985296; c=relaxed/simple;
	bh=xscBcwXJFjJWIfA9PyoeUJ0JcKTwynqcbV/JgwAQp0E=;
	h=To:Subject:From:Message-Id:Date; b=LjRSA8o4hcRf9EbwRsNQ0QEyVWv8EbUCMiS86wVzcCPfT+0pfxb6QlX/Og4tJUNSsW8SpyjUtIjYB/OPfrRnZYECyWiKkrwgN9x/hs/9YzOYxN6up/BgEZNaqGYpmndrtJB3c4NDDBPxtl4nfnyBWt72NsoJqVmpnGqyUJB7ETE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTgqGSFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTgqGSFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FEFAC433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711985296;
	bh=xscBcwXJFjJWIfA9PyoeUJ0JcKTwynqcbV/JgwAQp0E=;
	h=To:Subject:From:Date:From;
	b=eTgqGSFDcHfKvCPdg+4lGhbBE0euW/lgukeMG7AFh32CXJMxzWT6xhvBgP5CEkSNr
	 QuCdUmKL72j5erPX5PhORRX2M+Wm8s6J0+gdcZkDm+mDySgySzSFRY2XoihH4HU66H
	 QYhwRpB9sqfogcWIseD6HSpvJC2v+gWYvR58M/tZ+JTJ7/iSXPZPoT02/hGoxAOvg/
	 7alpQ4b+waDOxkFMrqznx5d/2MVYr3YFZdzSFwvNQoSRnO3rDMs0pOkhcNeYLQtCDO
	 GxxRTG5nXPZrZ9m4X690FPrRek8zNZtRVLP7fZa6nKthIXNJVRQDnv7ALVxabdNquI
	 dKZr/+ImJMvLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D66CCD128D
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171198529637.12273.5779762745697672559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a976469087881b9a4e4b7c727ebf0a2ac98e8ef4b2e003bd911ea40ac245f0
Date: Mon, 01 Apr 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711985296
