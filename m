Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4904A21
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769128434; cv=none; b=CblNdpu2ZQLBnoTOulbOhfgV6IUdXdstXYGgyfvmcvN3WlQzZpeXePZ59l0fqZk+/JGLO6kH911lTRGXmDBn4BC3hhjRUBifT8aWSjpnFf3x6RhQvzVo24OMrEzli1blufyDzy/+piKgZkCPAUxuZrKXlhh6z3e4oodHWk2vHUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769128434; c=relaxed/simple;
	bh=8lhvW1Lk2XMv8RoUwDN9xQYrWm8imFRzM/5O5ms2XuQ=;
	h=To:Subject:From:Message-Id:Date; b=lPfwrH1+45n3Acn7mKXpaeCknuZyQs94Up+Nm44s5fV0wldtEISPgg+1ma2t2OpDd1SL7LpZsyjBAkISIZg+HFq7MtNX0VhH693S7AigdEI4X3O6ttziewb36G0kkt0OTDMX9C2PXoUvi31y/TyRTVnFGthl/6QHzaJEgRfTntM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzD4WBAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzD4WBAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A4BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769128433;
	bh=8lhvW1Lk2XMv8RoUwDN9xQYrWm8imFRzM/5O5ms2XuQ=;
	h=To:Subject:From:Date:From;
	b=KzD4WBAXiwYcrxjIiotat9hALtkAkeXnrtnsO5I9AMaNrKA5hiEqc4xPQ/rJAMTds
	 1T6hC1zNn+4vIdGnU/jdjjwHIU6EVohrOJxM2jnl5azarZ9F1U+9A4yeSz+IV6k6vS
	 kPqGra4qNzfwEtxezyguCfvz2E7AjBJiNsitCBteBuQdxvgK9iL3pZD0xgTDpyPiyS
	 mtsRCaVmXZeYYAamVZOZ5obCz/pGlW6Qf6+EDVrVTrYWhiKrBAqhpkRlEtSAbvBTVd
	 bl3MtkVd7y0YAqnH+f96qCi5cqEk96uX2X6DR/N1+2wfPkraspEhuIOs2sIWggj4tW
	 MinjJU+arTx3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970C0D6CFAC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912843358.25371.10540408178964298385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91be5ece6b4e1cbee914a0d45be7f8203788b25a8051c8eba7a24089914ee368
Date: Fri, 23 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769128433
