Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1528C2F3E
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749331194; cv=none; b=fKCKJrxvbOHsRC7ZyucDfPP9DScqDyc3y3N+23WgsN96JKuUhAftOSseOs2fNuusN9HvsHcSiwfz2f8LWq1NGdBpmOk5zH6MgdhvvMBWhOTBHixUl0m1RX9MrPesICz+O4HNSH4UAoOL2435zyOo5rTXjTB24oAvRCxBXBncO2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749331194; c=relaxed/simple;
	bh=w15P7yMUfkbmdJdPjJ4rfq7cd7wv3QR5UGXCVOgdMi0=;
	h=To:Subject:From:Message-Id:Date; b=NUOadCX67t3pcoz61s1//bcapc3euvT99Cj9M5EapvmNwg8+OhAFKzZbBcn+5bCbkgnnMJQINMX7tsc0IVxF9RCHtCA4qGAd8143sqri7eunK4f/C2snWjUlpFtR8ETeAsrCaOKVt2K4ufcVzsNm5Skcou48P38ElqEUVBiGBZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0tbfJSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0tbfJSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E04C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331193;
	bh=w15P7yMUfkbmdJdPjJ4rfq7cd7wv3QR5UGXCVOgdMi0=;
	h=To:Subject:From:Date:From;
	b=K0tbfJSG8QrPqlIF7i9VgemVFfU8kPUzJNHZL84P1zBx/mgB8hJpjPcFRHE+mOr+V
	 JcxZwAf10KniqROyrog8vNxp7t/tssvz9G0u9SsX1GDgIHK3scNBl+6kxSEtEfqw3R
	 I6UfuAfWZw7lNa2mCpJneblMBqp9dpy84KkLm/hw2/PrGLRvb4mtM+G0HpMPbaB+Tf
	 9vLUtxJVeAb1c5pXlq8n38bdv3bXtVDAP+6aoWaBcnWg4iktPI+ajeC9uAhJHnC2rK
	 uLircGsO2FcbjDuk+lJ8ztzFbugCNwytQBDQ8Ih3CyuFpLapUYCoo3arHFWu0LZ3VW
	 zbWdE6IC2SBpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92186C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933119357.31255.5246551674091071410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9592baacc250a4c43a5f5bca58862c29d9b95835e25bc4ac10ed311afefbacce
Date: Sat, 07 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749331193
