Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29609EBE
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726013754; cv=none; b=sEWG03tWCS8PCHfPAy9GO6pYDv4iCGM5DBoqoai1dweTtE6wqtsUJ1PrtHmZRMYabW42H0Lc1o5DkBWCidlj7drzmrIajW+t8eAU8gvK6W4hN6am6qzCivwztuQKblFBT6Z7ZOchYs6zc8Uxzd89Lq7uxFl4I39FVJI54fb+Mdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726013754; c=relaxed/simple;
	bh=CqfPHqx8TF5Zj1rIsB51HKbb0sRoOevn2hv8+bvcM6I=;
	h=To:Subject:From:Message-Id:Date; b=TZqo5x3c8yn2ESU1/gu/RT4U+/EBSNDPXhy6Q/SZh229YDF2JCjN8LlkOdiIlzH1LbaqjQPHQ6Gn/TmDBUbdOcmci3GrvGVWDHkpI6hEp7MSL+8Zals/mdrRR3x8NX6HhWrdWQhHS7IKz2msJ3Ot4cNXvsfUj2aU+GFYFaAv3Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBvPypOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBvPypOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B649EC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726013753;
	bh=CqfPHqx8TF5Zj1rIsB51HKbb0sRoOevn2hv8+bvcM6I=;
	h=To:Subject:From:Date:From;
	b=JBvPypOyoGq4OPKy4ZB4hJN9AuByyOSH9M8oBqH12lpyfWNEY+GZEjiD/oxpRYe6S
	 PbhcaOoiQD2FQtinzlJIDLlehzPwayAwrGYTT86LIqhdP3LuA5Hn5nEYmisS21COjA
	 w2tOFKaIrmJqVzSGSEJGKWEVIPNZ9IRK21u5PxqL1H8iwg+Frs3NH/YicmFBzrcWU/
	 gFk2NvKeuGr2jcxALbSfanVm0OQtvvELTIDP6UBNmAURqsjj/TYZ9XVZ8rcmO5acSP
	 ptawVo9G51NtZEP6mFu6ck4QNmyQwyYXL1HGz0tBzXf5ixAQoUD5LdQnRx1xt6HgYy
	 pSCHPhBOKeDUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7A5EE01F1
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172601375362.6861.5706452300506236967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869e923013a5351c783abb91ee3a3ce6dd9ef5f00e179d65314415ce615aa3da
Date: Wed, 11 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726013753
