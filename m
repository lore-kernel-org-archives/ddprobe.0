Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B131862
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782760114; cv=none; b=k9gYhGwzRwMme512LREkNReJNeu9OoOXn4NVS5rRNEnhiDQ6HSor2iub+or6FEh+ROKuOJ+E0TRVoKpL2YIagFr6JLg2GL1KgJFAYg6vP/Jri6R2SWtlMbeH+xKOQlRSjQcxORNvE3upoLQT2Ff7LGnReeZ4jd/NaXQHnjCuhN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782760114; c=relaxed/simple;
	bh=FrEqm5nGtzS6gbQcKFrWAgrXIee2Cx0wsZGjMRIJ4kA=;
	h=To:Subject:From:Message-Id:Date; b=RDjh213CNXP3UkwzYuDPcFDMkMYvlUqZdTosu9yepTj/yYIc8bLOsUj+Gm5Ha5MJxzq3Dn1OBug1Je5jwup/smP4BFrdlulQQyyT5qp5pwgLYu7Iqwj4n00IyuEwkpYPKJZsBgNCgg/rQGUgv6snf8vEKHAItarXdjojix/5vpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4CAs7rQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4CAs7rQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BD5C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782760113;
	bh=FrEqm5nGtzS6gbQcKFrWAgrXIee2Cx0wsZGjMRIJ4kA=;
	h=To:Subject:From:Date:From;
	b=s4CAs7rQqF/LM2RK8MfANSrxIOSPLqhrjSj+c4qfxR7M0c8qGwUTzyTuBklXJlhap
	 OTJYff+C9uv41U8nJ7X4PlT82cdmIeNKdnYJc5Dd1vUO4oRkh+b45Vqhb4CmnZ6a48
	 fWsFLdVwcnMZqhYKMQJk+Z3Dt//nXDPIkIO+2v7VCZyNBwsW27lGsxKQ/+2cJWeyPs
	 Ri91fFSIKVMCZZScCLPQGnvR7t/78NcM/P6qN1miOfEY3yTwsqflCaJWM68iHLze4N
	 ztOrqLj3jA/+V0dXbc1kEjaeswctE6uKFmaEtwtrMqi9lDkWYXEJNDrN+/Rvck7UwX
	 DnIrfqKII2AHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAECC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276011369.5706.2642082356887432260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59115c26e36b152d094795619d26f884a05585829fdf75a662c8d8d8c4d0e02
Date: Mon, 29 Jun 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782760113
