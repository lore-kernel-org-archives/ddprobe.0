Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055BF15ADA6
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721852754; cv=none; b=n1tS0Ph5DK0Yp4MGoppHBwmqhsBUc5gMlhN64gLKbdrYYUjvjS8kvmNKC5JLGrwo0RnHcgCc3G6NwTYzpsojDfu6ArjWDO8f65ztXF+e33lJJAYQN25lwmgU/XZgILcvMBNFf2SV7Mjo7vefjSsKkRnda+9ucwn8v9oyBgnz0cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721852754; c=relaxed/simple;
	bh=I/mUHopx2JBcoDZoQzbIeCUc8x+NTAqBA84W5j0too4=;
	h=To:Subject:From:Message-Id:Date; b=UqoI3w804e5eRfxDizAmhSG40g33ozuiYdHJ7McelWJiSlDl7xKPnTxuKXBL9BhFYAg7HhXF2XzwzbghScICMKO9C8rcu4ZKswqAjhoil94hXzNc6W9m2e+QnTwVb3EO2Nuu6TZKujQxLKONa//GDc3I85TR83DjzXEIbQJVR+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICp+KOv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICp+KOv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BD1C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721852753;
	bh=I/mUHopx2JBcoDZoQzbIeCUc8x+NTAqBA84W5j0too4=;
	h=To:Subject:From:Date:From;
	b=ICp+KOv4UiGwvFWT3xnu/1ASUT1qSm9mnq+mtqTPWTU7C0fBAsA1WXw8u6AQ4cOst
	 C8J5tIdQvyvrefDr1L4cPOrr35qVO6lBLDKZkjvGgu7OSN1yi3aH/NNxuDQp6t83j9
	 N2LnKWWes1NO9L6BB5VJRr6o8lk5nyEFfskc4U6hNsOHf80v2TtVtiAkbhurRrmnkp
	 3DzoTebEuchyBu+zdC+FT3+Q4gzfvjgsFbVDBW75txRxqW7HlJ9dh8ammgUXfUbYc7
	 /wwLHeHIVWSkxEGVJ8VSg7UBkkhfVpNnw62DwJMFE/RbSEPm1BV61Upcm0GtwNOG1t
	 Bp3/dnCIS5DJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E64C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172185275359.3467.15381734793249651122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9922d06329d0bf9c3351c67ad0000ed049e0cb994b7abd22848598b327fc30d1
Date: Wed, 24 Jul 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721852753
