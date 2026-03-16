Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D153195EA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773632694; cv=none; b=IVbjy2ssGKjFX2BZGgm2Epdu3PrlmoCcWhtunV/c5VZyAuyMZNWZF5+qcOk3/Cz3HBFJK/IEYkRdK+r9SLugibeWk+h2/TAWSoqlQ2Wb4h1J8yXCqRcf7eVZjly/L2HAB6dQuwXZGtmZ3mW3rCRZTxOQ7irR/Nk8vw26UjhsE0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773632694; c=relaxed/simple;
	bh=KLQihjnbIx+StsEstiiXco4xWidBgQXNdH/w0Tgvu30=;
	h=To:Subject:From:Message-Id:Date; b=Ltli9KLXkIju8aDNqHejHmJEplRr9qrYziRvCVe7jDe7k8tVNXghmt32LLVo2LB59OPiY+9GwnDJ6EDsd+3rKV1NaDIyi5FT9JsInYEqjkXH81ziLNSUaCZeiX52ujkz45ZbedCLXAqV4em21B+P3ypyFaY8QAlY2zAW9Ek7/lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VS/ye3hB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VS/ye3hB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EC3C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773632693;
	bh=KLQihjnbIx+StsEstiiXco4xWidBgQXNdH/w0Tgvu30=;
	h=To:Subject:From:Date:From;
	b=VS/ye3hBFC8inOeDdNMBh3zckCx/+JbQ3SQtDgIyAtygAoHIFtr1qMPEOvI0OjT/Z
	 MULsjhcfJc8amK2yH2yMGmh1NDVI4eBu4t3rLQBzs9jKdgPqURGmpMZLJBK5nbdjco
	 43/x5LaNyRz299PtfPbFE3n7iEqru7p8gbAqIQ45Fw74KAIWdT3p3SphbXcmVYYM78
	 WuU7lprUNiCx+0Ac3VSeK8ehnxuvNyLJa4NFBaOV+h3l1tUwcsd9+qnEhCVcR7d2Xi
	 YmRJeZcxb+NqJoMfWi3/4986IGN91VrwE8TDl7U4zYYyXv/ashO4+QNDXFZ236ZWUw
	 kJvckLJQArPxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91866D58B09
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363269358.14873.6221896520745602786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4f154845af2e2051adf998f350807c70b7b0d6c7356c53be77d0ee9be86a45
Date: Mon, 16 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773632693
