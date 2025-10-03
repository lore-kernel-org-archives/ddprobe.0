Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF5022A1C5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759534194; cv=none; b=XO4g3D3GVvzJqbGAKDNas2qFcOZZbxkXsO2YwfFVWkmM3yQomoUxt37MhPafvp+t97URMpy4fjgn04biz0p3YDXk9f/uVDcSJy1UagTrYRSuvu+MPY5Zm9i9W2uULm5yjW3ximv8DIvLDoPYrdzSsoAgQbOml+He1UMLvVmHkI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759534194; c=relaxed/simple;
	bh=GSPHxOcmfRADGcoan8ZxMT3pbfucxlqbTaRblNRsqAY=;
	h=To:Subject:From:Message-Id:Date; b=sofSGFCtzFyn2AzHRNLnB0G9kSVz638vo6dGfMzO4nh+1XT8MIqs0nkntcst/+M/6vKZcsBLPqXT4O2prLCjEHFCveBUg96uJrIr0C0JUUdyl0aL3mqPkJJ54gXQiUAeQ5grW1oGM7UVU1CmXsOpKFw6m0H0F7qTM1sy9Hn5s8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXu4ZHts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXu4ZHts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F06C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759534193;
	bh=GSPHxOcmfRADGcoan8ZxMT3pbfucxlqbTaRblNRsqAY=;
	h=To:Subject:From:Date:From;
	b=WXu4ZHts6NgNvbJCTiXy36I32i/B8q3SMhB2+PKXTjZrY0KGdGTooCZmBD+zM6UAF
	 6Evck9Qd93kvPcbAnSVUeIg4xByEsTdoBLAQLVyqkFgZjM/aQxtLkIkBl2hfbDQ9lm
	 MSL7FaIFYB309uFdqhJb/A7jg5Ix9YPNFBQnMU8g/xNAd8eRZKwJdJciInfpzqEYpB
	 9Eq9TSkVqmGfkJ+m++Jgejy1VYKWvvHHkdbZpE3JUVsAgYTunNWDVB8ejgq1J3cTsE
	 0If4eTxe03ethj0dLJ899zLlhrtKqXSpSnxbFcyTH/B/Y75aIZilFwtTqgfVbtznTQ
	 urwK0myKUA7sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB52CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953419357.19422.11768381202364501190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed6b7f7c43b874be83df317d0a7e080e2e421ffa3e7ad2e2557763218bcd867
Date: Fri, 03 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759534193
