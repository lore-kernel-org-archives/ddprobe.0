Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF41E3A5436
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790326235; cv=none; b=ms+gxns46Taw+7yvtduwtk3SrHJ1fo+FCdnJjBRniW/Lc/j/j1ADQp7qnpg2yUCpV7RIzJrWlMjAyzpiAKTOxvLTkN3gqlANXITqaRlOUyMl8HYiUZOe33fQcTqhcuP3pGdH4gHo5Adidbg1/I4WggPpt8QAeGI1QDdKPTDfUHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790326235; c=relaxed/simple;
	bh=dLOqG5hmjCR68/gmXeNbyFjuixDOi/fG5NEDx+WBdEg=;
	h=To:Subject:From:Message-Id:Date; b=jUEcDPKTjnPHrkySeXBsP8x7dPSwJoP7KR139BNg7LTHOzfsuiYYmIksKoIticqvW8hT+KFQoLJFBSPN1/MwX3GHz8qIoSDinpF64oMQflH8Ccv76NSmNxQ91ZplH2Oc5DNSK5H8++QSmc74+Q8m19PUvRVLy1h9lvH1V4CL1sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjK/s885; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjK/s885"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB028C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790326233;
	bh=dLOqG5hmjCR68/gmXeNbyFjuixDOi/fG5NEDx+WBdEg=;
	h=To:Subject:From:Date:From;
	b=RjK/s88549YHFcE9ybcV1EwxTYQudWTOSD+bbm2dDGQtj0i4Ro0IBu3QX6dt2nrbY
	 WDj1ffomZwVHj5BUMQ5Ry0a3dFD1oYQrPG0bhFMqliCqF9BF+NZPl1Y0DZfrm1nqFy
	 qFgSxh4rnBURqGwofP9RMpC02VvGrkirTS81waCRd15cIZ2OmKoVXeIbVgMJ1uN/YJ
	 gdkCAGzC/Zm6v17EZ22L24OlcfdjqsYULHjTAtNkfX3iKkqaeDZc2+Wl0eZb7x+QRs
	 ufI4v+jSEkMHz0Zy2gGVJMpFeTmQqoVvegfK3r2I/gvOjhvZjBWIktlB2kmqtKEm/S
	 8mtoKJ6HUYSpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65DBC98324
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032623373.7843.15673698375569885642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c7da2ac61e0a4ddd9341c1339cf3df866b42a3efcd3884e00f2fd3904f8afc
Date: Fri, 25 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790326233
