Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B1C217F2C
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729986954; cv=none; b=MWSkJBCqdcOgfiATyud25dX3PYAZq8bmFwXMwruM92HrN5seoD4nCICn2moieP0SF9QqkLLWhdSMN4SQtrzuL8EfULcI0mqHd7AFWDwcKMcmIG5m1eEIqhvItK7TiIMFIRfPNuEAzHlwtatjwh3Nhg9MD2Qp4dWBo7wM7cCGT1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729986954; c=relaxed/simple;
	bh=P8jC7NLH4IADHLAsPDPMBtaO9flB40XaH7exNYx0iq0=;
	h=To:Subject:From:Message-Id:Date; b=r8LcfEeMYgpr7Fw28+7Xh1zFsm/NTKFFWhR9MVOGWLMzIubTnIn7sCT0sXROJsTW8wrKDjoBsQD11HwaCF8L8JpIaa20ls9ZCIVUqBCWgW55JNw776AcP58rTtHPFKifkkkOzI6cKISs3eJvyhU5lytyUxjFfz3FX4nNReA62as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqis+JYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqis+JYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ECFC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729986953;
	bh=P8jC7NLH4IADHLAsPDPMBtaO9flB40XaH7exNYx0iq0=;
	h=To:Subject:From:Date:From;
	b=cqis+JYt12e35Gd8xYGxokDizFdkhJOj36JijL4rVbZg8adVndgfJV7Gy+6xrqatG
	 3OxKCY9vioSH4lAWHcQSGVgmHe2HuMgbsLGS345LskTTF+uQfVO68Krdm5fKp0q55z
	 El5mm167rUypDfKZdNPsuBMk0n1P0K5Z2hNiT1QUjE2rfC7hcU6qjl80agmgdmAZoL
	 0DQqU+AQmN7irpaAcmEq8K5Nq4QXP+easogBIaH90txuYzu0m9Ki0a3e2wsaqtaJAp
	 F+EfEN4JjPbVEweqVjhrcT13ToZaPBLvmEgs00Qnnz0Y6g6zwPas2o1yVBhtvBDmvU
	 05wH0C0ZjIZPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977AAD0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172998695361.25838.14424065739897189031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec4a246cdb15f3042a9bb76d566d87897350c38360c0ef2ff712234d41403c6
Date: Sat, 26 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729986953
