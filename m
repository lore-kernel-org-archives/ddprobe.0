Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F207C187557
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720032323; cv=none; b=A7hJe2ON8MmZ0hqPqCDNttPQtSpdZJzqcAADdxZzmhjABl2bDq51KkjenqUx3Vp/2gBpKOfR79/3bD1rbfo0vP/3FcDOIBr4pmR7Us6SZ3/TrUC9Xz6PGsGJH/fIgzWIQxSBc6U6RhYt6RNaQ+jEl+XZ++lc6kA71NcgSkuU07M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720032323; c=relaxed/simple;
	bh=+R5EMRlWFdu/imoJJa1SkuGudXmL78Jg6ftBopfExi4=;
	h=To:Subject:From:Message-Id:Date; b=S7uZ+4rfqm71pC3TrPDiT5NZaXImVO/voVAWo0BMnMtesIBDND+gpzU8a7birWt90bquyWSxZRGSOJA7jfRJia/bk+KKjHdUApisrRfYdK8KDQy9JSO1FfhevEOtSyX0ekkh3vaUDCQ5zkfrT36pX4E1gQ+g9O5RxezlyxomYvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0Z5p23f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0Z5p23f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EFEC32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720032322;
	bh=+R5EMRlWFdu/imoJJa1SkuGudXmL78Jg6ftBopfExi4=;
	h=To:Subject:From:Date:From;
	b=m0Z5p23flzKby0RVWQVZpBn/W4LxfpXOu0NglYned6sOiQH/qVtc+JIGBaXwhfbOB
	 P0NEe4tYJoPIt14sZAMSsHQNagT8wsjq3SqS0TdGDS2Y3YbHwI1ud099BV4Z0qwF8l
	 pFXzEWR3Wh3/iK7qxJbJfIMGCwK/JFGAzPYHsogvHLwG0e6zAy5eLDOIFiEDJhcBqx
	 ru14RcsuvmouJU+OUBoZGcXIo2XAWWwfUs33A6OW1KSSuoEWjyJLBGEEv142GK5hRI
	 xnyOP0gsJ3Q1ynO8d+g91PQJ/XlvihAmXNxvsgRtq9uFPuwqZCW/0Y990d03S+0HIh
	 5mWL13okyy7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD83C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172003232276.1005.9575888813349667482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a686503a3948249d7b44f730aa444decbe379a5f5a966901fc841c59d0572613
Date: Wed, 03 Jul 2024 18:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720032322
