Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A25A13C3CD
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760061594; cv=none; b=PChc5nDGOBABFpO9WEjqxsUJVMmb+5VEJqlGNMFV43Xu+4DfZRAcGGtlMNzJ3t0YKk2Ho2hjYrXhmrvP9VpMd65RRQSqGOnhY1yIDGvaRL5DI6npyZ3p7yVg3cHp/zCLdUhgrV/V7PRaUhet29BX+kheKgAoR7i0NoKLYiniTxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760061594; c=relaxed/simple;
	bh=gr13oqsJb8z1CFJvcU6U2oz1qhatXABtOA+vJfyascE=;
	h=To:Subject:From:Message-Id:Date; b=q0LwWXQt6US1+czM+paGsL0/v6KW8SIX6whO/YxR0qBfokpdo/R6fSdhDXUlUOLcC/8TXcBj3geVCgTqtYDgbwgCDMY3Q6046m6w6erw9Hu0Lsj4ooR4J+MqHph+pz9eFH86oivnSOFgrWGOGAvZLMCnpBNSwkGne/g30Wtleks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1EM+ft5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1EM+ft5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3F0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760061593;
	bh=gr13oqsJb8z1CFJvcU6U2oz1qhatXABtOA+vJfyascE=;
	h=To:Subject:From:Date:From;
	b=j1EM+ft5OMqECpNMxV++aI5mRqAQ8vk3ymAElEsZHdPVXIrZ4FQI2sbiTJ0rwx5lB
	 eM9AaFZneXeYmtGXqcnYJyTn1FhvVZC+KPLeGSKgg70nQqvj83j2bc3v0znzDrwlmK
	 uHrjZoZh8PB4sIGEviAaOyDos8QrvaRRRAy0ZWW0lU6t//qwokC7fm4gBTi26ydXAF
	 1nosk1npk+e+0/8AqcOSiU2BOlBuHlLe8XpWjql960mU+HZtSphlENXSWZsAFN6dB3
	 p5fUrepOnp/o9fwGELXnaR/A4gL7S11hIHS7LNsfwQRazuDiiE+6n5cph6mPvnt5h1
	 c9ncI2fr5pDJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE85CCD184
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006159357.4505.3457726386755796175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a801f83e96a9e7b61900a04b4f002ed74e15b98ff4c0147e82f6a591b6b885d
Date: Fri, 10 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760061593
