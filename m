Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391611DE4D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743281394; cv=none; b=hBJiludjlujCI182y2xf2t7U2kMlcaLyMe/CJ6LPTvV0a4num1EDjcF8xQ4VItGK4Rw6FePtlc6S28OAaeTfXZUwzNJeKVPyWcoOcqFON3JwrE7bz7f1gT8oynVZf0GdigXUpRhLoecRspUi0wqcYRSO9825b1ivIPZMmXxGM9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743281394; c=relaxed/simple;
	bh=RIcM6QiPtJ8yI34qJ64AL/wXtpawCfKe2V4W+JaUf9s=;
	h=To:Subject:From:Message-Id:Date; b=JtkyeYu7fMJIqDQujzUEph/Kr8MZB7M7VheLKZDe1QwzoSU+BitoLo+IrErV6NmRNTk3CTvnU0QMC327jLdkAHutN6a49s758XU72VGt1xUcsIAu/R921If5RoUlDryHV8Xqx/nYjp7whEAMECNtevLxtcpY7PcI9sJxd4lzSw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSB363/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSB363/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD62FC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743281393;
	bh=RIcM6QiPtJ8yI34qJ64AL/wXtpawCfKe2V4W+JaUf9s=;
	h=To:Subject:From:Date:From;
	b=OSB363/b+pw+8SZUeVsGuwxXGYnZm56ZWVlIOeMDfOunyixa9v6qOatLc5hTJEmF6
	 SpP+t9oRAsQoLR8wK7W7Nfu3YnXfw53wF98RMpxXGcUTdVERPv+piwybTcyPwzA+YE
	 Vg1PmKnUK8gCnnFo0nwNkPu1YAfUVPsNGTtfrotoJI2OIkcMvi+vAmorROPEszZjdz
	 IWxVlxqGkcsP0wgltuuGqh6vn7yx6s6S+vazaac33tZbsI0jKyOasdnP0Sapy7rysO
	 OKhKnyAhAfnYD3JL4LsTCaQD1ep/jNa7Fk3pmhEFK+ta+t1EGDLEPP/yvrubeUvLzY
	 uVbz6xYWciZbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96657C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328139358.3234.6655898170146157069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7466d1640be704b43d8818eef3fad51a4758fd528f18df223cacb784362400
Date: Sat, 29 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743281393
