Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521D92D8762
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790488234; cv=none; b=cACHcM545tsVeVB+7SjUWilMnciefkLGYYZnysZcg0TpsLOJt48p8m32Xkxwrke3+OykyhypZZnME3MYfTXPw7nTYHF7GeLL/VxXqP7ZVO+kLosU3Su/prYX4gZ/vb0bGpOC7/W/r5inzyF/kYT/aavmubu9I++VK3Of1oThtc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790488234; c=relaxed/simple;
	bh=B2YzLKSxX8Y1dYMQAmZeGCT6FMHgjgN/W5ZCmz6kdPs=;
	h=To:Subject:From:Message-Id:Date; b=GZC5fKiaUcRQ2yUT3j3+kGAo1KLBW4357E67bmAmZ37frU85iFs89dxL8Q7a/WMGEzqmcUPCgqs5b2oGSpEIsUxM44p94fRLLZijrHzEVI6IfPuTxCvey9kSb9ngu5NJ7jb+ZMIxY6Bp3f6MsxLdA1IKBsP9T1iiHCAE+35oGyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNHvXPF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNHvXPF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F18C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790488233;
	bh=B2YzLKSxX8Y1dYMQAmZeGCT6FMHgjgN/W5ZCmz6kdPs=;
	h=To:Subject:From:Date:From;
	b=UNHvXPF36E38ck8DlHvFmE7UqErH7R6CUPCVf11aHAkO7FUK5IbTXNO8ayg2oBaFQ
	 m1RjgzC8cL0SzU62ijJ75//DFiXQeSRm7kG88vD7eFuPoD3n3qp+nCRWuuG0ay1zy+
	 SrkbGzvopbsf7BPL5g4T0ni28AL6HKBZz+YsSplYehfP/Ax6qPohG67ks4YUoJ20J4
	 vboCyxvIHO8DNGxFQjChw2XFdLJoJnJfKlQapJNdfJ5PZDmVedqFaoPK1XDMk9iSUX
	 iy41b/4JEB5A0pdDOySsQwqfRyy09v3s1kg/DT/lVDASMVQTljfSiqBHR6eQ7sAD0T
	 OdpFtqrqi3AwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20C8C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048823369.21874.5577792246968233919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 480ce692ac4f0d7737c6c620317f0ef96f8f00d09a58aea151c32b5d8d060acd
Date: Sun, 27 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790488233
