Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2484726E6E8
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753776594; cv=none; b=j8TSwTejU2Bu9/96Hp1BEZ4T6xlPsEAUji8bkHaHQWmUQOw7rSX+EDaXE3p8bOvN3EDHM8+Z4mah/THhB9drbLnXGaNTx2iMm8Zu86KVhC8uUG8fdLcUH0Az8xMqiTMWpBiuDrdtlLF+99gXtSrtnTnNTBN/V6UUfByt2b2Flno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753776594; c=relaxed/simple;
	bh=VMKjGvvQ5XR//7e1QeKjUn0Hjwrqz2cMol8OYKvM8HA=;
	h=To:Subject:From:Message-Id:Date; b=PVHlzeUJwHqBm/oi08VED77e8N3C4wR6UlcyrC84qNDt19Nc898pC/GGJ7PziGWXCpvJGtJo4AzajjbmMhlyg5e17OgukdW3jDrDRWmMuOpeRqJD+MgZkHJMqSqVJ+gVDbQRKeRNbHVHFOnltNYdq3/GKbYy+tQ3xWu5h9hVgXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1Tww5Wp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1Tww5Wp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10A0C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753776593;
	bh=VMKjGvvQ5XR//7e1QeKjUn0Hjwrqz2cMol8OYKvM8HA=;
	h=To:Subject:From:Date:From;
	b=Q1Tww5Wp+n/e3KK+/wCBF+e79ORU7kJ97yiF0EqycxNgM/imc5CoxGLwmlcAZHyXf
	 4dHWDqoN7ieIJUDnvubXAjoG/1LY8NeugX6N2bBnC9MRbJgFtW1wSFYHbmPT3oS5Ds
	 Du6gOtGEiUZ43wAhS5adlZ1E+WxPHmSmy/4c0OpLIs8RnlI3UslGp1fP54IkS7SQWL
	 v1mT4jSqF07U6gSAAtpQLotHQBPJx/rR871IAUA8T9/vcY/b2Iib9XGY/FGgOaGG4v
	 YYnKps4ML2yPCFKAUxM02FUF5AZXPToAeescZcFwp8C7AaLhc9OUVsH6YTz6Yv8i4G
	 IEvmUlYgoDUUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41EC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377659357.19092.6213914283349026623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55445197392542cb933b1773cf9531a4f2eb6d5a74a3fe3b45e4a2b1689bbe47
Date: Tue, 29 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753776593
