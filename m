Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531F013B7AE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768471434; cv=none; b=dU7CPfJU0RJTDrDJxZZCXe7OvPDk365MgK60ueN2XwVqXVEcuQzQLWAJoclizv1vOrqaczmcRaW1i9uMyBd6M77l1fXqQGHl5xoxfERj5EDgOxmJwveDkXriM0WawooZbygjpg3JA9EmLXKwH+e5M7xaA9V1ofVVR6zjptlaoLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768471434; c=relaxed/simple;
	bh=/PHU/k8Us/wF/zFLAvFzvBQj5oG24tjbEnreek1YsdA=;
	h=To:Subject:From:Message-Id:Date; b=thNUvf8uR4sciNnfnSNxd4TP/uIfzRng2jydfuFHP9Q04fno0eedr8oFakyArNf+/I+qk8iuwzfQI6o5wxg0okR4qtM5oTWe/8h4WEsjZcAXeieDA702/gs1j8V7io8ZfHwPN/VPpXVcfixiGJv9w3aASCrTgzKoqSRhdaR3m1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxDl5RMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxDl5RMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBE4C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768471433;
	bh=/PHU/k8Us/wF/zFLAvFzvBQj5oG24tjbEnreek1YsdA=;
	h=To:Subject:From:Date:From;
	b=YxDl5RMoBGkm5sHu1xq9kBG7dwWeGSFeBVG1j5MwR0/ZdQgxausL8+eQfUC8FsQP1
	 r4lsIVOPZ1EU012jDUU7x/lCAt2BQZ5FY6S6f871G6yS7CuD7eGG/J1lj2m4cgBDZD
	 PD9dDG0I1uuMxhRcNdhTNqb3Bw1hG0Kdlnq4aGq/FtJ7OpcjfxxK3wrBIeF56/HHLD
	 85hg60rQkDHWDPYrCY+7L9iDrJav48Mkfl6Sik5EfzGHitY456V/mz6kEu4QVCZqhg
	 k8f6d/RYtWi1d54ukRGqGi8s6T53AcxjF26zsikL0NGvdExQzO6+nH2zIYEvjMEfKK
	 VFP7UJEx/43Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F463D41157
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847143357.28431.11082988601305522909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf34a844667bc86c7a53734a9a6abdc80eed6516e221a5e2836b022c0d3de0ea
Date: Thu, 15 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768471433
