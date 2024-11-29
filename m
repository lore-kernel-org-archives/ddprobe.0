Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343F09463
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732877154; cv=none; b=V5iFc+Q/CxHbK1RwdwZz0+u1fPpjifvb1LWoGv5Hw7e+EbmQavaM2EcvBVfAdxgR9dgtWViP7vX/Isk3ByI6BHlmS+AvBtxeXl4AQw/qLTkYcPBC4vEKUyE056wAWwCrUjT9IYOaZxKMI02s/8QHXR3tFhD9n4Pm4b/SbJ3vFMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732877154; c=relaxed/simple;
	bh=l+HY67jJxW5zsjlWNAIhOwpyXUd7bjzGsqCLXqgF0Go=;
	h=To:Subject:From:Message-Id:Date; b=WlxBhVsn4mXL4RHZiiwt27QUM4Mw42XCaU2ya7rmN/g/LHwQidpZCLGxbb3qw8Raa4BPWla5CRxk5hXYqV2QiqiJw0vTKGN1TxJVFU1lcHHZLh7PmhXpk907AxrGq58q4qwtHzPtxaD2sJPG87Zw8a2fyJGtgq7vuBTv41lx7S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOd2CtH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOd2CtH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3E7C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732877153;
	bh=l+HY67jJxW5zsjlWNAIhOwpyXUd7bjzGsqCLXqgF0Go=;
	h=To:Subject:From:Date:From;
	b=AOd2CtH0VM1mlBPf7Kqm/lJpsqx4pAfeMYOwdsjk+G1m8OzwEtbkQA/J4gdqsES+A
	 +DAe3810EaqVxrZ4id+/aZ0b7/5amoetyWMUEsBcvTNA2AMbZgZkSKG8nchnWb4krD
	 AIkDVy/lpBzCAizv+oLeNEvohmL5dhtAzEBtOeNxLz1tJgG6Modf1/UHZ6kNfDZxwX
	 syT5DKiP3hrx4AdNxy4DBaTDVdDmju0Jk9qb1/SgRk7ilbQ1qxWbe7ZZ7ImpEoEAVL
	 /b+izbyAAnb9OvJa4rrDOWVxoqpiKq6GL9bSfAIlzYikKQHIXP8n+u29DHFrQhTndM
	 oSJWGWV/dYhBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9955BD6EBFE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173287715361.11023.8121954584349211046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507a8d7cbbf702d49da57f19f2ede57ec6aa38321938e92b04748caafdeb2110
Date: Fri, 29 Nov 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732877153
