Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E934BD36E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790607034; cv=none; b=nvWZqFnIyYUjHhOTmDSVBtOEGznFh0k/3vRlBgdiezi1HvqyxTU8kYej8JNVnxAUIRTRayvFSg4gNdWrkYjk9cbn/u6CqtyZ8Z3qF2WzjPfQZUipsLgioXM4Aw4lALxKWTf5n1VzDWwC3OkGelptmnOCGigYk6imNW24Rz5MTjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790607034; c=relaxed/simple;
	bh=br8iVFppcIjbxKoSsDJbSPiukAuobSHM4Eamcx2n4sU=;
	h=To:Subject:From:Message-Id:Date; b=bZMlB3cJWyR/VNCFJhziZF1pApv+jTGlTwpx+xSydOZPcP7j7AZA0vU5uzRlMVOVIDFNVOxckrxG6Mf6PQeU0/zGK2wmmTBaSYLbAXa6lw1IGWQmdtuPXK+CNyyQnFxohrBoJJiLDvNV+MMnpK2CO7wcUYLCDTHgZhvYqJRE2BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUElj4+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUElj4+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD01C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790607033;
	bh=br8iVFppcIjbxKoSsDJbSPiukAuobSHM4Eamcx2n4sU=;
	h=To:Subject:From:Date:From;
	b=dUElj4+Pggg1miQkCdv6TszsQnuU4J3A/lDIkAUwSll4eAdTvfCJWtwEhJAI4eGvK
	 ZCqGbbb8tvl/SGmQJPOUgPegUepGxw86HzWXU0P1IBwShvOnnmIB+F4gGKGmeQdNCI
	 4PhMCDF5vVz4GTrvAkvrWmV9VBAJoE6yCTCok3h1U/daERqitxHaVtY4wQ8qNMBHcH
	 Z/EhNiQkPQO1a2AGLf/gnqQtXVnLPhxC1cTAg7mxcNEMEgAiB7hUK9fSHS18dNrn0Y
	 ks1itzhog7sm8NSMXtvT/kvdfMPgENBgLv3fJDYmXrcCy48hjqqQxHDQ3OW00iZVEN
	 sGwajli8dqToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD5DCA5FA5
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060703369.24413.376491543061106639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9330872ff708d27c9a820fdc844768188b5b534e5f27c0d7891eecf278c790ba
Date: Mon, 28 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790607033
