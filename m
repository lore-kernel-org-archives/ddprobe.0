Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305FA1519A6
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757994594; cv=none; b=B/jggCLKyfjGANftP9mlyGemR0t/qK0RhxiKEj9mpSEsGpR057Wj01Pl16oN8rcRSQEhVZrGJIWMVDJk0LFdlSe8GfocNzHZSVVwKaV/dkak92DIntwIPbXtfMW+R6ggNV+Ee0IUh7lhYuXoknNA1nXw8E11+UyluPK8C4mgvwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757994594; c=relaxed/simple;
	bh=3TJd9fQuefNAkv/h1NwN5wi0PCeKjNZmmwqBq+Cm9Js=;
	h=To:Subject:From:Message-Id:Date; b=c+gifIHcVQdxFbccBmkDMxgBagS1zlJ00usrCLPWrzKFN/ikaGjxpcOGQhey+vYpLIUqoA1Do7EdYCXoGXlmLzsTLT6y4SBjTZkM5/yK0sm+iZk/S76TLqLzJ1iaEFfZ79v+OBArpt+QcMdG6gWNKimgHvfDDYXXh04EVeWde18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gX6ZqNWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gX6ZqNWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A718CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757994593;
	bh=3TJd9fQuefNAkv/h1NwN5wi0PCeKjNZmmwqBq+Cm9Js=;
	h=To:Subject:From:Date:From;
	b=gX6ZqNWNU7bKLcJTX0b31kLJO2LGM1eq5l1wwuMoHxRVfYHOY+41Ag+LzCBHOsvVj
	 3Yospr4W0DZVDJJCNvB6qDPGx4EFBaxpHHCWO6R4S7kLB3sucd64moIzm8qFtKDCHx
	 Xxu1k4FL5NWsa501YxrY/AObcw2idcWkALdB71+UKCGD2yBVshBVTmqcWiI2iPjsQV
	 bfxp/OUOgmVUudDNNJhB15Tbn3J07vl06sl0f+FujNyZ6knsI59e3aV/ffQgjCDBSd
	 H7BsPI0QkeGYFB0GsDll1DHsQg/jDIVZd0pbDsPVa1+KYTgXiEVxxKcA5zH+Y1GEd2
	 Cyo3ATKpV/GMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95308CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799459357.20232.1860549737339223482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52918587c7bd241ba261c1210bc35055ef8222a402ae1ed8434d526e8fd830cb
Date: Tue, 16 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757994593
