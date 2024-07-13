Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511574C8E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720875023; cv=none; b=BfAX+jVb7m5NLuDFQKVklrISWTkt/XyhQIaCg95LossqwbsxzgRNVUkoyEjlnLtodEkCPFGQiy89xF4rekYXVxaCFm9UFxyeyt9B0s9nSGu+mda46tUXUtCkbd4yMGDVrWUas0A/LoYr0KQux275OHIXiyshspkN0V0VMVoT/54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720875023; c=relaxed/simple;
	bh=uXtYL6We63ITYrcvlFeYtAPPmeiisfm8CDxd8kG1SX4=;
	h=To:Subject:From:Message-Id:Date; b=Jha8fUx+elB8ElBxleJSJAGi1FtXBfGuGirsDpqqysckMOU99pJ0zjbjYhf9AHm7poDLbvVTNDTkVOdrZbCmluWYzag1NgZYKvO1DR7wchKY/lhksj5FUDg5essGEapwUFEF63ndEmdVAd2PK8TawkadiLz9Guk/J1KcKZf4ipw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aD1tmuPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aD1tmuPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EA0C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720875022;
	bh=uXtYL6We63ITYrcvlFeYtAPPmeiisfm8CDxd8kG1SX4=;
	h=To:Subject:From:Date:From;
	b=aD1tmuPdrq71I7XUQ3H5Ae0Shn8eoJrs5AU6TKYAkoYB1MRTkv+bdZXmmkgSnPPmO
	 jpkWADYK3xC6BNKYzeQcqhwx1pB/EDdQJE3YwXLrYZGkcfcBmZTjWzfCPstJwsdUb5
	 h489GaPIeSNZM3ZhuGMXCpFDsXg0trGGorCcnkQhol6gxn84P/WU2N5riCMY42jGY1
	 N27sO6aMr4nAZupjc4yuILjd8G3yaAohOYbKe4kg4iYq0KrMhuXZAF82kjquFG8kKg
	 AIBP+H8ZCBnQRftmdZ/pOj1jAPXDLsrUPqFu9LX1xQJkX6PsAcXLYGPkYC7ujisoT8
	 6rNue+HP2wtcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96A9C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087502281.14223.4458655754888514516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4b34824284b02e386b8d697c36e1be68a68d69895d5dae736f28389f69d151
Date: Sat, 13 Jul 2024 12:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720875022
