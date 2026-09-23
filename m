Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567DB1A6817
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790124034; cv=none; b=MHALIcg9TSmHnnTEwOXpzHQWHr7aA0m3Hn3xGyCIS2TCF5k5cZ0jzK1Zedz1rqvjIEsyA2Le9BPAtzEi8uzNcOoElKcpfzdtIYfCfOxcVa80rg6DkLRqYF2/usiNq8OWtRAmty/YIMGrrB8bM/Gu36En7YHXcqojKbImsPpd8R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790124034; c=relaxed/simple;
	bh=hGOOQf9tm1iINWblKneMQFEz2H6ZsNn4HpzOL3IEQ2Q=;
	h=To:Subject:From:Message-Id:Date; b=F6MXBL69CxLPUY1JQi8i/DLagv5ZO9IC069fobnJcUjgGislT9QeHozn7yABYzUUzPLoj/OtbmZ4M9ctrQOWYgPdb4A2JsevRuum5d2KicYNlw+B+P79/SLt2rBYc7da4lVKazcSAiC8suUoI9GoBcUA2MiBXwseIUXErbLtsjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwTQGmWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwTQGmWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66F7C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790124033;
	bh=hGOOQf9tm1iINWblKneMQFEz2H6ZsNn4HpzOL3IEQ2Q=;
	h=To:Subject:From:Date:From;
	b=cwTQGmWQaVT4OpUORg/EoaveWozPX4cDm38O1FCkkc2NTFQlOw10/+3EcSW5G8v11
	 oHf3FjM5QpGcidf4MzKxAsawyNvr5aIQybMj4r6lNX4zk5I/ft/nKpZtFg3sVmaPCD
	 EHRD40wMhSl6ujed24keEo5jtEqt6s7ymRvmnDCYQ7XK3Qs+bEgPdQFPtZRIEI2U7e
	 9+TlCRBmxgEQox9ezH/0sTQ7XSAVNNoanQ662y3ytr/N2ORPou0VKpri9H45Kjkqdj
	 6ahx65U5diuuHjwDZieYfAiM02X0gE060XgOevDn2FlCbbsT31NlPmVJR8e9u44o8A
	 UEysyFDr/K9aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B306FC982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012403369.11688.1496632617756937229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e92044e41fad5a78764d7e855a6335ee74d23c91ea68efe4ccec209b734badf
Date: Wed, 23 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790124033
