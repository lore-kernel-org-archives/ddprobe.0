Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA6E175A6E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775071534; cv=none; b=ei7EnvnCRJb+RSs8GrCgE2nCj8XJ7EwSVClMSNqZBjviit+Il2q1H9obZQj3Ta0LiHgX2w4csl/wYcS+PdMmu9JLvW5Qm/FUeVsD+XpKZKZjPVioy3teCC7Y/Zhxz6rCqspKfWj8EUGvCNVpXsasJlMQDaICVpCMzAaluvOM74s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775071534; c=relaxed/simple;
	bh=EKtkMIdKWJMVY2mo1BD3RXQQvWiOXeDYYh+d+gFjqa8=;
	h=To:Subject:From:Message-Id:Date; b=F/R+HlygpsOueXeT6m1S1Ixxf3y9hZe4/JIbiL5gb19RbFCtnw3SfvI9UcZfstAjANxUcnsSZ74fKe6EyUkpbbCeVTCBxlLEMEWUT3QKRS7ZIraEHy4QNhFFW4Ap0LmP7KWaW3xcQRJjfkCvK+tXwNg7T0YG/tBQZXxUvZRiagU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5GEI+1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5GEI+1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF7C9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775071533;
	bh=EKtkMIdKWJMVY2mo1BD3RXQQvWiOXeDYYh+d+gFjqa8=;
	h=To:Subject:From:Date:From;
	b=o5GEI+1sLmnFOR5NTdIamiF1dTuhGiClm/uLB+lzCeq+eK0+UXC/sVsAWjL14E8fh
	 Hf6wddIYvBaoqaIpaqBLBPm4PNg6cS5Mhv/NdkMMTccQSPrJOFRzA6NfIdPreSb3At
	 yPF7KNw9bZPdxJ2TC04Jdc16URRRmvcrUq47H4Dv5OlCHibGotKjz2jk8sP5o4mgZU
	 ac9qVLQD+/qE9w926UrGsUiQMTXiFwQ8Cb3u4qe0NoHmeqgouGFQPV2UT07n00fF8F
	 m/s/bxFrwrKy5V57WtqAF9sdiaxTqoTbvmp8oyz2aIyL589wWnDA1rxLYGI0iXD9gj
	 l3WKDsmYx+Qcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB0107639C
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507153369.32730.15115329195078244539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f720885c14c512b74b3f0e68aee74640645a10d769446adab7f863ffe79dba
Date: Wed, 01 Apr 2026 19:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775071533
