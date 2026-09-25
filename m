Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A0742254A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790314234; cv=none; b=Wzd+tYeob9qqImeYJRxzK9uJWlZVDdtKc4mhmB2pVhjSKxfk9q4q8XQNYVWwchmPLnyC1cJryERVfgrgf1aRKfCX26tFcUJkRDvx10seFG5u9ZR6vzUYtYlWgw6gJMKd4+LIzX4qTQUZ/aFEz+FFTI3zUfbK3klblkQDAXJBfPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790314234; c=relaxed/simple;
	bh=NGnZvSHUvA6XisjTkLkA7BE19Ib/oXzLTtiIYU53us4=;
	h=To:Subject:From:Message-Id:Date; b=CPVI5gIz1n0Df73Ag2ZI/w/TIA5YV2zJn1QegUNUoUYuC/ehKeFkpyHb2gByJpvJdr6iQNPTq3gfpCqDO15b3RgtaxtfU/epyztArHv2rkOFRR9I7l4QPKGx1aYOrnb51/jxtmPGDU5hzjSrXEuOHpQVNQc1b43UQbj5gH4x51g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSfxne2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSfxne2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03B3C2BCF7
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790314233;
	bh=NGnZvSHUvA6XisjTkLkA7BE19Ib/oXzLTtiIYU53us4=;
	h=To:Subject:From:Date:From;
	b=QSfxne2txXbyawiLPrXxlq31FWoMtNZNdGPjWdZcMnIzXOwJpn9+Q7U8DIPBSEoYu
	 EcUlU1xmoGL5ULa8u/kVJsktuwGezoSaAoKK1oy9wGEeTkBDPJcecuWSdSJxxW23lP
	 EszY77Id190k9ShTG/Vv2EqGEcdbWL8/d/t672QbezGIJBiL6bGMRB0r+t5Z4zIDFF
	 PpjUFTdGmS0RqvnEvOPnvi4AXYqvVIS5UJgsopYtn0AKpvvEusqYP8uWAlMkDA5Za7
	 EsM7nIKGEnyLZQ+jAn3t6C3lmkCNvQOmDtbWCs+Wek9ab2Bc9baAmV7UFPV25ZsVq6
	 izFp4EMZ4HuCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC76AC98306
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031423369.11117.2364446736128868733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846257d3f2420acbffcfc5f0fc1acf349f63e611c33ec90c82fbd3386f782ab9
Date: Fri, 25 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790314233
