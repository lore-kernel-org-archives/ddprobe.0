Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342FC17B4EC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746526194; cv=none; b=NmnaVTYy8BYpfXPwgKtg3uppaMCCFeUVY0BYFXeOK94Bm3GhmJQsPOdhYKQ/t53opzBuVNmlxCbipJTQ7mvrxjU/DV2VMgY3yAJEgf7K3ozGk6rU3eWmXiS3u9mMwwGu+Wx54Aqd0iecym8cSOWScplOtPdZox78VFHfxtbYM2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746526194; c=relaxed/simple;
	bh=czxLil7uCJ+GRt4a0mkEB3/YOLPdixS5JEZhT9Lf5F8=;
	h=To:Subject:From:Message-Id:Date; b=QAzgoA8qONc7G43IXWZ3GNvnPc/vUkzUzKZZDSzBHUSQNpoF+TJAzVMnpHbDDoRtqBGVO0EbGi21+qIWz/rp+/CVYGRue9D7NiPI7IQzkuwlx5gG3bDW5avIwFMsQ8JJpxQcwiZm/whUYgrbtaAAQwsl8K1BHX7vykfUMI236g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KF15g6ZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KF15g6ZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2472C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746526193;
	bh=czxLil7uCJ+GRt4a0mkEB3/YOLPdixS5JEZhT9Lf5F8=;
	h=To:Subject:From:Date:From;
	b=KF15g6ZFuXcj9oivt5+EIUM/oWJ60vDNU33KDhMuMybZe7/YqykPnrcuZL9Ql04+U
	 PXngywWYpOGP0/I7neRwPTXNkdHH3BTIwBwN9mPz/NcDN62lruA7uiV1MUqVxcVKRu
	 iXMq7d7FFeEbRmgIq05/vdbNui5PX3++CnKL9FqF/Z4CD9JdennmhV5m9jpl7GLM7x
	 y017KivBWa6qeNwbMXAVDcdZZtwpOc9DO3k2R8FcfTR3JNR3GuxkaYlzUm9/l0RPw7
	 GIwzIcFeSuBzsA8Se92e65D+1YlINoGi4AbLpsZK2f/ab58F4VHeJKsUl4LE9v95UJ
	 s0TqO1DYgEwKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90502C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652619358.29308.926687900605261950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88218f7e67e59a4300d3de00e1e98d0876c3433c7e608fb67266e6ad97f4cfdb
Date: Tue, 06 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746526193
