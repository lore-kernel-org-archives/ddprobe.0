Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CE330171C
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764865974; cv=none; b=H83H6YvQq8CB4BRXd3gLQcjoog/p3h9GB+UKfJtOENyaC6KUXWoaGawtRga5rRyyX04ffWv9JPCbM0ycU0e5Q4HpxdbOND0kqd8N0Y/6kreXDmtkT71Edzj/BULITEOOlUhs/FSEjCAHNoZr2OfWZP3ytOpzB1Z0ZWHAFb2wFEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764865974; c=relaxed/simple;
	bh=+PKhpHZPtZDc5PgnGqcW2iVVXSDnWjuDtxAUzJx3Xnw=;
	h=To:Subject:From:Message-Id:Date; b=DZC5DWVPEdW+3D/9kLmEHo2qXg6NlGADrZIUv8RhfhlM9XlBY7JjYuv1IoDdXWw3NBPNA+aiJqbXzk8KVgiutGOBDJSruakSf/bWEkpxMrsX7lMr1DcxQuHCyxaiVHPl0H3Ky3ShLda4Pm2lzi8e1yIZugHvdt46/LORTJoZOoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orSB8u+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orSB8u+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AC37C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764865973;
	bh=+PKhpHZPtZDc5PgnGqcW2iVVXSDnWjuDtxAUzJx3Xnw=;
	h=To:Subject:From:Date:From;
	b=orSB8u+vMiAT6238Plu+sRr+qNpYVy0vnTNItjHjuorIlrs7DI3ZQuFvzavP3LfTU
	 YnvWbllN5DT6hsTJ/0/SICVj3PETkkK9+CdU4acMHihdBVswklAH3z4qSl0SQdoyKN
	 TPZADzwL11in+m5x36/wEVUvEsg7TjApkCeMFgpcnOTaqBPrSHVvlPHCj5JZ8m0FTV
	 b4avjaNGlZ/XiLrhAeKl0nE0nNrkqKSbHQldPAFAn/ld1uW1sAwpeZC7AaTGCpRVJq
	 35vxTB+oQTQHTYgNXNQ15eXXo4w1U4/xoSNIHBjpdwOkm22s7sbCmQuMGkIxOsTwgs
	 MZbYKLzQHKC7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942ABD216B2
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486597359.28761.8432273631089733618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d6a715dfd12288dbe4a2a256d3ccdcad1e2f150ecb5a9bbbd8ef875e880a4a
Date: Thu, 04 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764865973
