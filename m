Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAB42BE05F
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788568234; cv=none; b=eWymyCL2HRLHm7WGy/sqjBCPY4HzbMZ6uTndyBYVOChLZFpZyXrFr4OuuS1Dsj6d4utHoQXkGZGju9pBifTkEUSVlPSJiDdUBw8Oowx7OQdHFOgjjDcwSFpB41TEp25LUr0r4xxqzbjsznXvyn+Akaz6D2YZlhcTmnhykGwl+RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788568234; c=relaxed/simple;
	bh=LS0zY0riL4hhR0Y5gjYorAEe8pRUdhoGVXvWP8n6Vww=;
	h=To:Subject:From:Message-Id:Date; b=s7Qmepaa0EXJmfCfBg9b0lad/s0qPXZ1/HQJLQ+PM04srZSZ9JXAhOaJBu3+E+/e3e2kqqH+7iETLqb4vkD3gexi1eaTATXOQK/yox9elxYZEA8bYpYLecDq2j5g/7L/ry6Q5lnXbMsrhEueU6fqQkfnMdV4K9Z6HyVfl4s3nus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNwaq8sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNwaq8sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56FAC2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788568233;
	bh=LS0zY0riL4hhR0Y5gjYorAEe8pRUdhoGVXvWP8n6Vww=;
	h=To:Subject:From:Date:From;
	b=HNwaq8scYBeOJilrzV5OckdspCeFxb753/Ebmtc9X+pT7LaOXlAgjd1lyHRE6Mzbx
	 dgdPlZox24jl4qy2kh2vbQbwvHLbwN0er286/LO/95qCyHpxOYhgxt5oQubcxc80J+
	 00po8VLXLMm7UJUg/PKyNxIxNt34RtMCDQpxhPGbxPa4RMjjxGcNOetbavVtwDJu9g
	 jtB6NCLLh5eqTmMMVibvRo9MygvmIJw8oYH+vnBjVOJsbsyCCIb+hTpYX9FkQW11Gx
	 Xj1bd5JA+bVmohHIkr/2RnJKBZozQf6uiN2nbcNOsCmeIW5ygPH4On+RM4MORtZMxI
	 3N4OKMUDTJHQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E9AC79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856823368.21545.14849794777306617116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcdeff5e752dab19e8df578ff36026323b300c07bda3005fc4f4d11ace19fc4d
Date: Sat, 05 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788568233
