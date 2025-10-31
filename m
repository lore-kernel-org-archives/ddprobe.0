Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07519325731
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761910194; cv=none; b=oX279180hSol4qBj3ezwPatxYLwq6iTVsxuqC49Ya6x+axfzThjokdjV5VkNxaIj2THsVIFKQk9D9rN6do58VElJM9lF4Gf9+h+Jkx6UizZLpQx7VTTGPNQ/QY3OezcPKKsl4uN/UEE37FosuwjcXkN/qejsj/qIHCM2pqFkssU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761910194; c=relaxed/simple;
	bh=+h0wFag9rl1CZXtjtxqyYydyunbCKaP6QhkX1/ckB24=;
	h=To:Subject:From:Message-Id:Date; b=kiFvLmts1jZYLXaqZh+gTQRpqxPt8hx/tPTMKOCOvs8iI5kFMpvqrAAP77e90CGkuDSi6hN9uJ+AWBbUN+9zrZnCbe/dI0iPBmOCH1fWcPW5zGq21jp4neCa7QHBFirZIrMkHZ6/ehNS0/SmihB04lwjMHQNyQmL0KYFsWMban4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjBara1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjBara1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7ADC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761910193;
	bh=+h0wFag9rl1CZXtjtxqyYydyunbCKaP6QhkX1/ckB24=;
	h=To:Subject:From:Date:From;
	b=jjBara1U7ywUrjgs6L8KcpiDD/dIkro/fGJgf2SFvWntAz+NH+PBET3L5U7z3gh76
	 i/k4O/yKxalRdGU2pf4j3H/yl3xar0VmKRAR1Y1DxISxVNPW7jzivMoe2VcYQjYP0o
	 rQsBew9DTmvjBFGBbAoydAHOEfMytc4Zxo3/OX21Kcpy4Jaha6XAuzor+d58qPyW5J
	 LcJcD84FycYp1MqgO958/n6evYl5elKVTrli0hQFJKvn/dmh3hMKIRNrAAYygnub2u
	 exjnsRelS3SpNHkSHrNuWQxOLSeGKLsHgEfhcWnfq3RqirlgTRTdW6zbA3CSmoyKS8
	 km7MsP7PO+3LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21ECCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191019357.23025.2617748483653196027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7f61f24ce3c9357f454fcf3f0f17a65540083042dc229be2cfdc94a5db99fd
Date: Fri, 31 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761910193
