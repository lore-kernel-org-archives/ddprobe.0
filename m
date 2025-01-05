Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3963C1552FA
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736086554; cv=none; b=HOlVCHvOMSgca/Ta4KFHcuinHuU30sNeAd+3cJkEPr2vXPLzCN6gQwZxfGtL+RLQgdZxy9XXMFjboDShxHjpJJaJNuB701kaFU32cnOuCP9WIAYXYz7gMCKTmOfOiVT5h2Agyoe+DIGuh6R8XYq8e9psXLkfOBYTXWQVmSRg6Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736086554; c=relaxed/simple;
	bh=81nbLtrqS6gBwDyJMweHoKc3GwuG3lxMEe74DcuOgMk=;
	h=To:Subject:From:Message-Id:Date; b=WH912Q8N+5zItBzXtl+zpoNJNAgnB4pduXEIZmk+FFD6q+R5IqhytPzjb9fOjJBQjK5zmv/nLvId07Dx7MWk/ZU/Nxay0iRK4VJinyQkheMI66kIQ3UvVCyt35CG4JgS2UnmE0aZ/CG20SfaD4LVC2QqTF0YglY7IdWz/uu/FvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3fLjRMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3fLjRMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BBBC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736086553;
	bh=81nbLtrqS6gBwDyJMweHoKc3GwuG3lxMEe74DcuOgMk=;
	h=To:Subject:From:Date:From;
	b=n3fLjRMwvBToO7tBKW47p6EkPb1Z4SK5054P9v2E4Vt2m04I7HmZKEg1Hw+hfyJko
	 I4xXK3FGThinVlez0+2PN5MWmeiDT6psdN4BUBXxyqYq0w/RqUeOk19qon09K7sjzu
	 2k3aGh5uRIlVlgqIcLiKa/V2qs7Ff36AA3qScMdv7j/QkUUqr3yUTVon/sgI6Ubglt
	 lL4LCXbP4FSFPlubQVqOqmYSLnDjq43xqc434u5iQPz7ZTLIxyXwmDcOigorzThkj6
	 rJF7/qlO1tWi7nTQpnLA/ad8r9RKjOYl+kv2KRy8CVDu1HL5jrfuuutxw7mi2ke3zW
	 mnp1CM5e4Nkzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D168E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608655361.7329.13409143475792904233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d782537100e4ff9f1af740b0477aba2cec8a9bd2686a4e95b9f2adf818ce81
Date: Sun, 05 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736086553
