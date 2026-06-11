Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2229F3C3786
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781171194; cv=none; b=nP5B6ZMMPZ2NolIUYCflK6O3NJyDcdxvUgGuO/AOZo/fiP6True0sEsGi8IC3+s8V8XHSNJlguI8nxYz0XzLBFOJgvY9OfslWfjL/p7uJjRTgrLlPqhMnmH+07ecqO09uvKOoywQntbN7n/8hXGzLaREc34c8I7OptI8yDnhe4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781171194; c=relaxed/simple;
	bh=fs7REGqlszamLxAEWG5w+AsBJNYGwy2F2SIPEPgFdZY=;
	h=To:Subject:From:Message-Id:Date; b=VcNXsPZHnOaCDfE3jkKBdsS8oDRt8zUdwk6Lxn5NlAKHt7Zl7q7vcIm/X85ETFpQt4SnNVc6LSAxsV28dcyQwV0pm1il85p2R2rgYAY5CKDgRz8ZvUbSFoxXepC7e4Q2/IKqiMRTrid16miStLuJbb7sOXIbV8cy2vBMkwyfueY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEC6WWXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEC6WWXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82F6C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781171193;
	bh=fs7REGqlszamLxAEWG5w+AsBJNYGwy2F2SIPEPgFdZY=;
	h=To:Subject:From:Date:From;
	b=BEC6WWXcKoibS7004W7M30qpznUk8QqD1EwvNA2Q6FjwE48tPUrc+vKDgZJ7O526E
	 qC/c8h0FTb6sXFI7iEwkRWXWjQhEd6mG43xS8JxiyJjcMWArhwPu6LJ2/zPnv+rk4d
	 Ovyf+eOCCFMdsn6N/+/g4oIHMzE7X8Vb+KjRFMQVOZZtO+b8DU5k96oqPCp/wH4ArS
	 noRC9QVSrDfeRlvscUiTWx/+zS9pQwx8YsKFfcQBe57x8haAJ5KlD29KA5qUbMX+y+
	 O6T52fl7dUlZxkMDqlP90NYClsj/uaAQ2K5uhQUWy1jfuHgLbDPO1LdqroqmOa1yZ6
	 ujfFR4mPHe8Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE8CCD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117119369.31142.14551254360256204234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4018fc6174fe56017e321a48bfc6f3cdec4eb3e9f07aa2020364d1830eceb8d9
Date: Thu, 11 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781171193
