Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D8E42586F
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786534234; cv=none; b=MhOiY0inSPTx7rswvOxJnogL1QqHAZCif8+wtRMANaMU9ND5Hk1U7c2SNZVr9r+OxkkBtBF8Dh4JCMNoAVJWYaKqEDjffBuDEI9HnELmHXu/T9qONlsOsj43IKbtB20nNOFHNPtMW/y7W7PLco+RMI2LnDnoXmLqDTvVNqh3HHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786534234; c=relaxed/simple;
	bh=Mo+pVpJ1JUVmVUtdArUg2LPvAkbRdX2wEsGS57vp7ag=;
	h=To:Subject:From:Message-Id:Date; b=pTEJDZocJotJpuD0hGecG3HLCaTAhmzJAFDG6DfnCbh9slY6fF8jpxUGNzhrQJLaw8hvHmW86uG0EttOp4MZqMbuYgPwBGS/G9IKGOa6usVuyKaGdbpuaPnsZ0uiW6aTDNPrtXhUbXAH+ZhJjmlRPf0OeXpU9syEH9KFRCP1tiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXM9s5+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXM9s5+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A19C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786534233;
	bh=Mo+pVpJ1JUVmVUtdArUg2LPvAkbRdX2wEsGS57vp7ag=;
	h=To:Subject:From:Date:From;
	b=kXM9s5+QcR42rWUyAdyUMioMEAmUH/fqJlneRKTpjmlOyKEVWKs2Hqlc3m///QM+q
	 cxFVrpUPVWzKTRlMlNRYaT/m+fSw9jlQqZv/El17ttZsnVKFE8CX5sBOoSePAfx8hq
	 Lx4I32SI6iHLxfhtBFq5BtHj1+q+VdMdK7gc9BVFyLSo7U7dFnkuSAemF5qOCQw5w+
	 rlu4TBCbAum4MldyiuKrOCQdhjgocVTmjf+KmzkLNs3Ds19wBzeFoOinaNMniUmbPu
	 xgK35ELrxgTTTLc1UJIC5lXlL5wZRNEjcMz5F/4DtFlfv3I0j2tvIIu4pFyIlfWzE4
	 uutyIPBuwywEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE49C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653423370.32171.10587430061646327277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46cc42502196e65df25f07b544d163f5ac9f5dedae2cb8691456638cd1f818f0
Date: Wed, 12 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786534233
