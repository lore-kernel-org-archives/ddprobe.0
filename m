Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F1223536B
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757129394; cv=none; b=U3bmGtNMWS1J5PA0W5huyS9gxRpk4oD5t/XtDje2PodJ/oR2yDdjgxPAyB2fIG7vq4QqWE3s00aUmSyncvtwvpLrq4CL9DVxp3hcngqdQu6q8w8i4B0+epMGcPACyNQG1qvvZ0RqUoQf09DVxWkNDdlBDv7TAudyzfQs3x8691Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757129394; c=relaxed/simple;
	bh=Yvbd0zeeG7taABp2RRs7YdEPeeEGAIj65PChxbaFV8A=;
	h=To:Subject:From:Message-Id:Date; b=JYC69ir2t8p31Y149C4oSZZ8pQYCB+woPUijl89QtKsf14nJ0Vm0rg9ptiw2Db8zrZ1PuwKQQ9MEngQsLaUehlxuJSOVf200jhklJcD+Tcrqy4dS9XclHvUQcqjDhGfPIbcVBNbMMVJxzWy0nANuIpSFDfCMfSJ4jXdi+y4e1Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPVtUI5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPVtUI5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FA3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757129393;
	bh=Yvbd0zeeG7taABp2RRs7YdEPeeEGAIj65PChxbaFV8A=;
	h=To:Subject:From:Date:From;
	b=NPVtUI5lznrtadg9Erd0tN0yqA10OWSr3YvADmFlZl6It750f6Rti1K9k7atVBD3H
	 xibku6+8LY07sm4beD3tN4JJwHQGye7SNwbpvV+IMTs4OQdOe1CRUOJCzOLFaxdgjp
	 u5gLpe7CQUspgaKY2rk3XLhLHEAHcaoIpbQn4iT9hmlVdqgOatpDj/T6fnary+diFJ
	 QSBbK0oxNyyCYVj/DlpvFPAPOrI55CKwSctxKVi3enSkhtCTsjbHAy+RUDS4GawWL4
	 8RvSJNGmEeQRrDoxcpwEMN/V2DidtF7ocHqtaWiCBEcCWShshzljzMN3aowyF4kl5r
	 nJhLAfUbm4bMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6AFCA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712939357.22575.4957757020447025635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ebb7486c7763927a81d86bb9324a8504f14e3470c7dac8d13463ed033d3ea4
Date: Sat, 06 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757129393
