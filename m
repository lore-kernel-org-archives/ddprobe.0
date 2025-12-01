Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BB210F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764547974; cv=none; b=fK+xaiGAxdyvzQOHuCeD58p3EhOajKfWENapeQbwHUR8kx9XMRnd3R9VGA8e1Y6Wc9tOFsGLEWrld1xcec/KBpIPEeYAY+2FbiEDiSxZYOVvZnm8QVoFcK6cyCmOcAWw3j0D3Kvgpdxraj5IIJykrl78CylCVivU5BJ8taG8/04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764547974; c=relaxed/simple;
	bh=IjWokVwOuyxFTK55L2V4hEdlZZ66UdJeQM6T19u07rQ=;
	h=To:Subject:From:Message-Id:Date; b=bOoaMjCLwlo+qsQl0DyvIiiRf5N88AL0troGOzoVcWdn09F1NMQ+FbWGHqLI4oH4HneXklyRC4Nq4ahDAYE5AIXyU2opquJqWdojXJo5QIVqSBNVmsZo/4OXKVxPv40/XLyp2/4lDm1gao7t3wLgKLZ1Nw2s9nHz0gFXX6Qfbhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyQPYb4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyQPYb4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95D8C113D0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764547973;
	bh=IjWokVwOuyxFTK55L2V4hEdlZZ66UdJeQM6T19u07rQ=;
	h=To:Subject:From:Date:From;
	b=jyQPYb4Jqsho0bJvKILdFkfqqPfxW2lFIBtFR+4MBU+PJvECmbFE7HKytaUCjYN1d
	 MmEvX3CSzb/PVhC4NCR4mP5FGMfuaLLd2iST/g/TjGnlt7KkF3jvWJTNQZcvSFGoOa
	 WxOmyohzb6D4xrQC5G9+auKwM1PLNPf8rQkE84ZiFez7V97imdE01g0cYnJqZ8fISe
	 CyxF+d4Wihwjw6yPhWzWNSA2bGXwrYMM5c62x46b9cBzyMcCSUVU1b5FBxOr793tzn
	 BDUgo68YEKOCJDPoplJBe01tG9yqj0ywEn6sOcczXSmBvNBAdaATb34MYf125eqjL4
	 Zpsg710GnUAHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C5D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454797359.8841.17866212912635961163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f24a3267483274affda81894db56c904917318de2cb6071ebf4679768bdd84
Date: Mon, 01 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764547973
