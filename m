Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D74C30E0EE
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783754914; cv=none; b=OPwfaILEBuIfrZzx+K+N/KjpVCd5eAEWo3UQBQg0/059CF1jMds0p9OPkvohI+6PFxmbmq8c04MKCxljXeStV0KzqbOhkZn8Oo+eoyKoPVxUBf4443MnhfbbNrU7udagfydkBYxJiQ982kznICMYPoUcHmBGNwt5xM5YD2i188w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783754914; c=relaxed/simple;
	bh=tVCkaoprg/GEUGhvV4XtzUHwl96OOsfjawEf7PWw5H0=;
	h=To:Subject:From:Message-Id:Date; b=rTi+9YsErWW4jh9HaosHU8uvrKcMGzqvMENaD7nCuipC4kADy59eZpZWs9ETE8C0SslzPa2Pw8TsYSg1tU2C8nBXU0cy1+CEzgwzFl5TRmf2cRl4KqpgOArvxn1LI0klqDd1jisgxxnZujDv8gF9kVZeAZ+CJl0opAmYhvU6ZFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMvZXTtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMvZXTtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94A3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783754913;
	bh=tVCkaoprg/GEUGhvV4XtzUHwl96OOsfjawEf7PWw5H0=;
	h=To:Subject:From:Date:From;
	b=OMvZXTtCTzu5iOqdAmK5rFK8WGGmwnXSKaigaftDd1tNxbVDUFlCV/iXdSpkdc08q
	 Xq4sHOnO77/sgtuWiX/9wfRgHipGf1VocGLYn1jKA58bJURqQp9U8ACeDIbvgQaPHw
	 oIbAFPDvJnAWgjBn5HLGKhtLhWfqPFeYVaNOZ8AawBwaHY1zLr3g/CqkR9w4TaiAw6
	 KprGsTIJLoYLqmc0Az4MuL06ehcb/DOv7it+0+D1LLWeM0iKW3wfLiqvVk6Dz3DRKG
	 b/+J/3X+wokMZO1vhRpI1tpzfUW9hORSBMkHuRjJyiN+QaWaq5/AG8iKyxd/tPo9YK
	 tXY/T7QXnZOwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A856EC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375491368.18398.3654737082676677824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2fecd3cd31a9afaac6a90e35b2a0004ee5464a1c5b09b5eff96f6087ca4a1f0
Date: Sat, 11 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783754913
