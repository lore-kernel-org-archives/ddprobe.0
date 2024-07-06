Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B57213A418
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720279583; cv=none; b=kV95US0Ky5pICD4W14Nig8//gXVybmea7y++Q4JSciOZJERdg7cw3VjzX55SYSY0CekQe302CQAevyQDNFKteT8bNbkt9JHNkr+Igh0b3d46umvVAbyYNJs+vrXchpYsRWOyZXeWrmj0isuDTuuRkTMJymWPz3fys3uUeDYhBuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720279583; c=relaxed/simple;
	bh=qauj0PAifruj7yXEvss3Gpq0DEiWd3tKgcqBB8o2ScM=;
	h=To:Subject:From:Message-Id:Date; b=rCa/psZsHIZfPpUrGQp9ZEFMibzmmYP3k1lGBhecaMosnvBewrTihZNT7UlWm2FkfA6lloiN79ODp48S8j0JIT9HqhXDFvPFfropm9oU44TRrvCkijSw6YiQIJUUlUUTiBd4zFgaCVq2y5pEl366ubGsWUAk2ycS3GG+BF7ricA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBpiS6wu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBpiS6wu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9195C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720279582;
	bh=qauj0PAifruj7yXEvss3Gpq0DEiWd3tKgcqBB8o2ScM=;
	h=To:Subject:From:Date:From;
	b=MBpiS6wuWKUpD8Htp4W3fQegKIBmg6Eta78ZFQOGeRGlyqt72bEDowrjVBnECF2xT
	 i+1/eAhLbyzmUbPfAy3TbuLKkVy813DrL2z3J15GDC+NZvqEXWDiAZv1HolpA598VH
	 l2Vl4Kkya5NKq/UZxZ6ip2ojneueQ0kwvF6XGpDyEiggkh+uhsL4B2Vm16aN+Booy0
	 rR7QOgPW8eVbQQdtW3DqIbrb7rZ5O3PdR/9ar7711uiwJUyJI6FxdDzKrcfkRvz049
	 xyT2hdXf5+VumC26CXhpaUw2yAQXJ+Gz1f6J3h8D9irOECPSexYyWZhMOenUXiMznc
	 YX+K/j7w8f1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FDFC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172027958278.6916.13068255815904854449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0f0448f28e7740dc9477a8ccfb4b65598cdfec2a8d000ff6d6dc1889292729
Date: Sat, 06 Jul 2024 15:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720279582
