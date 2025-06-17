Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C6C28BAA4
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750165194; cv=none; b=KimeUv/cj3yHG6CMUbq+rlqRCdofmrY1deMXYbiJZeVCIJmoePCs1MLH2bBs3N2e2ZEcXuWemEoVrOjgnkswsFGeiv0CmiPtcZ2liVNUSHd6YzXTek2r+tkuTX84Mcs7vAeRtlhquVmDj6QPUrX04wdDfDq7kAILNnzGrqbsrvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750165194; c=relaxed/simple;
	bh=hLVxCIXNg3B2a80Qn15lF2t1aKXzk9OMg6nGawH4tOA=;
	h=To:Subject:From:Message-Id:Date; b=qXsxe+HT3VZaJ9DkiPO5ZB18q1lqhrq94m40Vgic2RW228r4EkklRyL89bIorjVSzIaQmMmb4XeDxDOyYwd5NBP198mRP4ERPB+mZk0AKAB7vkITrrWfH4SjN+BRse7QV0wvYzLVtX2PHwaCg78bn0T3mDwttuRNQ8Vdyws4F2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3hbvpkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3hbvpkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A165BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750165193;
	bh=hLVxCIXNg3B2a80Qn15lF2t1aKXzk9OMg6nGawH4tOA=;
	h=To:Subject:From:Date:From;
	b=G3hbvpkNcu5nUhT48JGvgpsYd55ThczQEOn0guxxtYWq919QybZfbFeuVZUbOa/tS
	 lLW32GG02ANVaS8gYmRdY7qMQTmLCS02HEV3V2xAGXXVVL+lLiIEH6PI12TydgkvYx
	 cpf8eSvFR65NjUoIYetSh1YofXXSFcwIwYUaqYzN3DDxamqI8t0amIRWE11zymPOaf
	 er9c4qiSXy8tpRnbFr9gxFyzGAsWfKpgbt/6zqSNdz+fA1s3QPSN5jvihU9xQFpd5u
	 VZM2Q5cdy5Qdb86aYAz9BQES8VEKpVNdtyjyz8qo+rKqJTaa2Dz+I2furf+VfoM6In
	 nrVEwOx1hXakA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA0C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016519357.5152.4030573831807515948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48dd5501c8133cd87d90127d4c20e1f8aba15a37ee14897507f1088b4d367f5e
Date: Tue, 17 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750165193
