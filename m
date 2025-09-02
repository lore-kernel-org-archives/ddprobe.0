Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCF62E92B4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756856993; cv=none; b=MyG8D8QlnAhknjQyijbXcUg+RUIY0/wl5MfZ6jA2l8N9CY8pk3SGQnxcR04Ig9FRdTEPoZYmCLc3nqt6rqVSsbXp41As3Piw1Z6ybN2COELmDaE/CQEm3qzpFPboJ14jFpbGNknXJf4pTd9h7nH/zCmptEhFiAHuPuz0uKxfHow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756856993; c=relaxed/simple;
	bh=YP9jQTXGF5a45bvtvAXsLVY0hIMvcI6Gm8resIG4IvQ=;
	h=To:Subject:From:Message-Id:Date; b=SglGFagAYxQKTedkPiu3LWgtKpQWzWYAf/jdVSU04TJ80Bkhjo1U8vRweqggfWs8g75YuJWIKBialbDi1TpFWtTKoCnjBQiuBUuEgX3lwGiqL4hIw/ACKBuhMFsoFb3PaNcq+IGF6wt2I7Onay1awRr7zM7pMQYb5k3Xj/BmCTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7VqoKUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7VqoKUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AECC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756856993;
	bh=YP9jQTXGF5a45bvtvAXsLVY0hIMvcI6Gm8resIG4IvQ=;
	h=To:Subject:From:Date:From;
	b=I7VqoKUYWKu8Ez+y/SsKxypyO6bSo4WxYXDigh8KWBiyXoMELYjnDzynG4toRQFEF
	 TaV6u5z+vnE6FCKD39ZaahvT1RcVDE9MXbXbjPcowwKYuUwvZjFOzVD7/IAzPqFoeC
	 wYqwMJDR6OPt7KNqAhxJ3N7Teq54K5xv3eOrMSP1sNWOQpF2e/mphTv/CSwaYbS7Pz
	 VaDUriV0/1qWO8auRQnTkDZiHNwf+pcghohEzY5hy763Sm4UiM4jwizGSv2+8VlEW8
	 0KphuOKMSH71ja+mrNsYAvuaXVeW5g+JX7DLOMGmxNmUHNY0lZiSZFBRgWL33vATMa
	 +H5WRJFMAGhDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4AACA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685699357.31826.18010056545254851344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a102330b8c5e67bc7c987c59c911c9ec0e1f363996d959fb10b9fbc0d5cc67c
Date: Tue, 02 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756856993
