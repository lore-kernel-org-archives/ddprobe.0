Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D7A18FDDB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760918396; cv=none; b=Q8NVqiGrcJWEIuGSFRq7SiMvc4O8YYubvmFBasI5acDqMFJpjgom/tce70VfJGpRUv9b+7JYwCMpF2EE4LlVhQfZsRDk6ppNnPLDW+cQ7BlfDRl8z8qfuMXthA+t2ahLR1+D8Ug/Gh62a5idT8xOSAErTDjUrIad8XiG6vM6hPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760918396; c=relaxed/simple;
	bh=XBl3EB249f6pX6tFsfrTAKZyrHEjXpWNsaxElBIoNXc=;
	h=To:Subject:From:Message-Id:Date; b=gNDMmOACWcE7ABInccV4eQCbY/QwzTSoY8BosSjR8s4J2fJJ7Puuj8AXL/wW3qiori0U2GJH1tj9pKVM4RWks/m+E9/k+62agJO/gFPGde7dTqkgLSwk8a/XnFf44gnGmkOZoiKJUmnOwMoVqy+U3twPZUeNPUTpyZ651NJHXJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2S127LT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2S127LT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760918393;
	bh=XBl3EB249f6pX6tFsfrTAKZyrHEjXpWNsaxElBIoNXc=;
	h=To:Subject:From:Date:From;
	b=a2S127LTD2dbGQCnzAjjG7yiHbdmK09Cc3DN/ch6mEE/HxzDlRx7Nb3OzgCvt5QQC
	 A9To4hBp+ny+f2u5a61F44K+FPOluP+Y3g7dJWUtgB0limwYWujOC18DLcjl3gfl6B
	 F2uRFVHWPs2EgvR6rQjA2kQpDfc8T0xCk5xpLgypF84SBsthyrGcWir6fg+2F9pfWX
	 HP6o3ghdwqJuY3e87iPi22/HgoVdNjGIVVuqttGYKFPHz8TGo5b664Wm+XdjMEE2YS
	 ejq+ygHWhC6vHx6FLZukshp/f9ob3OpInxY7viwB97/xGurYI4d7XgijatpyN3zoyS
	 lrJ2XaVkIxWxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F4DCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091839357.23894.9547355840682356765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63bdf2cc0a515b98a4bd70dc9e557a83759b6eb2144c3a26a0d9ab27f58ff51b
Date: Sun, 19 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760918393
