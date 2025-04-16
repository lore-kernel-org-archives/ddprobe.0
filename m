Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B30A29
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744819196; cv=none; b=R72MWPVMiTWokRDpFYAZL9xEIoNu12LitalqCgO/9wMJ2mmAZrJugTRjquuzpSYM7m1XlN11J80SlkcfbMWlugLwnPfVDZMFmDiLXNApYYDstcqCNS/qH1rmAxhGOTENFwvq5zPu3zCKy1u8WSptrOZ6Hm71z16Mn3X4I2aVLLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744819196; c=relaxed/simple;
	bh=UXzxibExiHiqqs7dwtDl4luuficoHk3bVmOOGNquVGo=;
	h=To:Subject:From:Message-Id:Date; b=p0MlIoEhBHvD/JuGI0uC5bnKTYBMenEItGS94weohfEQiwkEtd1Z4J1/80oCOT3rk70LdTNmWCXO9PPLV6Uk9smFaT/vGXlp78GPqWZxrLjoIAmVIuM3KxIeYJ2itCDhQ4YY7ve+XUwSNSdm5CLpYKqT9uzrcCCus4tSKRpRjz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVdX6WQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVdX6WQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DC9C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744819193;
	bh=UXzxibExiHiqqs7dwtDl4luuficoHk3bVmOOGNquVGo=;
	h=To:Subject:From:Date:From;
	b=ZVdX6WQqVPD+Gly8Mdpj5xgku1ETXAAKohfgk18KHIr3M4KgDti4sNjyjsT9J9Dzy
	 qdgZPEVitmkQ3bOB4s09lalYBcwZ+7bi5o78F9Ijp7NfJUK2rkzPIGDUvGHEsykNn3
	 MnXzuQU/xBZf5CNJKxGlfnLmBL7CUAQmDz5z8rVzL5v6CEs/RoOMHJwH0B729mUQzB
	 2tCom+eapZujHhyBzMZjfcAPb/mnWbVjWNaCkIePScAPJylBrI/kVujEzn3gQTQ4/7
	 SnbhmvlerwDHAxoTaLPTEDYEfZKibGlQt53tSWjvQDCLQGGmiak6W5t+HmHyOXJqCB
	 VZV5ctSmJYDYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946BCC369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481919359.22149.2472466240763499421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129b32b893f63e8fdcfb73945d5c31cdab01e5a90416be94c573444740e3c7c4
Date: Wed, 16 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744819193
