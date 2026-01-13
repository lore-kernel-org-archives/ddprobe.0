Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000C1325702
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768292634; cv=none; b=O6QfURkU6Ym/g3ujIV9mDQBBUnPoh5/piw8dBstcwtZrGHqL8rIQFUojwETOKZCwbVNL3xu/PDvqRvqn2vFmolSvh1DhaPvDYTePgKkUde9OsCak0+8VI15M5DQZjamYoTP5mzJ7pEiPAcYk6pYkWXWKauZKIg0eXA8vMbxWxKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768292634; c=relaxed/simple;
	bh=KuMBZmlMXdBKt131fqHwOvr/9M1WCT85ML2rEvQgXns=;
	h=To:Subject:From:Message-Id:Date; b=PQrnjr78Hwi6i1Qm0JQdCaOePN93GoOrO4L/kc4LBg+7GVJwH5HSP947P2sjYhwzL8KtR7Px7e7JmKTg31/H6xwmstkdIrh0kFXNTpKrHPtyFsQGynZXiSNocDzi5jumw5B4oj56RW9Bjx5jip19rQftCsJBheDlHlnsRQGltmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItVxu4o7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItVxu4o7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0616C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768292633;
	bh=KuMBZmlMXdBKt131fqHwOvr/9M1WCT85ML2rEvQgXns=;
	h=To:Subject:From:Date:From;
	b=ItVxu4o7uPhvW9Hb1DBTQgO5Yw/7ibrUpXxoZI/2CVbsh7YM1zRf7GRYwiKdy8FZ4
	 mLMbvjEcrXL4QKjcmv8VdtyVoIoPv45qh1Gg9NDIrC8q9Oclmu+HjKia4wqBCdDQ+l
	 iWVzUSom5OS6UurBFJcb23IgdKYmCMt6xdr+Vi2XqN4I1cX94OeJABtsW5L9duKENU
	 j7yLPOulf7GGXyd1gJFZcsPYcIpPxGkWb6x1zl5UMRUzP61aSa6n+i6BBSP7D8/pUE
	 dD+p9lZ2aI6z+7B6myjb801j6M+XjDjQdrFkHzmOQpGo+cjoqh/wF1EbbX+zdkNdn1
	 +mTxs+bvirOww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256DD29DE2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829263359.21988.14712457175417951431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84223d8915faec47e86cb71bad413d8a960969683977e6a50956d1f8f5df6ac0
Date: Tue, 13 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768292633
