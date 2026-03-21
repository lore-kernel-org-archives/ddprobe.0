Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3DA4226D02
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774085094; cv=none; b=F/JCVmJovNTWdzsjyNZyaslmFmFL1l1ygPmnBRB7ZfnudvdMDdVWbT3F5S2AxPle5/Q6kS5w8X5sNAERHqP0ZfBKYK8cP2ZrNWIw2k8y3FFIV5aNye+zZf326A4Jo7qnsNvOy0yoxzrceAbo+zfQBZ5OrD6YZsf77x4c6v3ASR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774085094; c=relaxed/simple;
	bh=RpxVX9B3dPdMI2e2HApCeXGY1HcyhWw1pfCmBkBAKz8=;
	h=To:Subject:From:Message-Id:Date; b=myMMNNc1F8fQCOYdsz19uepPNrITrai+/s9G1NCPChCB+Lg0p2JqVXlbfDyfb/wsdX5GYURAX/djGlkbgxQIHLp4lvpyAXVEUyWEN6vLkEuLl6oDkzWOixvdmIGjeoIfsEmdEw10osMJ0B4UGBZgAAFlLJX+/6de0ymfpTLuHgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkZD6/rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkZD6/rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E57BC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774085093;
	bh=RpxVX9B3dPdMI2e2HApCeXGY1HcyhWw1pfCmBkBAKz8=;
	h=To:Subject:From:Date:From;
	b=UkZD6/rkbEgCPrIWBdA4q3jzrV2eUyXj6ANxAAVV8MNuAFd/0PA0lQPTmun3xPU1G
	 Fgd60MGdZWrAclMTLN116PyjDnVx2s6OtwyYv9/u2aw9EAnmu5ZJ/6y7mSkXNe0DP/
	 BbXOitZrNNyysqGvkagb66zWZbB0m6ykdWsPF/cW7KrHn3lzn69MU/t06CU2Gx+az7
	 Vn09vbA8aStCvsHkesr3jIZdWrkctOSqlIheybaqYlOUn7OXPR+cdfXWncjtJFY0ma
	 7XUYt/EV0J9L8QxwDnOAdUPE15aZmlfCtam/6STHSRSAw2I2fHXH2ZkUfe7Ayg5+yX
	 yfoV43X8ByhuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C41094465
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408509357.23786.11945101684289143922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d372432ffaaf0f13e4109362bdba8c8272c54032dab6fe69903fc21311436b7
Date: Sat, 21 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774085093
