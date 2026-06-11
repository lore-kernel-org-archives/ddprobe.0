Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3254D23D7DC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781190394; cv=none; b=gLBsc+wXrOifYg8s5fI7Jmz4k9SmaE4aR0owbJn7fpbhAtpTUIJWIgmGCjjFMfNUr4wy4rzcS3OSMrt4acFP57oRHu/jXV6+AdsTlc2NF35ZAtHpHTMSg5gPaja6dtcsLJm8XqXanG1jVwaL4GGDA3ujdS8mXM7CG3zez7WbDHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781190394; c=relaxed/simple;
	bh=sYLd7ebmfbTbKkTR972/OPIl577CqmWT/Q4ffTXmofU=;
	h=To:Subject:From:Message-Id:Date; b=WZFv8puZYAljZcLbWqoJB595T5GQMEVkSdZss2A81prFmSJpgNsyn0LeJvAR+gTNnpLUwN48QhpB4KVg5Jo9diPfozxbG25RY3Qz7O1AntHgrfTLxWNikNVXJuMRnAr1a2kxGBYCTYw9SXTIVILmjS/cG8z0a5YN+hkgnGMuYNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3TwvPwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3TwvPwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BD3C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781190393;
	bh=sYLd7ebmfbTbKkTR972/OPIl577CqmWT/Q4ffTXmofU=;
	h=To:Subject:From:Date:From;
	b=n3TwvPwRjTCQRNcMkbKGiFvIRUw7EFS9dpdg/2lpmlzrOEEvb3y6HZrGoIRWssp8Z
	 hV+brbSAsvXhyVHb9qjK5/conNXHNYRtaJaenQc+dusrOT2cWf1lPr0d9WrJyjQSHJ
	 Hlxw27+1WXqtYzR00vlNpKnfhjZu+yhMz/PJ4HJDWcfMsU65n7thqOngRpG2AvUP8l
	 zaNPe5CrVw4dsXu5fBlnxf+XvzfjQFZq/5SMj3/Dczi71vY+E85nVwNnaXuuuBObk4
	 97OEpaTjyXtSjQrYg7btPE+THyJ1W99+2bPtidcqutyoiupYvQheEMkP14vIjImpXG
	 OEhN6v9pshFcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB6ACD98CE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119039370.5853.3895580353176925224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a55ae569b66ca3d0a7cde0fce17a99b40e79911e6de21f162d28b1fa92f8408
Date: Thu, 11 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781190393
