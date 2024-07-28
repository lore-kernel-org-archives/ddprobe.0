Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E822AD29
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722207354; cv=none; b=nt0WcaDtLfhcogynpNKoWwqXLeLLGJglNSqgdh0NedB1tL/jjMpIpjUEjokJdekV4CzNKdJ1WWdraBs4u20oKFnAgHaTwslPEjivb9tkEqGXPLzVZY3vsVszR7NXj39L6TpvKp4mD06JdPNP3vnyrZ2uO/F/YIO1TawD8+rE09c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722207354; c=relaxed/simple;
	bh=T84IFlklyT2m1p/qEWcBOj1Kzc8sD9RxRtPpesNmW6I=;
	h=To:Subject:From:Message-Id:Date; b=NHYpywQg1ljr3f7LpZGE+ZVyBno79YxHGULSvbWpwu9oGuCKSyFbay3UekOIZxkfX4lzThDL2b3KSw2Hdd+1DyGkYmuSbu1ao1Nh/A4+HIrlPywc01aDJ4/NzvCtSJ+femVOXpELY8it+CJwKJrlyo9nXD1iaANY8U3REU05T9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b73wsUv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b73wsUv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6188C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722207353;
	bh=T84IFlklyT2m1p/qEWcBOj1Kzc8sD9RxRtPpesNmW6I=;
	h=To:Subject:From:Date:From;
	b=b73wsUv8aGzr4LE/mLlYei14WHTrIauQlVf5/N/CdexwmlvmWy2NHeOPMTCeonVfo
	 AH17KQpm1RbvauhB472y//6HqSnGiwFmhjB11iNu7KM+zbDgKPwfuI5oPpSVxu3IMe
	 /WPENU7Dc4kxn60a1L0SuhQu7Zd7n4gWXvr7EdjGMjq0OzZCYXHBjakjPnKPQkYvEP
	 IGEOEmL1XZSYfirMGgASI9G7mrzuDr4HpjS3tGs3VTkCYjfxWKvD4CdN+1GvEFH5LM
	 VSbIZemXqAyPnu2Wv6EWAhT8B03s7f+JBc/DI6lCIenZ/dJa9SmE5iwKI0oL3/kEB9
	 VnR5deeYtIGSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5FEC3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172220735360.18989.8210367073970866747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5343c0ee342a79cbe4de113390c642e98538eef47ae2afeb25ccafb9a44d617d
Date: Sun, 28 Jul 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722207353
