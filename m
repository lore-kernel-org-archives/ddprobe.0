Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203DF2D0C6F
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755117594; cv=none; b=hwow4JxyaPKpGiko3n2ZzKo+iw/KyERPPTnOB8gslMEyuZLO0n4JuDBlEzXQsHL9geIm0Y4x6Kb/vnVQNMHxkMbrRmWqhq9m3niVIfHHQUCoOjlTXitj0sE2WIrsihi7wyNDzeRZB3mCVdJhnYbwjnDEkWQi1Fuyvfar+joAzUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755117594; c=relaxed/simple;
	bh=Jx9ZCrEpaz/HvTHvyuho/N8Hb6tDfu2bO55ioWxUxgA=;
	h=To:Subject:From:Message-Id:Date; b=f2fUYH1YWWeqGeo83cVGZVgHvEH0CBmegxD8sJ+UF48WiPrcE8Zljef4WScKwe4dvgEcTLlIt2naAfi/4aZ5UqMKMPdFebEl4xTs5LfWIMYbxsx/FCrp1QdZCuOx//R/m5JtbA2VbvzQblg8CQmkiZeyIt16zST9f6FsxlnG9z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLasyhRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLasyhRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A202DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755117593;
	bh=Jx9ZCrEpaz/HvTHvyuho/N8Hb6tDfu2bO55ioWxUxgA=;
	h=To:Subject:From:Date:From;
	b=kLasyhRQhDB2rE1VU+3TSSOLHFF82IOPWXFguqo5K0wW41OAJkQtxWxd9pJkS0yem
	 ecyD1u8BjCtALXTwBAvoJWYbJWo7Ay6GIEXaZb+UdRdp1EMJ9Ee+8tid8FisiVRpl/
	 As2RAmjAt7EbVuzh1IlsxZ/KRMoXQVQMheR+L1nmPcsL5scsR3wqHhnfueLMEdxbA0
	 IQ+pk3FS+m2SnpkzFuQMyqSEyTEm6B9VcIwchrEljDDvvaImUe/yTgDcHOQbto+HXU
	 ucFOaqf+GPOLQ8G7SpFvWhxsZrt6pOraYizEgnBIKcsSMJNmgBbB0YW1k2qA1ruZ5H
	 4vgaOu5yNXs4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F002CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511759357.10151.10015194978306766731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1594cdef09e8db2c6a6a623b665bf3649e303492b415e7c34af0bedfc726ede2
Date: Wed, 13 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755117593
