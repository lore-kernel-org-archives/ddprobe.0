Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C575331EB0
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786840834; cv=none; b=CKzLrQlabCRcNOmSrKK3p4+7aDZU0p67jyp6aF7cygAZ9ew1vNru0UcNPrlO0HCkmxobO+1bElGLdxKAGI7PNzM+euWeR72hsb3bMCWk1NbTALsdBkxnv4a7xOPrsQPWETBnRBaypYIqa+X3cBoiZxLtQK0+2/qDufFVuK+ty30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786840834; c=relaxed/simple;
	bh=YDUvcShamPUJEfSzdSdHyu4g7aXa6qHYrVh1+e3aRoQ=;
	h=To:Subject:From:Message-Id:Date; b=dZyja+BG9ISld+6Outy2RKZWCLHsVcQBhVy/x4ccPtPSkMNY1mUwhIyivT0BT35CFo1/ZZYa8GTyABtBIcwbXj+okxvuKCyd0CY7VvOe7J4v9aveHIMEoKwspX4TfkeUn9IPG2ZNC+4356XEITnhpeQvWedsBMg+bE4p6bXg9BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EANDYDxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EANDYDxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85F5C19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786840833;
	bh=YDUvcShamPUJEfSzdSdHyu4g7aXa6qHYrVh1+e3aRoQ=;
	h=To:Subject:From:Date:From;
	b=EANDYDxtUzmA84BBeL3rweB9ES/4GByCItY6/l7+GBzlUS0niBV6hR0bM9o07V396
	 lFsjQX+ZrhCMwXcbzMeRxSvVHZYFNHsKI1xXI6FLljJEGbBN/gtuxIrSCknhatcURd
	 zmbR2J7lVSR5ErbrbP3s+BmtfWOL/2rFhTTEWqK56fBejtnhrgZiDz17EBvEWbnURY
	 SI4V040h/f+GGFpDPqcTqeiOQ4UpgLbtuZ1RF+wJZ/dx5rNcRTtvJdECOQqXu7Zrar
	 S4aZrL6dPpv4YzUmHwIrD0wzFGa0/4+BYDbY5vyVZwIbPe3Bgz0X5i40sTyk1OLNE2
	 MfMsSoAZYHfGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B155AC5DF67
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684083368.18589.15187548548688812552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018651abd1913e08e65a46fb15870fd636c268aaee0e56034406c93aefcdeb7b
Date: Sun, 16 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786840833
