Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D852AEE4
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775006094; cv=none; b=ZB59jU+T4WMSP8SfHc4oIVzXM4SM79apbr7Di77sxubcW+VbwrHv7tSVdsiWgb31BxZnIirF+QHf3NV0VZImQK+XgveTQZutaV4CNJyaqmRvDHTRpbpXOSHXipZJtsBsgZaCnKtIlVf7ENdYFk5eeIs57m0skbd3j1YdUHhJmYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775006094; c=relaxed/simple;
	bh=kEL50F4Mbdue0UE+gHtomK1dMTlYlHMU7MHTI4FcZZM=;
	h=To:Subject:From:Message-Id:Date; b=LaI8om+3cOTtMUJtfdfZTftmJ0szNhvWcrK2wf9hN6y7oDxw8nL6iR4u6lYN3S3Z3+3gXZoYoW2jUN3dvorf3JcUsBqdDISp2DnzNWx6F/k3gTqYQgzuB5lraj6HKYeI060x7dq13wb7LP9w/FMTEN0XOCTguVevUJSEcJ8XxVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdlxwVaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdlxwVaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5931C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775006093;
	bh=kEL50F4Mbdue0UE+gHtomK1dMTlYlHMU7MHTI4FcZZM=;
	h=To:Subject:From:Date:From;
	b=YdlxwVaEQxsKCNLgmixpKKwPo5Ij+/J2mW0vI8yz0YL0M+QRpf7rZe9hZttPPSay4
	 xxyNqHHpRpR848oqsrX5POjTehlQoxZQqW5XsrutupAUBOl8Y5gke8OaT3cPS/Xysd
	 ADMF86k8di0t2NaCwuANt0DIyzwNXxCDqT9dEhuSvGlTFgAMKoc1R5n1i4BR9Rn1FU
	 NqpKDoFV7mco+S2JfEnGBYouUgFa96R77Du1bXhMYQTSwBn2H7Sif43Fjb31EvLMmH
	 RE3fSIfCYO0oQ8U6Ro1g0wUHMfgHn2+9ZPj1kfsxLuhUcEGtvOH3nTnIMoVlxGrVFT
	 pGYnAM8kv+gxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C4710F9314
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500609358.29073.12609939769116267202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d2527631d2768fbf6218e449a919dfd195967b96d6f713d3700f93c40a187a
Date: Wed, 01 Apr 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775006093
