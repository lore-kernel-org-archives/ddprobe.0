Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8496A33A
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716800063; cv=none; b=O5QvzvcHdKiLhrgYGrzh889Wn2ShKczJS49dB//Svr8FoAmvRG6i08WjZQLOj2WJUgXN7tv2DAocU6Mgzvld/1hoFEEZ6eADHCnr+Gz9PBb84GdqP0eMJjJjFBERkNQ1OC+y5fbOAS5T3Fbiuh4ogbFsXg6pnfCWI8NvnPFRJgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716800063; c=relaxed/simple;
	bh=LwCFHj9q6F3huhk3nQXXS5HJipbeTwUieE1r47/MdwE=;
	h=To:Subject:From:Message-Id:Date; b=eNfg2EOxaxefizwc8xl4X2HAEvuI0jdlYGd7q2GCBYSjxyPxH11tQUj9V5FnqmI7lnu1aqn/VQdxkz6yU+elPL+rfZXTK8j9nzZ/GeoWeEmcCspA24t30Blsl/KhB1qRCE4tGoK/A7r1SBEZPlN/kmP+i39g6jWaCrWnsC10r4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOEm/BSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOEm/BSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CB9C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716800062;
	bh=LwCFHj9q6F3huhk3nQXXS5HJipbeTwUieE1r47/MdwE=;
	h=To:Subject:From:Date:From;
	b=jOEm/BSSUQ1NX+dtkVOcRfbcrTLHiTVtJCNSOw09NarlVgofyZiP2itPxaqFXobLv
	 HDih6jZx6NduHYcelkdzwy1+8kzORY03DTxNKRQPdzIggiaoCzp1BdgxfaSKAy/8KL
	 ELz+jIpF9ndCTm4nDRBSTkHFhaUUGrJsSR0z8ovIDpwRnqRAU6eNgD7DtlJyXWsPIw
	 MUOGNoc5sLbUrnvk0iLiqLvQGZVPD8/YJaNk+0B72gbm6yfQm0pHb8Vn+SzNlpnfW+
	 AHXMZ1pr5g1synqyCSODr9ENqdw3TaCwECATbUvaiqS67sB+1uA+S5pNvb9Rpd8NwN
	 yvFLAx7SKwMYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CF5C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680006280.26139.9197183919125583180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6335917456f9e5cb6a632565def146bc8529105d053949ff41cf846fc4d66703
Date: Mon, 27 May 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716800062
