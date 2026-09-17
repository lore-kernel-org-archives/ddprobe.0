Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5097534CFC7
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789614634; cv=none; b=gdd54KpvTYeVs3hxIhU4f9YRbyPEl173D37rq0MxH0CgBqmOlJnaKx8x8VSJtBNfpR+rLIC7WFKgaEAtUbz9nawMHGFGKdrLMjwiA9UoOJZOJI7atqo+ucfXYVF6HQaejwsqCtfOD6OudZfC5bFGwnDChid2KERDBrTeNoUt7wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789614634; c=relaxed/simple;
	bh=1aes+P4JY2y9YXi3wDb/4OMBYtgl0a3VakG3dlJbbxc=;
	h=To:Subject:From:Message-Id:Date; b=JOhgHcrGiTy/RaSMRN288BIxl5I8SZAUvgqHHgKTrrhyVrf7oEQly837KgIxhIWzhOZ3zKgn59sCVQYNR5wJRnSqAqRY+owpF6fV0wSK7kb2sMAUxCD7x2AQLnFo1rwfGVfUKiXxtKCFfKas9isp1kJNmxK1TpPMkn8lyPnG5/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vizm0e2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vizm0e2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B25C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789614633;
	bh=1aes+P4JY2y9YXi3wDb/4OMBYtgl0a3VakG3dlJbbxc=;
	h=To:Subject:From:Date:From;
	b=Vizm0e2jfJhXrm0YiRqcYW4dyWA1GJr+zYCDVhKpwGRr/z0dlpUCPyp+D2Q1x1O90
	 7Y+07UDclsAZwCjQLNwibflnySub4qmbEcXBXBkLMgmLA9b9mmPnQWDdOXSveT8mPP
	 jlGqILtE6Seq9oYrM9we/yMMlI7ZH3JUs2wh5BrPadCD3h7NT6SBulRtWTLGqXr4Xk
	 yzjuN+rCLJdIEWVmkDm68/YgmHCKZ/hzxDUI5nhexqJeWtiJHERUDe5g3B3cDBokLj
	 6Sa/J1bEma63TGF5jcJR1c9vcN6K1Ax6Ru+rrMd4iyk8NBrF2xxjN6Y36ucUNGcQit
	 ldIJMb5Pl9oTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B389AC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961463372.3956.9445117806207567717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7b5b6b84e17fb87bd6829a8ac9592e1ee5a9c5997a6c59031e9b656f0ffa0a
Date: Thu, 17 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789614633
