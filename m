Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B2C514767
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789155034; cv=none; b=Fiw/0LxKcv3ZzWfb4h8PC5619UOSgB3v2kZxLvpNewC5MOdFocwU1xrLARz+i5D5CiY9crAPFbHtxpr4ZOoZv7Nu9VycO2HpnXO+LfHbFLV7lXf71n5NleGyfkITsv5h5jDWn5qhQC2+aKNzND3vmfDhSm4kb9X3Qsi4SH4uoBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789155034; c=relaxed/simple;
	bh=Z+wMLI7zMk4SO1HVWMH2qX537b+BjiiCC6KHJabQ06s=;
	h=To:Subject:From:Message-Id:Date; b=K9B+pMTeWXwTv0wY7TXPWyJKxq4UdSgryKxB0B3vjpGvlHiFWJJgIKw6sqVJhAhP5YOricy+K7aeYcz9f5pA4tDDkSsD6dPqHlTVsfrLiFreu2qv531o9oRlFotVj0HSPOFwWZV6IhZ8M2cYDmwfdjtl69r31kSjwloo0H0L0YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVOy0KRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVOy0KRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5111C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789155033;
	bh=Z+wMLI7zMk4SO1HVWMH2qX537b+BjiiCC6KHJabQ06s=;
	h=To:Subject:From:Date:From;
	b=eVOy0KRuw3UMDp8Q/LSw4BlN8JcXzNksd0yO0/+tP2Ezc2OydOsxh76GqjlVxG9PG
	 uPMubAqp1GUiAcKl3T9lqz6JeboL3r6iQp2l/ee3wVlY0Tl4gHj71lQotegfnK19xE
	 W+NvCVNW5kDTr4VkjvblLrwdvHpgampnWGg/Y7nvank3c+57k/wG3VxAk9+Kq9bAN3
	 B1kC8pwlkcWo2sL1GnKRETvIeWRN6oHIs57MDBygXf8SQ4MhtH9eP9PwZDkIlS+o8s
	 F9c0Scj55MIucxRAX5gkoKLZYuoW2HOzHz3ehYOFUAmjHC5xRRZ9kc01GO2qnQTMqm
	 xM8/E1MAX3sKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8D4C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915503369.7099.16992434624632513311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55904ee0fe599f7b4a38f53b9c9807cdaf04cdb4192d529f12daae2da94378c4
Date: Fri, 11 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789155033
