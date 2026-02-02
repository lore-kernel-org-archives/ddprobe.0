Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A4830C61B
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770015834; cv=none; b=fkw+An7pN8+I143w+X6a00gvez3dcuP5NWZBR98ZhEq/To7JwUs71tQ4gGsrfg0EAn1BBOBQ83x6RKh7wafY4J20BKW8qEAS8Ux/nlWQBwmAh9NYlMET240aFA2CtxKfXX9QWR3su7nKZfTC5nPlNuj6oGoFGcDUofxCTkXzrIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770015834; c=relaxed/simple;
	bh=Ic0Yu48mCq3JHYRlAL3R0u3gXbKdifKsK9JnM11vZOI=;
	h=To:Subject:From:Message-Id:Date; b=V2rj/ITbJ3YXbedrElLN7B1TJRlKkebBE+Pl/R/rrkmlz87rdOjHL9bIm0CkdY2Y1J9TtfQ846M7zdB0ehlVLwas2MsazApBP0oAvRmswlhmOc1aP4mzWd5RTSyCpcgb3LghaWzbtyAcFHeVk4QTnDUDMASzQDxkbbDx8giqFc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5A5JVmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5A5JVmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0453C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770015833;
	bh=Ic0Yu48mCq3JHYRlAL3R0u3gXbKdifKsK9JnM11vZOI=;
	h=To:Subject:From:Date:From;
	b=Q5A5JVmZYFz2e9nL4m99j070pFRyqW6pn7Vkl9ZqlcvxDkYfWy9ojX0wz/FTYGK6V
	 lM8rUu5haB7U+ZDBElLnK0HR+LR/aCgEIOA1ufjdVjco2DCP7waeHEojFIMqhDkm7b
	 IYr9QDouA4ssBVIbZMNTYmfvFza6JHWDbjkLjvyeE0cHWDP60rwnIC6HK1hV6feysK
	 9655pVwx/xyLcU3Yi60gHoEEiZqinY36hUea2UAodLwMF96959wf00T8XPcZzLJOJX
	 dx5xqrzyew558VujuSZH1mQtEZ4VC/u1WSHCNbRxow+SAGI0WXI4YDO8RGtAn677YL
	 C1QxKBBkv20wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C268D73E86
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001583362.31268.17295476395654498321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca007918da3482a33652368e9434fd7e613ca97a9390fe83e1fc29bd93845acc
Date: Mon, 02 Feb 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770015833
