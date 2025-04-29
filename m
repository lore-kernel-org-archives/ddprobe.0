Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270A8257452
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745965194; cv=none; b=GdGkbDNcN/sHEBwDEBn9HIDegzX/pFwxbfMp5++0hqA7K5+Ara5+mGp9VQqrZBzhVWNQr9WFxRNyrn6aifqS8CMpK2Qp6v5HVxSHm7JuHqhHS/Imii44/iqR0CxUlUoS+V8puri1/6mNFWwf5wDajQY7qPX+G4ezWCT1CO6YZcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745965194; c=relaxed/simple;
	bh=RNhIqJFFKCrIJb9Ub2QjU2z3cUJpsiAQ00RUt0X13vE=;
	h=To:Subject:From:Message-Id:Date; b=gmbevtT0tqOLUSFQg7Y3MHVwis1tKFM7XZEwdoLQArz4QOFtrNBbkgogScQertULnWy+DuUdc/ZymwjQJWrj0U5NlDDhN08af/bmbtQ0JMPg/Mq45tuNFuGFLUN52PtAomSKT51T2DVhk9q8v/wcv86vbIXV5KfLeYzwwX/YCP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAY7ZQRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAY7ZQRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67D7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745965193;
	bh=RNhIqJFFKCrIJb9Ub2QjU2z3cUJpsiAQ00RUt0X13vE=;
	h=To:Subject:From:Date:From;
	b=SAY7ZQRP2sF2MpvI4qXPNpnDSj91Onz2/QCPBHGhYJrlMiccres/jtl62x5F0xidG
	 R2Dn4i9W64zgEN9TM8bZZ+aQEP7AYyM384IYRJMtyZTNHtyHqqEXT0woWhDxRcr0Qv
	 Q/HActtBS4kL44+hJ7KEw/lHmdtRLPSzGe27ZADEqga3WCM15q2ZyKOPXWx+6vjDQ/
	 dRyQw4gPFB1VDABe7FXbN1OmWwCjsxl895OBkTx2g50m7t80YnOphh9Tb2gohTcbpO
	 CpsnbUN6jBVOxayvGeg+OrZI5HuWUyQOQFGHbPZA0loLnwuc72JbMawN8bigwF/hWr
	 qz1zM+Tg67ATA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B2CC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596519359.14203.18144782210497517520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8cfbefb026372123b8a4c633be50b02de83d2da74e1c40d05fefe146b48a137
Date: Tue, 29 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745965193
